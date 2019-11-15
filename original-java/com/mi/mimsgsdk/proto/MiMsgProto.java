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
import com.google.protobuf.LazyStringArrayList;
import com.google.protobuf.LazyStringList;
import com.google.protobuf.MessageLite;
import com.google.protobuf.Parser;
import com.google.protobuf.ProtocolStringList;
import com.google.protobuf.RepeatedFieldBuilder;
import com.google.protobuf.SingleFieldBuilder;
import com.google.protobuf.UnknownFieldSet;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class MiMsgProto {
    /* access modifiers changed from: private */
    public static FileDescriptor descriptor;
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_mimsgsdk_proto_Message_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(0));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_mimsgsdk_proto_Message_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_mimsgsdk_proto_Message_descriptor, new String[]{"FromGuid", "TargetId", "MsgSeq", "MsgId", "SentTime", "Body", "BodyType"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_mimsgsdk_proto_PullOldGroupMsgRequest_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(13));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_mimsgsdk_proto_PullOldGroupMsgRequest_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_mimsgsdk_proto_PullOldGroupMsgRequest_descriptor, new String[]{"Appid", "CurrGuid", "CurrMuid", "TargetGgid", "StartMsgSeq", "Limit"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_mimsgsdk_proto_PullOldGroupMsgResponse_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(14));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_mimsgsdk_proto_PullOldGroupMsgResponse_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_mimsgsdk_proto_PullOldGroupMsgResponse_descriptor, new String[]{"Appid", "RetCode", "CurrGuid", "CurrMuid", "TargetGgid", "TargetMgid", "Msgs"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_mimsgsdk_proto_PullOldUserMsgRequest_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(6));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_mimsgsdk_proto_PullOldUserMsgRequest_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_mimsgsdk_proto_PullOldUserMsgRequest_descriptor, new String[]{"Appid", "CurrGuid", "StartMsgSeq", "Limit"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_mimsgsdk_proto_PullOldUserMsgResponse_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(7));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_mimsgsdk_proto_PullOldUserMsgResponse_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_mimsgsdk_proto_PullOldUserMsgResponse_descriptor, new String[]{"Appid", "RetCode", "CurrGuid", "CurrMuid", "Msgs"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_mimsgsdk_proto_PushGroupMsg_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(10));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_mimsgsdk_proto_PushGroupMsg_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_mimsgsdk_proto_PushGroupMsg_descriptor, new String[]{"Appid", "FromMuid", "ToMuid", "ToMgid", "Msg"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_mimsgsdk_proto_PushRoomMsg_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(17));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_mimsgsdk_proto_PushRoomMsg_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_mimsgsdk_proto_PushRoomMsg_descriptor, new String[]{"Appid", "FromMuid", "ToMuid", "Mrid", "Msg"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_mimsgsdk_proto_PushUserMsg_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(3));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_mimsgsdk_proto_PushUserMsg_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_mimsgsdk_proto_PushUserMsg_descriptor, new String[]{"Appid", "FromMuid", "ToMuid", "Msg"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_mimsgsdk_proto_SendGroupMsgRequest_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(8));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_mimsgsdk_proto_SendGroupMsgRequest_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_mimsgsdk_proto_SendGroupMsgRequest_descriptor, new String[]{"Appid", "ToGgid", "FromGuid", "FromMuid", "MsgId", "Body", "BodyType"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_mimsgsdk_proto_SendGroupMsgResponse_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(9));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_mimsgsdk_proto_SendGroupMsgResponse_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_mimsgsdk_proto_SendGroupMsgResponse_descriptor, new String[]{"Appid", "RetCode", "FromGuid", "FromMuid", "TargetGgid", "TargetMgid", "MsgId", "MsgSeq", "SentTime"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_mimsgsdk_proto_SendRoomMsgRequest_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(15));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_mimsgsdk_proto_SendRoomMsgRequest_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_mimsgsdk_proto_SendRoomMsgRequest_descriptor, new String[]{"Appid", "ToGrid", "FromGuid", "FromMuid", "MsgId", "Body", "BodyType"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_mimsgsdk_proto_SendRoomMsgResponse_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(16));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_mimsgsdk_proto_SendRoomMsgResponse_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_mimsgsdk_proto_SendRoomMsgResponse_descriptor, new String[]{"Appid", "RetCode", "FromGuid", "FromMuid", "TargetGrid", "TargetMrid", "MsgId", "MsgSeq", "SentTime"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_mimsgsdk_proto_SendUserMsgRequest_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(1));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_mimsgsdk_proto_SendUserMsgRequest_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_mimsgsdk_proto_SendUserMsgRequest_descriptor, new String[]{"Appid", "ToGuid", "FromGuid", "FromMuid", "MsgId", "Body", "BodyType"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_mimsgsdk_proto_SendUserMsgResponse_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(2));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_mimsgsdk_proto_SendUserMsgResponse_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_mimsgsdk_proto_SendUserMsgResponse_descriptor, new String[]{"Appid", "RetCode", "FromGuid", "FromMuid", "MsgId", "MsgSeq", "SentTime"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_mimsgsdk_proto_SyncGroupMsgRequest_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(11));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_mimsgsdk_proto_SyncGroupMsgRequest_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_mimsgsdk_proto_SyncGroupMsgRequest_descriptor, new String[]{"Appid", "CurrGuid", "CurrMuid", "TargetGgid", "MaxRecvSeq", "Limit"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_mimsgsdk_proto_SyncGroupMsgResponse_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(12));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_mimsgsdk_proto_SyncGroupMsgResponse_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_mimsgsdk_proto_SyncGroupMsgResponse_descriptor, new String[]{"Appid", "RetCode", "CurrGuid", "CurrMuid", "TargetGgid", "TargetMgid", "MaxMsgSeq", "Msgs"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_mimsgsdk_proto_SyncUserMsgRequest_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(4));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_mimsgsdk_proto_SyncUserMsgRequest_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_mimsgsdk_proto_SyncUserMsgRequest_descriptor, new String[]{"Appid", "CurrGuid", "MaxRecvSeq", "Limit"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_mimsgsdk_proto_SyncUserMsgResponse_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(5));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_mimsgsdk_proto_SyncUserMsgResponse_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_mimsgsdk_proto_SyncUserMsgResponse_descriptor, new String[]{"Appid", "RetCode", "CurrGuid", "CurrMuid", "MaxMsgSeq", "Msgs"});

    public static final class Message extends GeneratedMessage implements MessageOrBuilder {
        public static final int BODYTYPE_FIELD_NUMBER = 7;
        public static final int BODY_FIELD_NUMBER = 6;
        public static final int FROMGUID_FIELD_NUMBER = 1;
        public static final int MSGID_FIELD_NUMBER = 4;
        public static final int MSGSEQ_FIELD_NUMBER = 3;
        public static Parser<Message> PARSER = new AbstractParser<Message>() {
            public Message parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new Message(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int SENTTIME_FIELD_NUMBER = 5;
        public static final int TARGETID_FIELD_NUMBER = 2;
        private static final Message defaultInstance = new Message(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public int bodyType_;
        /* access modifiers changed from: private */
        public ByteString body_;
        /* access modifiers changed from: private */
        public Object fromGuid_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public long msgId_;
        /* access modifiers changed from: private */
        public long msgSeq_;
        /* access modifiers changed from: private */
        public int sentTime_;
        /* access modifiers changed from: private */
        public Object targetId_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements MessageOrBuilder {
            private int bitField0_;
            private int bodyType_;
            private ByteString body_;
            private Object fromGuid_;
            private long msgId_;
            private long msgSeq_;
            private int sentTime_;
            private Object targetId_;

            public static final Descriptor getDescriptor() {
                return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_Message_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_Message_fieldAccessorTable.ensureFieldAccessorsInitialized(Message.class, Builder.class);
            }

            private Builder() {
                this.fromGuid_ = "";
                this.targetId_ = "";
                this.body_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.fromGuid_ = "";
                this.targetId_ = "";
                this.body_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (Message.alwaysUseFieldBuilders) {
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.fromGuid_ = "";
                this.bitField0_ &= -2;
                this.targetId_ = "";
                this.bitField0_ &= -3;
                this.msgSeq_ = 0;
                this.bitField0_ &= -5;
                this.msgId_ = 0;
                this.bitField0_ &= -9;
                this.sentTime_ = 0;
                this.bitField0_ &= -17;
                this.body_ = ByteString.EMPTY;
                this.bitField0_ &= -33;
                this.bodyType_ = 0;
                this.bitField0_ &= -65;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_Message_descriptor;
            }

            public Message getDefaultInstanceForType() {
                return Message.getDefaultInstance();
            }

            public Message build() {
                Message buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public Message buildPartial() {
                int i = 1;
                Message message = new Message((com.google.protobuf.GeneratedMessage.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                message.fromGuid_ = this.fromGuid_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                message.targetId_ = this.targetId_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                message.msgSeq_ = this.msgSeq_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                message.msgId_ = this.msgId_;
                if ((i2 & 16) == 16) {
                    i |= 16;
                }
                message.sentTime_ = this.sentTime_;
                if ((i2 & 32) == 32) {
                    i |= 32;
                }
                message.body_ = this.body_;
                if ((i2 & 64) == 64) {
                    i |= 64;
                }
                message.bodyType_ = this.bodyType_;
                message.bitField0_ = i;
                onBuilt();
                return message;
            }

            public Builder mergeFrom(com.google.protobuf.Message message) {
                if (message instanceof Message) {
                    return mergeFrom((Message) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(Message message) {
                if (message != Message.getDefaultInstance()) {
                    if (message.hasFromGuid()) {
                        this.bitField0_ |= 1;
                        this.fromGuid_ = message.fromGuid_;
                        onChanged();
                    }
                    if (message.hasTargetId()) {
                        this.bitField0_ |= 2;
                        this.targetId_ = message.targetId_;
                        onChanged();
                    }
                    if (message.hasMsgSeq()) {
                        setMsgSeq(message.getMsgSeq());
                    }
                    if (message.hasMsgId()) {
                        setMsgId(message.getMsgId());
                    }
                    if (message.hasSentTime()) {
                        setSentTime(message.getSentTime());
                    }
                    if (message.hasBody()) {
                        setBody(message.getBody());
                    }
                    if (message.hasBodyType()) {
                        setBodyType(message.getBodyType());
                    }
                    mergeUnknownFields(message.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasFromGuid() && hasTargetId() && hasMsgSeq() && hasSentTime() && hasBody()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                Message message;
                Message message2;
                try {
                    Message message3 = (Message) Message.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (message3 != null) {
                        mergeFrom(message3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    message2 = (Message) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    message = message2;
                    th = th2;
                }
                if (message != null) {
                    mergeFrom(message);
                }
                throw th;
            }

            public boolean hasFromGuid() {
                return (this.bitField0_ & 1) == 1;
            }

            public String getFromGuid() {
                Object obj = this.fromGuid_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.fromGuid_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getFromGuidBytes() {
                Object obj = this.fromGuid_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.fromGuid_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setFromGuid(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.fromGuid_ = str;
                onChanged();
                return this;
            }

            public Builder clearFromGuid() {
                this.bitField0_ &= -2;
                this.fromGuid_ = Message.getDefaultInstance().getFromGuid();
                onChanged();
                return this;
            }

            public Builder setFromGuidBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.fromGuid_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasTargetId() {
                return (this.bitField0_ & 2) == 2;
            }

            public String getTargetId() {
                Object obj = this.targetId_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.targetId_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getTargetIdBytes() {
                Object obj = this.targetId_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.targetId_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setTargetId(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.targetId_ = str;
                onChanged();
                return this;
            }

            public Builder clearTargetId() {
                this.bitField0_ &= -3;
                this.targetId_ = Message.getDefaultInstance().getTargetId();
                onChanged();
                return this;
            }

            public Builder setTargetIdBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.targetId_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasMsgSeq() {
                return (this.bitField0_ & 4) == 4;
            }

            public long getMsgSeq() {
                return this.msgSeq_;
            }

            public Builder setMsgSeq(long j) {
                this.bitField0_ |= 4;
                this.msgSeq_ = j;
                onChanged();
                return this;
            }

            public Builder clearMsgSeq() {
                this.bitField0_ &= -5;
                this.msgSeq_ = 0;
                onChanged();
                return this;
            }

            public boolean hasMsgId() {
                return (this.bitField0_ & 8) == 8;
            }

            public long getMsgId() {
                return this.msgId_;
            }

            public Builder setMsgId(long j) {
                this.bitField0_ |= 8;
                this.msgId_ = j;
                onChanged();
                return this;
            }

            public Builder clearMsgId() {
                this.bitField0_ &= -9;
                this.msgId_ = 0;
                onChanged();
                return this;
            }

            public boolean hasSentTime() {
                return (this.bitField0_ & 16) == 16;
            }

            public int getSentTime() {
                return this.sentTime_;
            }

            public Builder setSentTime(int i) {
                this.bitField0_ |= 16;
                this.sentTime_ = i;
                onChanged();
                return this;
            }

            public Builder clearSentTime() {
                this.bitField0_ &= -17;
                this.sentTime_ = 0;
                onChanged();
                return this;
            }

            public boolean hasBody() {
                return (this.bitField0_ & 32) == 32;
            }

            public ByteString getBody() {
                return this.body_;
            }

            public Builder setBody(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 32;
                this.body_ = byteString;
                onChanged();
                return this;
            }

            public Builder clearBody() {
                this.bitField0_ &= -33;
                this.body_ = Message.getDefaultInstance().getBody();
                onChanged();
                return this;
            }

            public boolean hasBodyType() {
                return (this.bitField0_ & 64) == 64;
            }

            public int getBodyType() {
                return this.bodyType_;
            }

            public Builder setBodyType(int i) {
                this.bitField0_ |= 64;
                this.bodyType_ = i;
                onChanged();
                return this;
            }

            public Builder clearBodyType() {
                this.bitField0_ &= -65;
                this.bodyType_ = 0;
                onChanged();
                return this;
            }
        }

        private Message(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private Message(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static Message getDefaultInstance() {
            return defaultInstance;
        }

        public Message getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private Message(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.fromGuid_ = readBytes;
                            break;
                        case 18:
                            ByteString readBytes2 = codedInputStream.readBytes();
                            this.bitField0_ |= 2;
                            this.targetId_ = readBytes2;
                            break;
                        case 24:
                            this.bitField0_ |= 4;
                            this.msgSeq_ = codedInputStream.readUInt64();
                            break;
                        case 32:
                            this.bitField0_ |= 8;
                            this.msgId_ = codedInputStream.readUInt64();
                            break;
                        case 40:
                            this.bitField0_ |= 16;
                            this.sentTime_ = codedInputStream.readUInt32();
                            break;
                        case 50:
                            this.bitField0_ |= 32;
                            this.body_ = codedInputStream.readBytes();
                            break;
                        case 56:
                            this.bitField0_ |= 64;
                            this.bodyType_ = codedInputStream.readUInt32();
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
            return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_Message_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_Message_fieldAccessorTable.ensureFieldAccessorsInitialized(Message.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<Message> getParserForType() {
            return PARSER;
        }

        public boolean hasFromGuid() {
            return (this.bitField0_ & 1) == 1;
        }

        public String getFromGuid() {
            Object obj = this.fromGuid_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.fromGuid_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getFromGuidBytes() {
            Object obj = this.fromGuid_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.fromGuid_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasTargetId() {
            return (this.bitField0_ & 2) == 2;
        }

        public String getTargetId() {
            Object obj = this.targetId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.targetId_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getTargetIdBytes() {
            Object obj = this.targetId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.targetId_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasMsgSeq() {
            return (this.bitField0_ & 4) == 4;
        }

        public long getMsgSeq() {
            return this.msgSeq_;
        }

        public boolean hasMsgId() {
            return (this.bitField0_ & 8) == 8;
        }

        public long getMsgId() {
            return this.msgId_;
        }

        public boolean hasSentTime() {
            return (this.bitField0_ & 16) == 16;
        }

        public int getSentTime() {
            return this.sentTime_;
        }

        public boolean hasBody() {
            return (this.bitField0_ & 32) == 32;
        }

        public ByteString getBody() {
            return this.body_;
        }

        public boolean hasBodyType() {
            return (this.bitField0_ & 64) == 64;
        }

        public int getBodyType() {
            return this.bodyType_;
        }

        private void initFields() {
            this.fromGuid_ = "";
            this.targetId_ = "";
            this.msgSeq_ = 0;
            this.msgId_ = 0;
            this.sentTime_ = 0;
            this.body_ = ByteString.EMPTY;
            this.bodyType_ = 0;
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasFromGuid()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasTargetId()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasMsgSeq()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasSentTime()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasBody()) {
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
                codedOutputStream.writeBytes(1, getFromGuidBytes());
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeBytes(2, getTargetIdBytes());
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeUInt64(3, this.msgSeq_);
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeUInt64(4, this.msgId_);
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeUInt32(5, this.sentTime_);
            }
            if ((this.bitField0_ & 32) == 32) {
                codedOutputStream.writeBytes(6, this.body_);
            }
            if ((this.bitField0_ & 64) == 64) {
                codedOutputStream.writeUInt32(7, this.bodyType_);
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
                i2 = 0 + CodedOutputStream.computeBytesSize(1, getFromGuidBytes());
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeBytesSize(2, getTargetIdBytes());
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeUInt64Size(3, this.msgSeq_);
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeUInt64Size(4, this.msgId_);
            }
            if ((this.bitField0_ & 16) == 16) {
                i2 += CodedOutputStream.computeUInt32Size(5, this.sentTime_);
            }
            if ((this.bitField0_ & 32) == 32) {
                i2 += CodedOutputStream.computeBytesSize(6, this.body_);
            }
            if ((this.bitField0_ & 64) == 64) {
                i2 += CodedOutputStream.computeUInt32Size(7, this.bodyType_);
            }
            int serializedSize = i2 + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static Message parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (Message) PARSER.parseFrom(byteString);
        }

        public static Message parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (Message) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static Message parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (Message) PARSER.parseFrom(bArr);
        }

        public static Message parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (Message) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static Message parseFrom(InputStream inputStream) throws IOException {
            return (Message) PARSER.parseFrom(inputStream);
        }

        public static Message parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Message) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static Message parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Message) PARSER.parseDelimitedFrom(inputStream);
        }

        public static Message parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Message) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static Message parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (Message) PARSER.parseFrom(codedInputStream);
        }

        public static Message parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Message) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(Message message) {
            return newBuilder().mergeFrom(message);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface MessageOrBuilder extends com.google.protobuf.MessageOrBuilder {
        ByteString getBody();

        int getBodyType();

        String getFromGuid();

        ByteString getFromGuidBytes();

        long getMsgId();

        long getMsgSeq();

        int getSentTime();

        String getTargetId();

        ByteString getTargetIdBytes();

        boolean hasBody();

        boolean hasBodyType();

        boolean hasFromGuid();

        boolean hasMsgId();

        boolean hasMsgSeq();

        boolean hasSentTime();

        boolean hasTargetId();
    }

    public static final class PullOldGroupMsgRequest extends GeneratedMessage implements PullOldGroupMsgRequestOrBuilder {
        public static final int APPID_FIELD_NUMBER = 1;
        public static final int CURRGUID_FIELD_NUMBER = 2;
        public static final int CURRMUID_FIELD_NUMBER = 3;
        public static final int LIMIT_FIELD_NUMBER = 6;
        public static Parser<PullOldGroupMsgRequest> PARSER = new AbstractParser<PullOldGroupMsgRequest>() {
            public PullOldGroupMsgRequest parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new PullOldGroupMsgRequest(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int STARTMSGSEQ_FIELD_NUMBER = 5;
        public static final int TARGETGGID_FIELD_NUMBER = 4;
        private static final PullOldGroupMsgRequest defaultInstance = new PullOldGroupMsgRequest(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int appid_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public Object currGuid_;
        /* access modifiers changed from: private */
        public long currMuid_;
        /* access modifiers changed from: private */
        public int limit_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public long startMsgSeq_;
        /* access modifiers changed from: private */
        public Object targetGgid_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements PullOldGroupMsgRequestOrBuilder {
            private int appid_;
            private int bitField0_;
            private Object currGuid_;
            private long currMuid_;
            private int limit_;
            private long startMsgSeq_;
            private Object targetGgid_;

            public static final Descriptor getDescriptor() {
                return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_PullOldGroupMsgRequest_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_PullOldGroupMsgRequest_fieldAccessorTable.ensureFieldAccessorsInitialized(PullOldGroupMsgRequest.class, Builder.class);
            }

            private Builder() {
                this.currGuid_ = "";
                this.targetGgid_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.currGuid_ = "";
                this.targetGgid_ = "";
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (PullOldGroupMsgRequest.alwaysUseFieldBuilders) {
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.appid_ = 0;
                this.bitField0_ &= -2;
                this.currGuid_ = "";
                this.bitField0_ &= -3;
                this.currMuid_ = 0;
                this.bitField0_ &= -5;
                this.targetGgid_ = "";
                this.bitField0_ &= -9;
                this.startMsgSeq_ = 0;
                this.bitField0_ &= -17;
                this.limit_ = 0;
                this.bitField0_ &= -33;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_PullOldGroupMsgRequest_descriptor;
            }

            public PullOldGroupMsgRequest getDefaultInstanceForType() {
                return PullOldGroupMsgRequest.getDefaultInstance();
            }

            public PullOldGroupMsgRequest build() {
                PullOldGroupMsgRequest buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public PullOldGroupMsgRequest buildPartial() {
                int i = 1;
                PullOldGroupMsgRequest pullOldGroupMsgRequest = new PullOldGroupMsgRequest((com.google.protobuf.GeneratedMessage.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                pullOldGroupMsgRequest.appid_ = this.appid_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                pullOldGroupMsgRequest.currGuid_ = this.currGuid_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                pullOldGroupMsgRequest.currMuid_ = this.currMuid_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                pullOldGroupMsgRequest.targetGgid_ = this.targetGgid_;
                if ((i2 & 16) == 16) {
                    i |= 16;
                }
                pullOldGroupMsgRequest.startMsgSeq_ = this.startMsgSeq_;
                if ((i2 & 32) == 32) {
                    i |= 32;
                }
                pullOldGroupMsgRequest.limit_ = this.limit_;
                pullOldGroupMsgRequest.bitField0_ = i;
                onBuilt();
                return pullOldGroupMsgRequest;
            }

            public Builder mergeFrom(com.google.protobuf.Message message) {
                if (message instanceof PullOldGroupMsgRequest) {
                    return mergeFrom((PullOldGroupMsgRequest) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(PullOldGroupMsgRequest pullOldGroupMsgRequest) {
                if (pullOldGroupMsgRequest != PullOldGroupMsgRequest.getDefaultInstance()) {
                    if (pullOldGroupMsgRequest.hasAppid()) {
                        setAppid(pullOldGroupMsgRequest.getAppid());
                    }
                    if (pullOldGroupMsgRequest.hasCurrGuid()) {
                        this.bitField0_ |= 2;
                        this.currGuid_ = pullOldGroupMsgRequest.currGuid_;
                        onChanged();
                    }
                    if (pullOldGroupMsgRequest.hasCurrMuid()) {
                        setCurrMuid(pullOldGroupMsgRequest.getCurrMuid());
                    }
                    if (pullOldGroupMsgRequest.hasTargetGgid()) {
                        this.bitField0_ |= 8;
                        this.targetGgid_ = pullOldGroupMsgRequest.targetGgid_;
                        onChanged();
                    }
                    if (pullOldGroupMsgRequest.hasStartMsgSeq()) {
                        setStartMsgSeq(pullOldGroupMsgRequest.getStartMsgSeq());
                    }
                    if (pullOldGroupMsgRequest.hasLimit()) {
                        setLimit(pullOldGroupMsgRequest.getLimit());
                    }
                    mergeUnknownFields(pullOldGroupMsgRequest.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasAppid() && hasCurrGuid() && hasTargetGgid() && hasStartMsgSeq()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                PullOldGroupMsgRequest pullOldGroupMsgRequest;
                PullOldGroupMsgRequest pullOldGroupMsgRequest2;
                try {
                    PullOldGroupMsgRequest pullOldGroupMsgRequest3 = (PullOldGroupMsgRequest) PullOldGroupMsgRequest.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (pullOldGroupMsgRequest3 != null) {
                        mergeFrom(pullOldGroupMsgRequest3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    pullOldGroupMsgRequest2 = (PullOldGroupMsgRequest) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    pullOldGroupMsgRequest = pullOldGroupMsgRequest2;
                    th = th2;
                }
                if (pullOldGroupMsgRequest != null) {
                    mergeFrom(pullOldGroupMsgRequest);
                }
                throw th;
            }

            public boolean hasAppid() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getAppid() {
                return this.appid_;
            }

            public Builder setAppid(int i) {
                this.bitField0_ |= 1;
                this.appid_ = i;
                onChanged();
                return this;
            }

            public Builder clearAppid() {
                this.bitField0_ &= -2;
                this.appid_ = 0;
                onChanged();
                return this;
            }

            public boolean hasCurrGuid() {
                return (this.bitField0_ & 2) == 2;
            }

            public String getCurrGuid() {
                Object obj = this.currGuid_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.currGuid_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getCurrGuidBytes() {
                Object obj = this.currGuid_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.currGuid_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setCurrGuid(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.currGuid_ = str;
                onChanged();
                return this;
            }

            public Builder clearCurrGuid() {
                this.bitField0_ &= -3;
                this.currGuid_ = PullOldGroupMsgRequest.getDefaultInstance().getCurrGuid();
                onChanged();
                return this;
            }

            public Builder setCurrGuidBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.currGuid_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasCurrMuid() {
                return (this.bitField0_ & 4) == 4;
            }

            public long getCurrMuid() {
                return this.currMuid_;
            }

            public Builder setCurrMuid(long j) {
                this.bitField0_ |= 4;
                this.currMuid_ = j;
                onChanged();
                return this;
            }

            public Builder clearCurrMuid() {
                this.bitField0_ &= -5;
                this.currMuid_ = 0;
                onChanged();
                return this;
            }

            public boolean hasTargetGgid() {
                return (this.bitField0_ & 8) == 8;
            }

            public String getTargetGgid() {
                Object obj = this.targetGgid_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.targetGgid_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getTargetGgidBytes() {
                Object obj = this.targetGgid_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.targetGgid_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setTargetGgid(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.targetGgid_ = str;
                onChanged();
                return this;
            }

            public Builder clearTargetGgid() {
                this.bitField0_ &= -9;
                this.targetGgid_ = PullOldGroupMsgRequest.getDefaultInstance().getTargetGgid();
                onChanged();
                return this;
            }

            public Builder setTargetGgidBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.targetGgid_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasStartMsgSeq() {
                return (this.bitField0_ & 16) == 16;
            }

            public long getStartMsgSeq() {
                return this.startMsgSeq_;
            }

            public Builder setStartMsgSeq(long j) {
                this.bitField0_ |= 16;
                this.startMsgSeq_ = j;
                onChanged();
                return this;
            }

            public Builder clearStartMsgSeq() {
                this.bitField0_ &= -17;
                this.startMsgSeq_ = 0;
                onChanged();
                return this;
            }

            public boolean hasLimit() {
                return (this.bitField0_ & 32) == 32;
            }

            public int getLimit() {
                return this.limit_;
            }

            public Builder setLimit(int i) {
                this.bitField0_ |= 32;
                this.limit_ = i;
                onChanged();
                return this;
            }

            public Builder clearLimit() {
                this.bitField0_ &= -33;
                this.limit_ = 0;
                onChanged();
                return this;
            }
        }

        private PullOldGroupMsgRequest(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private PullOldGroupMsgRequest(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static PullOldGroupMsgRequest getDefaultInstance() {
            return defaultInstance;
        }

        public PullOldGroupMsgRequest getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private PullOldGroupMsgRequest(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.appid_ = codedInputStream.readUInt32();
                            break;
                        case 18:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 2;
                            this.currGuid_ = readBytes;
                            break;
                        case 24:
                            this.bitField0_ |= 4;
                            this.currMuid_ = codedInputStream.readUInt64();
                            break;
                        case 34:
                            ByteString readBytes2 = codedInputStream.readBytes();
                            this.bitField0_ |= 8;
                            this.targetGgid_ = readBytes2;
                            break;
                        case 40:
                            this.bitField0_ |= 16;
                            this.startMsgSeq_ = codedInputStream.readUInt64();
                            break;
                        case 48:
                            this.bitField0_ |= 32;
                            this.limit_ = codedInputStream.readUInt32();
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
            return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_PullOldGroupMsgRequest_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_PullOldGroupMsgRequest_fieldAccessorTable.ensureFieldAccessorsInitialized(PullOldGroupMsgRequest.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<PullOldGroupMsgRequest> getParserForType() {
            return PARSER;
        }

        public boolean hasAppid() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getAppid() {
            return this.appid_;
        }

        public boolean hasCurrGuid() {
            return (this.bitField0_ & 2) == 2;
        }

        public String getCurrGuid() {
            Object obj = this.currGuid_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.currGuid_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getCurrGuidBytes() {
            Object obj = this.currGuid_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.currGuid_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasCurrMuid() {
            return (this.bitField0_ & 4) == 4;
        }

        public long getCurrMuid() {
            return this.currMuid_;
        }

        public boolean hasTargetGgid() {
            return (this.bitField0_ & 8) == 8;
        }

        public String getTargetGgid() {
            Object obj = this.targetGgid_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.targetGgid_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getTargetGgidBytes() {
            Object obj = this.targetGgid_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.targetGgid_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasStartMsgSeq() {
            return (this.bitField0_ & 16) == 16;
        }

        public long getStartMsgSeq() {
            return this.startMsgSeq_;
        }

        public boolean hasLimit() {
            return (this.bitField0_ & 32) == 32;
        }

        public int getLimit() {
            return this.limit_;
        }

        private void initFields() {
            this.appid_ = 0;
            this.currGuid_ = "";
            this.currMuid_ = 0;
            this.targetGgid_ = "";
            this.startMsgSeq_ = 0;
            this.limit_ = 0;
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasAppid()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasCurrGuid()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasTargetGgid()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasStartMsgSeq()) {
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
                codedOutputStream.writeUInt32(1, this.appid_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeBytes(2, getCurrGuidBytes());
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeUInt64(3, this.currMuid_);
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeBytes(4, getTargetGgidBytes());
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeUInt64(5, this.startMsgSeq_);
            }
            if ((this.bitField0_ & 32) == 32) {
                codedOutputStream.writeUInt32(6, this.limit_);
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
                i2 = 0 + CodedOutputStream.computeUInt32Size(1, this.appid_);
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeBytesSize(2, getCurrGuidBytes());
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeUInt64Size(3, this.currMuid_);
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeBytesSize(4, getTargetGgidBytes());
            }
            if ((this.bitField0_ & 16) == 16) {
                i2 += CodedOutputStream.computeUInt64Size(5, this.startMsgSeq_);
            }
            if ((this.bitField0_ & 32) == 32) {
                i2 += CodedOutputStream.computeUInt32Size(6, this.limit_);
            }
            int serializedSize = i2 + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static PullOldGroupMsgRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (PullOldGroupMsgRequest) PARSER.parseFrom(byteString);
        }

        public static PullOldGroupMsgRequest parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (PullOldGroupMsgRequest) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static PullOldGroupMsgRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (PullOldGroupMsgRequest) PARSER.parseFrom(bArr);
        }

        public static PullOldGroupMsgRequest parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (PullOldGroupMsgRequest) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static PullOldGroupMsgRequest parseFrom(InputStream inputStream) throws IOException {
            return (PullOldGroupMsgRequest) PARSER.parseFrom(inputStream);
        }

        public static PullOldGroupMsgRequest parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (PullOldGroupMsgRequest) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static PullOldGroupMsgRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (PullOldGroupMsgRequest) PARSER.parseDelimitedFrom(inputStream);
        }

        public static PullOldGroupMsgRequest parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (PullOldGroupMsgRequest) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static PullOldGroupMsgRequest parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (PullOldGroupMsgRequest) PARSER.parseFrom(codedInputStream);
        }

        public static PullOldGroupMsgRequest parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (PullOldGroupMsgRequest) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(PullOldGroupMsgRequest pullOldGroupMsgRequest) {
            return newBuilder().mergeFrom(pullOldGroupMsgRequest);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface PullOldGroupMsgRequestOrBuilder extends com.google.protobuf.MessageOrBuilder {
        int getAppid();

        String getCurrGuid();

        ByteString getCurrGuidBytes();

        long getCurrMuid();

        int getLimit();

        long getStartMsgSeq();

        String getTargetGgid();

        ByteString getTargetGgidBytes();

        boolean hasAppid();

        boolean hasCurrGuid();

        boolean hasCurrMuid();

        boolean hasLimit();

        boolean hasStartMsgSeq();

        boolean hasTargetGgid();
    }

    public static final class PullOldGroupMsgResponse extends GeneratedMessage implements PullOldGroupMsgResponseOrBuilder {
        public static final int APPID_FIELD_NUMBER = 1;
        public static final int CURRGUID_FIELD_NUMBER = 3;
        public static final int CURRMUID_FIELD_NUMBER = 4;
        public static final int MSGS_FIELD_NUMBER = 7;
        public static Parser<PullOldGroupMsgResponse> PARSER = new AbstractParser<PullOldGroupMsgResponse>() {
            public PullOldGroupMsgResponse parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new PullOldGroupMsgResponse(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int RETCODE_FIELD_NUMBER = 2;
        public static final int TARGETGGID_FIELD_NUMBER = 5;
        public static final int TARGETMGID_FIELD_NUMBER = 6;
        private static final PullOldGroupMsgResponse defaultInstance = new PullOldGroupMsgResponse(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int appid_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public Object currGuid_;
        /* access modifiers changed from: private */
        public long currMuid_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public List<Message> msgs_;
        /* access modifiers changed from: private */
        public int retCode_;
        /* access modifiers changed from: private */
        public Object targetGgid_;
        /* access modifiers changed from: private */
        public long targetMgid_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements PullOldGroupMsgResponseOrBuilder {
            private int appid_;
            private int bitField0_;
            private Object currGuid_;
            private long currMuid_;
            private RepeatedFieldBuilder<Message, Builder, MessageOrBuilder> msgsBuilder_;
            private List<Message> msgs_;
            private int retCode_;
            private Object targetGgid_;
            private long targetMgid_;

            public static final Descriptor getDescriptor() {
                return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_PullOldGroupMsgResponse_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_PullOldGroupMsgResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(PullOldGroupMsgResponse.class, Builder.class);
            }

            private Builder() {
                this.currGuid_ = "";
                this.targetGgid_ = "";
                this.msgs_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.currGuid_ = "";
                this.targetGgid_ = "";
                this.msgs_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (PullOldGroupMsgResponse.alwaysUseFieldBuilders) {
                    getMsgsFieldBuilder();
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.appid_ = 0;
                this.bitField0_ &= -2;
                this.retCode_ = 0;
                this.bitField0_ &= -3;
                this.currGuid_ = "";
                this.bitField0_ &= -5;
                this.currMuid_ = 0;
                this.bitField0_ &= -9;
                this.targetGgid_ = "";
                this.bitField0_ &= -17;
                this.targetMgid_ = 0;
                this.bitField0_ &= -33;
                if (this.msgsBuilder_ == null) {
                    this.msgs_ = Collections.emptyList();
                    this.bitField0_ &= -65;
                } else {
                    this.msgsBuilder_.clear();
                }
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_PullOldGroupMsgResponse_descriptor;
            }

            public PullOldGroupMsgResponse getDefaultInstanceForType() {
                return PullOldGroupMsgResponse.getDefaultInstance();
            }

            public PullOldGroupMsgResponse build() {
                PullOldGroupMsgResponse buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public PullOldGroupMsgResponse buildPartial() {
                int i = 1;
                PullOldGroupMsgResponse pullOldGroupMsgResponse = new PullOldGroupMsgResponse((com.google.protobuf.GeneratedMessage.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                pullOldGroupMsgResponse.appid_ = this.appid_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                pullOldGroupMsgResponse.retCode_ = this.retCode_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                pullOldGroupMsgResponse.currGuid_ = this.currGuid_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                pullOldGroupMsgResponse.currMuid_ = this.currMuid_;
                if ((i2 & 16) == 16) {
                    i |= 16;
                }
                pullOldGroupMsgResponse.targetGgid_ = this.targetGgid_;
                if ((i2 & 32) == 32) {
                    i |= 32;
                }
                pullOldGroupMsgResponse.targetMgid_ = this.targetMgid_;
                if (this.msgsBuilder_ == null) {
                    if ((this.bitField0_ & 64) == 64) {
                        this.msgs_ = Collections.unmodifiableList(this.msgs_);
                        this.bitField0_ &= -65;
                    }
                    pullOldGroupMsgResponse.msgs_ = this.msgs_;
                } else {
                    pullOldGroupMsgResponse.msgs_ = this.msgsBuilder_.build();
                }
                pullOldGroupMsgResponse.bitField0_ = i;
                onBuilt();
                return pullOldGroupMsgResponse;
            }

            public Builder mergeFrom(com.google.protobuf.Message message) {
                if (message instanceof PullOldGroupMsgResponse) {
                    return mergeFrom((PullOldGroupMsgResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(PullOldGroupMsgResponse pullOldGroupMsgResponse) {
                RepeatedFieldBuilder<Message, Builder, MessageOrBuilder> repeatedFieldBuilder = null;
                if (pullOldGroupMsgResponse != PullOldGroupMsgResponse.getDefaultInstance()) {
                    if (pullOldGroupMsgResponse.hasAppid()) {
                        setAppid(pullOldGroupMsgResponse.getAppid());
                    }
                    if (pullOldGroupMsgResponse.hasRetCode()) {
                        setRetCode(pullOldGroupMsgResponse.getRetCode());
                    }
                    if (pullOldGroupMsgResponse.hasCurrGuid()) {
                        this.bitField0_ |= 4;
                        this.currGuid_ = pullOldGroupMsgResponse.currGuid_;
                        onChanged();
                    }
                    if (pullOldGroupMsgResponse.hasCurrMuid()) {
                        setCurrMuid(pullOldGroupMsgResponse.getCurrMuid());
                    }
                    if (pullOldGroupMsgResponse.hasTargetGgid()) {
                        this.bitField0_ |= 16;
                        this.targetGgid_ = pullOldGroupMsgResponse.targetGgid_;
                        onChanged();
                    }
                    if (pullOldGroupMsgResponse.hasTargetMgid()) {
                        setTargetMgid(pullOldGroupMsgResponse.getTargetMgid());
                    }
                    if (this.msgsBuilder_ == null) {
                        if (!pullOldGroupMsgResponse.msgs_.isEmpty()) {
                            if (this.msgs_.isEmpty()) {
                                this.msgs_ = pullOldGroupMsgResponse.msgs_;
                                this.bitField0_ &= -65;
                            } else {
                                ensureMsgsIsMutable();
                                this.msgs_.addAll(pullOldGroupMsgResponse.msgs_);
                            }
                            onChanged();
                        }
                    } else if (!pullOldGroupMsgResponse.msgs_.isEmpty()) {
                        if (this.msgsBuilder_.isEmpty()) {
                            this.msgsBuilder_.dispose();
                            this.msgsBuilder_ = null;
                            this.msgs_ = pullOldGroupMsgResponse.msgs_;
                            this.bitField0_ &= -65;
                            if (PullOldGroupMsgResponse.alwaysUseFieldBuilders) {
                                repeatedFieldBuilder = getMsgsFieldBuilder();
                            }
                            this.msgsBuilder_ = repeatedFieldBuilder;
                        } else {
                            this.msgsBuilder_.addAllMessages(pullOldGroupMsgResponse.msgs_);
                        }
                    }
                    mergeUnknownFields(pullOldGroupMsgResponse.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                if (!hasAppid() || !hasRetCode() || !hasCurrGuid() || !hasTargetGgid()) {
                    return false;
                }
                for (int i = 0; i < getMsgsCount(); i++) {
                    if (!getMsgs(i).isInitialized()) {
                        return false;
                    }
                }
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                PullOldGroupMsgResponse pullOldGroupMsgResponse;
                PullOldGroupMsgResponse pullOldGroupMsgResponse2;
                try {
                    PullOldGroupMsgResponse pullOldGroupMsgResponse3 = (PullOldGroupMsgResponse) PullOldGroupMsgResponse.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (pullOldGroupMsgResponse3 != null) {
                        mergeFrom(pullOldGroupMsgResponse3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    pullOldGroupMsgResponse2 = (PullOldGroupMsgResponse) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    pullOldGroupMsgResponse = pullOldGroupMsgResponse2;
                    th = th2;
                }
                if (pullOldGroupMsgResponse != null) {
                    mergeFrom(pullOldGroupMsgResponse);
                }
                throw th;
            }

            public boolean hasAppid() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getAppid() {
                return this.appid_;
            }

            public Builder setAppid(int i) {
                this.bitField0_ |= 1;
                this.appid_ = i;
                onChanged();
                return this;
            }

            public Builder clearAppid() {
                this.bitField0_ &= -2;
                this.appid_ = 0;
                onChanged();
                return this;
            }

            public boolean hasRetCode() {
                return (this.bitField0_ & 2) == 2;
            }

            public int getRetCode() {
                return this.retCode_;
            }

            public Builder setRetCode(int i) {
                this.bitField0_ |= 2;
                this.retCode_ = i;
                onChanged();
                return this;
            }

            public Builder clearRetCode() {
                this.bitField0_ &= -3;
                this.retCode_ = 0;
                onChanged();
                return this;
            }

            public boolean hasCurrGuid() {
                return (this.bitField0_ & 4) == 4;
            }

            public String getCurrGuid() {
                Object obj = this.currGuid_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.currGuid_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getCurrGuidBytes() {
                Object obj = this.currGuid_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.currGuid_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setCurrGuid(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.currGuid_ = str;
                onChanged();
                return this;
            }

            public Builder clearCurrGuid() {
                this.bitField0_ &= -5;
                this.currGuid_ = PullOldGroupMsgResponse.getDefaultInstance().getCurrGuid();
                onChanged();
                return this;
            }

            public Builder setCurrGuidBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.currGuid_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasCurrMuid() {
                return (this.bitField0_ & 8) == 8;
            }

            public long getCurrMuid() {
                return this.currMuid_;
            }

            public Builder setCurrMuid(long j) {
                this.bitField0_ |= 8;
                this.currMuid_ = j;
                onChanged();
                return this;
            }

            public Builder clearCurrMuid() {
                this.bitField0_ &= -9;
                this.currMuid_ = 0;
                onChanged();
                return this;
            }

            public boolean hasTargetGgid() {
                return (this.bitField0_ & 16) == 16;
            }

            public String getTargetGgid() {
                Object obj = this.targetGgid_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.targetGgid_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getTargetGgidBytes() {
                Object obj = this.targetGgid_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.targetGgid_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setTargetGgid(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 16;
                this.targetGgid_ = str;
                onChanged();
                return this;
            }

            public Builder clearTargetGgid() {
                this.bitField0_ &= -17;
                this.targetGgid_ = PullOldGroupMsgResponse.getDefaultInstance().getTargetGgid();
                onChanged();
                return this;
            }

            public Builder setTargetGgidBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 16;
                this.targetGgid_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasTargetMgid() {
                return (this.bitField0_ & 32) == 32;
            }

            public long getTargetMgid() {
                return this.targetMgid_;
            }

            public Builder setTargetMgid(long j) {
                this.bitField0_ |= 32;
                this.targetMgid_ = j;
                onChanged();
                return this;
            }

            public Builder clearTargetMgid() {
                this.bitField0_ &= -33;
                this.targetMgid_ = 0;
                onChanged();
                return this;
            }

            private void ensureMsgsIsMutable() {
                if ((this.bitField0_ & 64) != 64) {
                    this.msgs_ = new ArrayList(this.msgs_);
                    this.bitField0_ |= 64;
                }
            }

            public List<Message> getMsgsList() {
                if (this.msgsBuilder_ == null) {
                    return Collections.unmodifiableList(this.msgs_);
                }
                return this.msgsBuilder_.getMessageList();
            }

            public int getMsgsCount() {
                if (this.msgsBuilder_ == null) {
                    return this.msgs_.size();
                }
                return this.msgsBuilder_.getCount();
            }

            public Message getMsgs(int i) {
                if (this.msgsBuilder_ == null) {
                    return (Message) this.msgs_.get(i);
                }
                return (Message) this.msgsBuilder_.getMessage(i);
            }

            public Builder setMsgs(int i, Message message) {
                if (this.msgsBuilder_ != null) {
                    this.msgsBuilder_.setMessage(i, message);
                } else if (message == null) {
                    throw new NullPointerException();
                } else {
                    ensureMsgsIsMutable();
                    this.msgs_.set(i, message);
                    onChanged();
                }
                return this;
            }

            public Builder setMsgs(int i, Builder builder) {
                if (this.msgsBuilder_ == null) {
                    ensureMsgsIsMutable();
                    this.msgs_.set(i, builder.build());
                    onChanged();
                } else {
                    this.msgsBuilder_.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addMsgs(Message message) {
                if (this.msgsBuilder_ != null) {
                    this.msgsBuilder_.addMessage(message);
                } else if (message == null) {
                    throw new NullPointerException();
                } else {
                    ensureMsgsIsMutable();
                    this.msgs_.add(message);
                    onChanged();
                }
                return this;
            }

            public Builder addMsgs(int i, Message message) {
                if (this.msgsBuilder_ != null) {
                    this.msgsBuilder_.addMessage(i, message);
                } else if (message == null) {
                    throw new NullPointerException();
                } else {
                    ensureMsgsIsMutable();
                    this.msgs_.add(i, message);
                    onChanged();
                }
                return this;
            }

            public Builder addMsgs(Builder builder) {
                if (this.msgsBuilder_ == null) {
                    ensureMsgsIsMutable();
                    this.msgs_.add(builder.build());
                    onChanged();
                } else {
                    this.msgsBuilder_.addMessage(builder.build());
                }
                return this;
            }

            public Builder addMsgs(int i, Builder builder) {
                if (this.msgsBuilder_ == null) {
                    ensureMsgsIsMutable();
                    this.msgs_.add(i, builder.build());
                    onChanged();
                } else {
                    this.msgsBuilder_.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllMsgs(Iterable<? extends Message> iterable) {
                if (this.msgsBuilder_ == null) {
                    ensureMsgsIsMutable();
                    com.google.protobuf.AbstractMessageLite.Builder.addAll(iterable, this.msgs_);
                    onChanged();
                } else {
                    this.msgsBuilder_.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearMsgs() {
                if (this.msgsBuilder_ == null) {
                    this.msgs_ = Collections.emptyList();
                    this.bitField0_ &= -65;
                    onChanged();
                } else {
                    this.msgsBuilder_.clear();
                }
                return this;
            }

            public Builder removeMsgs(int i) {
                if (this.msgsBuilder_ == null) {
                    ensureMsgsIsMutable();
                    this.msgs_.remove(i);
                    onChanged();
                } else {
                    this.msgsBuilder_.remove(i);
                }
                return this;
            }

            public Builder getMsgsBuilder(int i) {
                return (Builder) getMsgsFieldBuilder().getBuilder(i);
            }

            public MessageOrBuilder getMsgsOrBuilder(int i) {
                if (this.msgsBuilder_ == null) {
                    return (MessageOrBuilder) this.msgs_.get(i);
                }
                return (MessageOrBuilder) this.msgsBuilder_.getMessageOrBuilder(i);
            }

            public List<? extends MessageOrBuilder> getMsgsOrBuilderList() {
                if (this.msgsBuilder_ != null) {
                    return this.msgsBuilder_.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.msgs_);
            }

            public Builder addMsgsBuilder() {
                return (Builder) getMsgsFieldBuilder().addBuilder(Message.getDefaultInstance());
            }

            public Builder addMsgsBuilder(int i) {
                return (Builder) getMsgsFieldBuilder().addBuilder(i, Message.getDefaultInstance());
            }

            public List<Builder> getMsgsBuilderList() {
                return getMsgsFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<Message, Builder, MessageOrBuilder> getMsgsFieldBuilder() {
                if (this.msgsBuilder_ == null) {
                    this.msgsBuilder_ = new RepeatedFieldBuilder<>(this.msgs_, (this.bitField0_ & 64) == 64, getParentForChildren(), isClean());
                    this.msgs_ = null;
                }
                return this.msgsBuilder_;
            }
        }

        private PullOldGroupMsgResponse(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private PullOldGroupMsgResponse(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static PullOldGroupMsgResponse getDefaultInstance() {
            return defaultInstance;
        }

        public PullOldGroupMsgResponse getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private PullOldGroupMsgResponse(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.appid_ = codedInputStream.readUInt32();
                            break;
                        case 16:
                            this.bitField0_ |= 2;
                            this.retCode_ = codedInputStream.readUInt32();
                            break;
                        case 26:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 4;
                            this.currGuid_ = readBytes;
                            break;
                        case 32:
                            this.bitField0_ |= 8;
                            this.currMuid_ = codedInputStream.readUInt64();
                            break;
                        case 42:
                            ByteString readBytes2 = codedInputStream.readBytes();
                            this.bitField0_ |= 16;
                            this.targetGgid_ = readBytes2;
                            break;
                        case 48:
                            this.bitField0_ |= 32;
                            this.targetMgid_ = codedInputStream.readUInt64();
                            break;
                        case 58:
                            if (!(z2 & true)) {
                                this.msgs_ = new ArrayList();
                                z2 |= true;
                            }
                            this.msgs_.add(codedInputStream.readMessage(Message.PARSER, extensionRegistryLite));
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
                        this.msgs_ = Collections.unmodifiableList(this.msgs_);
                    }
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            if (z2 & true) {
                this.msgs_ = Collections.unmodifiableList(this.msgs_);
            }
            this.unknownFields = newBuilder.build();
            makeExtensionsImmutable();
        }

        public static final Descriptor getDescriptor() {
            return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_PullOldGroupMsgResponse_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_PullOldGroupMsgResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(PullOldGroupMsgResponse.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<PullOldGroupMsgResponse> getParserForType() {
            return PARSER;
        }

        public boolean hasAppid() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getAppid() {
            return this.appid_;
        }

        public boolean hasRetCode() {
            return (this.bitField0_ & 2) == 2;
        }

        public int getRetCode() {
            return this.retCode_;
        }

        public boolean hasCurrGuid() {
            return (this.bitField0_ & 4) == 4;
        }

        public String getCurrGuid() {
            Object obj = this.currGuid_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.currGuid_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getCurrGuidBytes() {
            Object obj = this.currGuid_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.currGuid_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasCurrMuid() {
            return (this.bitField0_ & 8) == 8;
        }

        public long getCurrMuid() {
            return this.currMuid_;
        }

        public boolean hasTargetGgid() {
            return (this.bitField0_ & 16) == 16;
        }

        public String getTargetGgid() {
            Object obj = this.targetGgid_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.targetGgid_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getTargetGgidBytes() {
            Object obj = this.targetGgid_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.targetGgid_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasTargetMgid() {
            return (this.bitField0_ & 32) == 32;
        }

        public long getTargetMgid() {
            return this.targetMgid_;
        }

        public List<Message> getMsgsList() {
            return this.msgs_;
        }

        public List<? extends MessageOrBuilder> getMsgsOrBuilderList() {
            return this.msgs_;
        }

        public int getMsgsCount() {
            return this.msgs_.size();
        }

        public Message getMsgs(int i) {
            return (Message) this.msgs_.get(i);
        }

        public MessageOrBuilder getMsgsOrBuilder(int i) {
            return (MessageOrBuilder) this.msgs_.get(i);
        }

        private void initFields() {
            this.appid_ = 0;
            this.retCode_ = 0;
            this.currGuid_ = "";
            this.currMuid_ = 0;
            this.targetGgid_ = "";
            this.targetMgid_ = 0;
            this.msgs_ = Collections.emptyList();
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasAppid()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasRetCode()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasCurrGuid()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasTargetGgid()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else {
                for (int i = 0; i < getMsgsCount(); i++) {
                    if (!getMsgs(i).isInitialized()) {
                        this.memoizedIsInitialized = 0;
                        return false;
                    }
                }
                this.memoizedIsInitialized = 1;
                return true;
            }
        }

        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeUInt32(1, this.appid_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeUInt32(2, this.retCode_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBytes(3, getCurrGuidBytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeUInt64(4, this.currMuid_);
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeBytes(5, getTargetGgidBytes());
            }
            if ((this.bitField0_ & 32) == 32) {
                codedOutputStream.writeUInt64(6, this.targetMgid_);
            }
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.msgs_.size()) {
                    codedOutputStream.writeMessage(7, (MessageLite) this.msgs_.get(i2));
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
                i = CodedOutputStream.computeUInt32Size(1, this.appid_) + 0;
            } else {
                i = 0;
            }
            if ((this.bitField0_ & 2) == 2) {
                i += CodedOutputStream.computeUInt32Size(2, this.retCode_);
            }
            if ((this.bitField0_ & 4) == 4) {
                i += CodedOutputStream.computeBytesSize(3, getCurrGuidBytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                i += CodedOutputStream.computeUInt64Size(4, this.currMuid_);
            }
            if ((this.bitField0_ & 16) == 16) {
                i += CodedOutputStream.computeBytesSize(5, getTargetGgidBytes());
            }
            if ((this.bitField0_ & 32) == 32) {
                i += CodedOutputStream.computeUInt64Size(6, this.targetMgid_);
            }
            while (true) {
                int i4 = i;
                if (i2 < this.msgs_.size()) {
                    i = CodedOutputStream.computeMessageSize(7, (MessageLite) this.msgs_.get(i2)) + i4;
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

        public static PullOldGroupMsgResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (PullOldGroupMsgResponse) PARSER.parseFrom(byteString);
        }

        public static PullOldGroupMsgResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (PullOldGroupMsgResponse) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static PullOldGroupMsgResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (PullOldGroupMsgResponse) PARSER.parseFrom(bArr);
        }

        public static PullOldGroupMsgResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (PullOldGroupMsgResponse) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static PullOldGroupMsgResponse parseFrom(InputStream inputStream) throws IOException {
            return (PullOldGroupMsgResponse) PARSER.parseFrom(inputStream);
        }

        public static PullOldGroupMsgResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (PullOldGroupMsgResponse) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static PullOldGroupMsgResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (PullOldGroupMsgResponse) PARSER.parseDelimitedFrom(inputStream);
        }

        public static PullOldGroupMsgResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (PullOldGroupMsgResponse) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static PullOldGroupMsgResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (PullOldGroupMsgResponse) PARSER.parseFrom(codedInputStream);
        }

        public static PullOldGroupMsgResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (PullOldGroupMsgResponse) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(PullOldGroupMsgResponse pullOldGroupMsgResponse) {
            return newBuilder().mergeFrom(pullOldGroupMsgResponse);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface PullOldGroupMsgResponseOrBuilder extends com.google.protobuf.MessageOrBuilder {
        int getAppid();

        String getCurrGuid();

        ByteString getCurrGuidBytes();

        long getCurrMuid();

        Message getMsgs(int i);

        int getMsgsCount();

        List<Message> getMsgsList();

        MessageOrBuilder getMsgsOrBuilder(int i);

        List<? extends MessageOrBuilder> getMsgsOrBuilderList();

        int getRetCode();

        String getTargetGgid();

        ByteString getTargetGgidBytes();

        long getTargetMgid();

        boolean hasAppid();

        boolean hasCurrGuid();

        boolean hasCurrMuid();

        boolean hasRetCode();

        boolean hasTargetGgid();

        boolean hasTargetMgid();
    }

    public static final class PullOldUserMsgRequest extends GeneratedMessage implements PullOldUserMsgRequestOrBuilder {
        public static final int APPID_FIELD_NUMBER = 1;
        public static final int CURRGUID_FIELD_NUMBER = 2;
        public static final int LIMIT_FIELD_NUMBER = 4;
        public static Parser<PullOldUserMsgRequest> PARSER = new AbstractParser<PullOldUserMsgRequest>() {
            public PullOldUserMsgRequest parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new PullOldUserMsgRequest(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int STARTMSGSEQ_FIELD_NUMBER = 3;
        private static final PullOldUserMsgRequest defaultInstance = new PullOldUserMsgRequest(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int appid_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public Object currGuid_;
        /* access modifiers changed from: private */
        public int limit_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public long startMsgSeq_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements PullOldUserMsgRequestOrBuilder {
            private int appid_;
            private int bitField0_;
            private Object currGuid_;
            private int limit_;
            private long startMsgSeq_;

            public static final Descriptor getDescriptor() {
                return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_PullOldUserMsgRequest_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_PullOldUserMsgRequest_fieldAccessorTable.ensureFieldAccessorsInitialized(PullOldUserMsgRequest.class, Builder.class);
            }

            private Builder() {
                this.currGuid_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.currGuid_ = "";
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (PullOldUserMsgRequest.alwaysUseFieldBuilders) {
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.appid_ = 0;
                this.bitField0_ &= -2;
                this.currGuid_ = "";
                this.bitField0_ &= -3;
                this.startMsgSeq_ = 0;
                this.bitField0_ &= -5;
                this.limit_ = 0;
                this.bitField0_ &= -9;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_PullOldUserMsgRequest_descriptor;
            }

            public PullOldUserMsgRequest getDefaultInstanceForType() {
                return PullOldUserMsgRequest.getDefaultInstance();
            }

            public PullOldUserMsgRequest build() {
                PullOldUserMsgRequest buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public PullOldUserMsgRequest buildPartial() {
                int i = 1;
                PullOldUserMsgRequest pullOldUserMsgRequest = new PullOldUserMsgRequest((com.google.protobuf.GeneratedMessage.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                pullOldUserMsgRequest.appid_ = this.appid_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                pullOldUserMsgRequest.currGuid_ = this.currGuid_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                pullOldUserMsgRequest.startMsgSeq_ = this.startMsgSeq_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                pullOldUserMsgRequest.limit_ = this.limit_;
                pullOldUserMsgRequest.bitField0_ = i;
                onBuilt();
                return pullOldUserMsgRequest;
            }

            public Builder mergeFrom(com.google.protobuf.Message message) {
                if (message instanceof PullOldUserMsgRequest) {
                    return mergeFrom((PullOldUserMsgRequest) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(PullOldUserMsgRequest pullOldUserMsgRequest) {
                if (pullOldUserMsgRequest != PullOldUserMsgRequest.getDefaultInstance()) {
                    if (pullOldUserMsgRequest.hasAppid()) {
                        setAppid(pullOldUserMsgRequest.getAppid());
                    }
                    if (pullOldUserMsgRequest.hasCurrGuid()) {
                        this.bitField0_ |= 2;
                        this.currGuid_ = pullOldUserMsgRequest.currGuid_;
                        onChanged();
                    }
                    if (pullOldUserMsgRequest.hasStartMsgSeq()) {
                        setStartMsgSeq(pullOldUserMsgRequest.getStartMsgSeq());
                    }
                    if (pullOldUserMsgRequest.hasLimit()) {
                        setLimit(pullOldUserMsgRequest.getLimit());
                    }
                    mergeUnknownFields(pullOldUserMsgRequest.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasAppid() && hasCurrGuid() && hasStartMsgSeq()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                PullOldUserMsgRequest pullOldUserMsgRequest;
                PullOldUserMsgRequest pullOldUserMsgRequest2;
                try {
                    PullOldUserMsgRequest pullOldUserMsgRequest3 = (PullOldUserMsgRequest) PullOldUserMsgRequest.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (pullOldUserMsgRequest3 != null) {
                        mergeFrom(pullOldUserMsgRequest3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    pullOldUserMsgRequest2 = (PullOldUserMsgRequest) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    pullOldUserMsgRequest = pullOldUserMsgRequest2;
                    th = th2;
                }
                if (pullOldUserMsgRequest != null) {
                    mergeFrom(pullOldUserMsgRequest);
                }
                throw th;
            }

            public boolean hasAppid() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getAppid() {
                return this.appid_;
            }

            public Builder setAppid(int i) {
                this.bitField0_ |= 1;
                this.appid_ = i;
                onChanged();
                return this;
            }

            public Builder clearAppid() {
                this.bitField0_ &= -2;
                this.appid_ = 0;
                onChanged();
                return this;
            }

            public boolean hasCurrGuid() {
                return (this.bitField0_ & 2) == 2;
            }

            public String getCurrGuid() {
                Object obj = this.currGuid_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.currGuid_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getCurrGuidBytes() {
                Object obj = this.currGuid_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.currGuid_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setCurrGuid(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.currGuid_ = str;
                onChanged();
                return this;
            }

            public Builder clearCurrGuid() {
                this.bitField0_ &= -3;
                this.currGuid_ = PullOldUserMsgRequest.getDefaultInstance().getCurrGuid();
                onChanged();
                return this;
            }

            public Builder setCurrGuidBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.currGuid_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasStartMsgSeq() {
                return (this.bitField0_ & 4) == 4;
            }

            public long getStartMsgSeq() {
                return this.startMsgSeq_;
            }

            public Builder setStartMsgSeq(long j) {
                this.bitField0_ |= 4;
                this.startMsgSeq_ = j;
                onChanged();
                return this;
            }

            public Builder clearStartMsgSeq() {
                this.bitField0_ &= -5;
                this.startMsgSeq_ = 0;
                onChanged();
                return this;
            }

            public boolean hasLimit() {
                return (this.bitField0_ & 8) == 8;
            }

            public int getLimit() {
                return this.limit_;
            }

            public Builder setLimit(int i) {
                this.bitField0_ |= 8;
                this.limit_ = i;
                onChanged();
                return this;
            }

            public Builder clearLimit() {
                this.bitField0_ &= -9;
                this.limit_ = 0;
                onChanged();
                return this;
            }
        }

        private PullOldUserMsgRequest(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private PullOldUserMsgRequest(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static PullOldUserMsgRequest getDefaultInstance() {
            return defaultInstance;
        }

        public PullOldUserMsgRequest getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private PullOldUserMsgRequest(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.appid_ = codedInputStream.readUInt32();
                            break;
                        case 18:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 2;
                            this.currGuid_ = readBytes;
                            break;
                        case 24:
                            this.bitField0_ |= 4;
                            this.startMsgSeq_ = codedInputStream.readUInt64();
                            break;
                        case 32:
                            this.bitField0_ |= 8;
                            this.limit_ = codedInputStream.readUInt32();
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
            return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_PullOldUserMsgRequest_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_PullOldUserMsgRequest_fieldAccessorTable.ensureFieldAccessorsInitialized(PullOldUserMsgRequest.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<PullOldUserMsgRequest> getParserForType() {
            return PARSER;
        }

        public boolean hasAppid() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getAppid() {
            return this.appid_;
        }

        public boolean hasCurrGuid() {
            return (this.bitField0_ & 2) == 2;
        }

        public String getCurrGuid() {
            Object obj = this.currGuid_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.currGuid_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getCurrGuidBytes() {
            Object obj = this.currGuid_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.currGuid_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasStartMsgSeq() {
            return (this.bitField0_ & 4) == 4;
        }

        public long getStartMsgSeq() {
            return this.startMsgSeq_;
        }

        public boolean hasLimit() {
            return (this.bitField0_ & 8) == 8;
        }

        public int getLimit() {
            return this.limit_;
        }

        private void initFields() {
            this.appid_ = 0;
            this.currGuid_ = "";
            this.startMsgSeq_ = 0;
            this.limit_ = 0;
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasAppid()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasCurrGuid()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasStartMsgSeq()) {
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
                codedOutputStream.writeUInt32(1, this.appid_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeBytes(2, getCurrGuidBytes());
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeUInt64(3, this.startMsgSeq_);
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeUInt32(4, this.limit_);
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
                i2 = 0 + CodedOutputStream.computeUInt32Size(1, this.appid_);
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeBytesSize(2, getCurrGuidBytes());
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeUInt64Size(3, this.startMsgSeq_);
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeUInt32Size(4, this.limit_);
            }
            int serializedSize = i2 + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static PullOldUserMsgRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (PullOldUserMsgRequest) PARSER.parseFrom(byteString);
        }

        public static PullOldUserMsgRequest parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (PullOldUserMsgRequest) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static PullOldUserMsgRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (PullOldUserMsgRequest) PARSER.parseFrom(bArr);
        }

        public static PullOldUserMsgRequest parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (PullOldUserMsgRequest) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static PullOldUserMsgRequest parseFrom(InputStream inputStream) throws IOException {
            return (PullOldUserMsgRequest) PARSER.parseFrom(inputStream);
        }

        public static PullOldUserMsgRequest parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (PullOldUserMsgRequest) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static PullOldUserMsgRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (PullOldUserMsgRequest) PARSER.parseDelimitedFrom(inputStream);
        }

        public static PullOldUserMsgRequest parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (PullOldUserMsgRequest) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static PullOldUserMsgRequest parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (PullOldUserMsgRequest) PARSER.parseFrom(codedInputStream);
        }

        public static PullOldUserMsgRequest parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (PullOldUserMsgRequest) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(PullOldUserMsgRequest pullOldUserMsgRequest) {
            return newBuilder().mergeFrom(pullOldUserMsgRequest);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface PullOldUserMsgRequestOrBuilder extends com.google.protobuf.MessageOrBuilder {
        int getAppid();

        String getCurrGuid();

        ByteString getCurrGuidBytes();

        int getLimit();

        long getStartMsgSeq();

        boolean hasAppid();

        boolean hasCurrGuid();

        boolean hasLimit();

        boolean hasStartMsgSeq();
    }

    public static final class PullOldUserMsgResponse extends GeneratedMessage implements PullOldUserMsgResponseOrBuilder {
        public static final int APPID_FIELD_NUMBER = 1;
        public static final int CURRGUID_FIELD_NUMBER = 3;
        public static final int CURRMUID_FIELD_NUMBER = 4;
        public static final int MSGS_FIELD_NUMBER = 5;
        public static Parser<PullOldUserMsgResponse> PARSER = new AbstractParser<PullOldUserMsgResponse>() {
            public PullOldUserMsgResponse parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new PullOldUserMsgResponse(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int RETCODE_FIELD_NUMBER = 2;
        private static final PullOldUserMsgResponse defaultInstance = new PullOldUserMsgResponse(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int appid_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public Object currGuid_;
        /* access modifiers changed from: private */
        public long currMuid_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public List<Message> msgs_;
        /* access modifiers changed from: private */
        public int retCode_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements PullOldUserMsgResponseOrBuilder {
            private int appid_;
            private int bitField0_;
            private Object currGuid_;
            private long currMuid_;
            private RepeatedFieldBuilder<Message, Builder, MessageOrBuilder> msgsBuilder_;
            private List<Message> msgs_;
            private int retCode_;

            public static final Descriptor getDescriptor() {
                return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_PullOldUserMsgResponse_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_PullOldUserMsgResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(PullOldUserMsgResponse.class, Builder.class);
            }

            private Builder() {
                this.currGuid_ = "";
                this.msgs_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.currGuid_ = "";
                this.msgs_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (PullOldUserMsgResponse.alwaysUseFieldBuilders) {
                    getMsgsFieldBuilder();
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.appid_ = 0;
                this.bitField0_ &= -2;
                this.retCode_ = 0;
                this.bitField0_ &= -3;
                this.currGuid_ = "";
                this.bitField0_ &= -5;
                this.currMuid_ = 0;
                this.bitField0_ &= -9;
                if (this.msgsBuilder_ == null) {
                    this.msgs_ = Collections.emptyList();
                    this.bitField0_ &= -17;
                } else {
                    this.msgsBuilder_.clear();
                }
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_PullOldUserMsgResponse_descriptor;
            }

            public PullOldUserMsgResponse getDefaultInstanceForType() {
                return PullOldUserMsgResponse.getDefaultInstance();
            }

            public PullOldUserMsgResponse build() {
                PullOldUserMsgResponse buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public PullOldUserMsgResponse buildPartial() {
                int i = 1;
                PullOldUserMsgResponse pullOldUserMsgResponse = new PullOldUserMsgResponse((com.google.protobuf.GeneratedMessage.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                pullOldUserMsgResponse.appid_ = this.appid_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                pullOldUserMsgResponse.retCode_ = this.retCode_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                pullOldUserMsgResponse.currGuid_ = this.currGuid_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                pullOldUserMsgResponse.currMuid_ = this.currMuid_;
                if (this.msgsBuilder_ == null) {
                    if ((this.bitField0_ & 16) == 16) {
                        this.msgs_ = Collections.unmodifiableList(this.msgs_);
                        this.bitField0_ &= -17;
                    }
                    pullOldUserMsgResponse.msgs_ = this.msgs_;
                } else {
                    pullOldUserMsgResponse.msgs_ = this.msgsBuilder_.build();
                }
                pullOldUserMsgResponse.bitField0_ = i;
                onBuilt();
                return pullOldUserMsgResponse;
            }

            public Builder mergeFrom(com.google.protobuf.Message message) {
                if (message instanceof PullOldUserMsgResponse) {
                    return mergeFrom((PullOldUserMsgResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(PullOldUserMsgResponse pullOldUserMsgResponse) {
                RepeatedFieldBuilder<Message, Builder, MessageOrBuilder> repeatedFieldBuilder = null;
                if (pullOldUserMsgResponse != PullOldUserMsgResponse.getDefaultInstance()) {
                    if (pullOldUserMsgResponse.hasAppid()) {
                        setAppid(pullOldUserMsgResponse.getAppid());
                    }
                    if (pullOldUserMsgResponse.hasRetCode()) {
                        setRetCode(pullOldUserMsgResponse.getRetCode());
                    }
                    if (pullOldUserMsgResponse.hasCurrGuid()) {
                        this.bitField0_ |= 4;
                        this.currGuid_ = pullOldUserMsgResponse.currGuid_;
                        onChanged();
                    }
                    if (pullOldUserMsgResponse.hasCurrMuid()) {
                        setCurrMuid(pullOldUserMsgResponse.getCurrMuid());
                    }
                    if (this.msgsBuilder_ == null) {
                        if (!pullOldUserMsgResponse.msgs_.isEmpty()) {
                            if (this.msgs_.isEmpty()) {
                                this.msgs_ = pullOldUserMsgResponse.msgs_;
                                this.bitField0_ &= -17;
                            } else {
                                ensureMsgsIsMutable();
                                this.msgs_.addAll(pullOldUserMsgResponse.msgs_);
                            }
                            onChanged();
                        }
                    } else if (!pullOldUserMsgResponse.msgs_.isEmpty()) {
                        if (this.msgsBuilder_.isEmpty()) {
                            this.msgsBuilder_.dispose();
                            this.msgsBuilder_ = null;
                            this.msgs_ = pullOldUserMsgResponse.msgs_;
                            this.bitField0_ &= -17;
                            if (PullOldUserMsgResponse.alwaysUseFieldBuilders) {
                                repeatedFieldBuilder = getMsgsFieldBuilder();
                            }
                            this.msgsBuilder_ = repeatedFieldBuilder;
                        } else {
                            this.msgsBuilder_.addAllMessages(pullOldUserMsgResponse.msgs_);
                        }
                    }
                    mergeUnknownFields(pullOldUserMsgResponse.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                if (!hasAppid() || !hasRetCode() || !hasCurrGuid()) {
                    return false;
                }
                for (int i = 0; i < getMsgsCount(); i++) {
                    if (!getMsgs(i).isInitialized()) {
                        return false;
                    }
                }
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                PullOldUserMsgResponse pullOldUserMsgResponse;
                PullOldUserMsgResponse pullOldUserMsgResponse2;
                try {
                    PullOldUserMsgResponse pullOldUserMsgResponse3 = (PullOldUserMsgResponse) PullOldUserMsgResponse.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (pullOldUserMsgResponse3 != null) {
                        mergeFrom(pullOldUserMsgResponse3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    pullOldUserMsgResponse2 = (PullOldUserMsgResponse) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    pullOldUserMsgResponse = pullOldUserMsgResponse2;
                    th = th2;
                }
                if (pullOldUserMsgResponse != null) {
                    mergeFrom(pullOldUserMsgResponse);
                }
                throw th;
            }

            public boolean hasAppid() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getAppid() {
                return this.appid_;
            }

            public Builder setAppid(int i) {
                this.bitField0_ |= 1;
                this.appid_ = i;
                onChanged();
                return this;
            }

            public Builder clearAppid() {
                this.bitField0_ &= -2;
                this.appid_ = 0;
                onChanged();
                return this;
            }

            public boolean hasRetCode() {
                return (this.bitField0_ & 2) == 2;
            }

            public int getRetCode() {
                return this.retCode_;
            }

            public Builder setRetCode(int i) {
                this.bitField0_ |= 2;
                this.retCode_ = i;
                onChanged();
                return this;
            }

            public Builder clearRetCode() {
                this.bitField0_ &= -3;
                this.retCode_ = 0;
                onChanged();
                return this;
            }

            public boolean hasCurrGuid() {
                return (this.bitField0_ & 4) == 4;
            }

            public String getCurrGuid() {
                Object obj = this.currGuid_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.currGuid_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getCurrGuidBytes() {
                Object obj = this.currGuid_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.currGuid_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setCurrGuid(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.currGuid_ = str;
                onChanged();
                return this;
            }

            public Builder clearCurrGuid() {
                this.bitField0_ &= -5;
                this.currGuid_ = PullOldUserMsgResponse.getDefaultInstance().getCurrGuid();
                onChanged();
                return this;
            }

            public Builder setCurrGuidBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.currGuid_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasCurrMuid() {
                return (this.bitField0_ & 8) == 8;
            }

            public long getCurrMuid() {
                return this.currMuid_;
            }

            public Builder setCurrMuid(long j) {
                this.bitField0_ |= 8;
                this.currMuid_ = j;
                onChanged();
                return this;
            }

            public Builder clearCurrMuid() {
                this.bitField0_ &= -9;
                this.currMuid_ = 0;
                onChanged();
                return this;
            }

            private void ensureMsgsIsMutable() {
                if ((this.bitField0_ & 16) != 16) {
                    this.msgs_ = new ArrayList(this.msgs_);
                    this.bitField0_ |= 16;
                }
            }

            public List<Message> getMsgsList() {
                if (this.msgsBuilder_ == null) {
                    return Collections.unmodifiableList(this.msgs_);
                }
                return this.msgsBuilder_.getMessageList();
            }

            public int getMsgsCount() {
                if (this.msgsBuilder_ == null) {
                    return this.msgs_.size();
                }
                return this.msgsBuilder_.getCount();
            }

            public Message getMsgs(int i) {
                if (this.msgsBuilder_ == null) {
                    return (Message) this.msgs_.get(i);
                }
                return (Message) this.msgsBuilder_.getMessage(i);
            }

            public Builder setMsgs(int i, Message message) {
                if (this.msgsBuilder_ != null) {
                    this.msgsBuilder_.setMessage(i, message);
                } else if (message == null) {
                    throw new NullPointerException();
                } else {
                    ensureMsgsIsMutable();
                    this.msgs_.set(i, message);
                    onChanged();
                }
                return this;
            }

            public Builder setMsgs(int i, Builder builder) {
                if (this.msgsBuilder_ == null) {
                    ensureMsgsIsMutable();
                    this.msgs_.set(i, builder.build());
                    onChanged();
                } else {
                    this.msgsBuilder_.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addMsgs(Message message) {
                if (this.msgsBuilder_ != null) {
                    this.msgsBuilder_.addMessage(message);
                } else if (message == null) {
                    throw new NullPointerException();
                } else {
                    ensureMsgsIsMutable();
                    this.msgs_.add(message);
                    onChanged();
                }
                return this;
            }

            public Builder addMsgs(int i, Message message) {
                if (this.msgsBuilder_ != null) {
                    this.msgsBuilder_.addMessage(i, message);
                } else if (message == null) {
                    throw new NullPointerException();
                } else {
                    ensureMsgsIsMutable();
                    this.msgs_.add(i, message);
                    onChanged();
                }
                return this;
            }

            public Builder addMsgs(Builder builder) {
                if (this.msgsBuilder_ == null) {
                    ensureMsgsIsMutable();
                    this.msgs_.add(builder.build());
                    onChanged();
                } else {
                    this.msgsBuilder_.addMessage(builder.build());
                }
                return this;
            }

            public Builder addMsgs(int i, Builder builder) {
                if (this.msgsBuilder_ == null) {
                    ensureMsgsIsMutable();
                    this.msgs_.add(i, builder.build());
                    onChanged();
                } else {
                    this.msgsBuilder_.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllMsgs(Iterable<? extends Message> iterable) {
                if (this.msgsBuilder_ == null) {
                    ensureMsgsIsMutable();
                    com.google.protobuf.AbstractMessageLite.Builder.addAll(iterable, this.msgs_);
                    onChanged();
                } else {
                    this.msgsBuilder_.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearMsgs() {
                if (this.msgsBuilder_ == null) {
                    this.msgs_ = Collections.emptyList();
                    this.bitField0_ &= -17;
                    onChanged();
                } else {
                    this.msgsBuilder_.clear();
                }
                return this;
            }

            public Builder removeMsgs(int i) {
                if (this.msgsBuilder_ == null) {
                    ensureMsgsIsMutable();
                    this.msgs_.remove(i);
                    onChanged();
                } else {
                    this.msgsBuilder_.remove(i);
                }
                return this;
            }

            public Builder getMsgsBuilder(int i) {
                return (Builder) getMsgsFieldBuilder().getBuilder(i);
            }

            public MessageOrBuilder getMsgsOrBuilder(int i) {
                if (this.msgsBuilder_ == null) {
                    return (MessageOrBuilder) this.msgs_.get(i);
                }
                return (MessageOrBuilder) this.msgsBuilder_.getMessageOrBuilder(i);
            }

            public List<? extends MessageOrBuilder> getMsgsOrBuilderList() {
                if (this.msgsBuilder_ != null) {
                    return this.msgsBuilder_.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.msgs_);
            }

            public Builder addMsgsBuilder() {
                return (Builder) getMsgsFieldBuilder().addBuilder(Message.getDefaultInstance());
            }

            public Builder addMsgsBuilder(int i) {
                return (Builder) getMsgsFieldBuilder().addBuilder(i, Message.getDefaultInstance());
            }

            public List<Builder> getMsgsBuilderList() {
                return getMsgsFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<Message, Builder, MessageOrBuilder> getMsgsFieldBuilder() {
                if (this.msgsBuilder_ == null) {
                    this.msgsBuilder_ = new RepeatedFieldBuilder<>(this.msgs_, (this.bitField0_ & 16) == 16, getParentForChildren(), isClean());
                    this.msgs_ = null;
                }
                return this.msgsBuilder_;
            }
        }

        private PullOldUserMsgResponse(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private PullOldUserMsgResponse(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static PullOldUserMsgResponse getDefaultInstance() {
            return defaultInstance;
        }

        public PullOldUserMsgResponse getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private PullOldUserMsgResponse(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.appid_ = codedInputStream.readUInt32();
                            break;
                        case 16:
                            this.bitField0_ |= 2;
                            this.retCode_ = codedInputStream.readUInt32();
                            break;
                        case 26:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 4;
                            this.currGuid_ = readBytes;
                            break;
                        case 32:
                            this.bitField0_ |= 8;
                            this.currMuid_ = codedInputStream.readUInt64();
                            break;
                        case 42:
                            if (!(z2 & true)) {
                                this.msgs_ = new ArrayList();
                                z2 |= true;
                            }
                            this.msgs_.add(codedInputStream.readMessage(Message.PARSER, extensionRegistryLite));
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
                        this.msgs_ = Collections.unmodifiableList(this.msgs_);
                    }
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            if (z2 & true) {
                this.msgs_ = Collections.unmodifiableList(this.msgs_);
            }
            this.unknownFields = newBuilder.build();
            makeExtensionsImmutable();
        }

        public static final Descriptor getDescriptor() {
            return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_PullOldUserMsgResponse_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_PullOldUserMsgResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(PullOldUserMsgResponse.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<PullOldUserMsgResponse> getParserForType() {
            return PARSER;
        }

        public boolean hasAppid() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getAppid() {
            return this.appid_;
        }

        public boolean hasRetCode() {
            return (this.bitField0_ & 2) == 2;
        }

        public int getRetCode() {
            return this.retCode_;
        }

        public boolean hasCurrGuid() {
            return (this.bitField0_ & 4) == 4;
        }

        public String getCurrGuid() {
            Object obj = this.currGuid_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.currGuid_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getCurrGuidBytes() {
            Object obj = this.currGuid_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.currGuid_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasCurrMuid() {
            return (this.bitField0_ & 8) == 8;
        }

        public long getCurrMuid() {
            return this.currMuid_;
        }

        public List<Message> getMsgsList() {
            return this.msgs_;
        }

        public List<? extends MessageOrBuilder> getMsgsOrBuilderList() {
            return this.msgs_;
        }

        public int getMsgsCount() {
            return this.msgs_.size();
        }

        public Message getMsgs(int i) {
            return (Message) this.msgs_.get(i);
        }

        public MessageOrBuilder getMsgsOrBuilder(int i) {
            return (MessageOrBuilder) this.msgs_.get(i);
        }

        private void initFields() {
            this.appid_ = 0;
            this.retCode_ = 0;
            this.currGuid_ = "";
            this.currMuid_ = 0;
            this.msgs_ = Collections.emptyList();
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasAppid()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasRetCode()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasCurrGuid()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else {
                for (int i = 0; i < getMsgsCount(); i++) {
                    if (!getMsgs(i).isInitialized()) {
                        this.memoizedIsInitialized = 0;
                        return false;
                    }
                }
                this.memoizedIsInitialized = 1;
                return true;
            }
        }

        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeUInt32(1, this.appid_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeUInt32(2, this.retCode_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBytes(3, getCurrGuidBytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeUInt64(4, this.currMuid_);
            }
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.msgs_.size()) {
                    codedOutputStream.writeMessage(5, (MessageLite) this.msgs_.get(i2));
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
                i = CodedOutputStream.computeUInt32Size(1, this.appid_) + 0;
            } else {
                i = 0;
            }
            if ((this.bitField0_ & 2) == 2) {
                i += CodedOutputStream.computeUInt32Size(2, this.retCode_);
            }
            if ((this.bitField0_ & 4) == 4) {
                i += CodedOutputStream.computeBytesSize(3, getCurrGuidBytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                i += CodedOutputStream.computeUInt64Size(4, this.currMuid_);
            }
            while (true) {
                int i4 = i;
                if (i2 < this.msgs_.size()) {
                    i = CodedOutputStream.computeMessageSize(5, (MessageLite) this.msgs_.get(i2)) + i4;
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

        public static PullOldUserMsgResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (PullOldUserMsgResponse) PARSER.parseFrom(byteString);
        }

        public static PullOldUserMsgResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (PullOldUserMsgResponse) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static PullOldUserMsgResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (PullOldUserMsgResponse) PARSER.parseFrom(bArr);
        }

        public static PullOldUserMsgResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (PullOldUserMsgResponse) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static PullOldUserMsgResponse parseFrom(InputStream inputStream) throws IOException {
            return (PullOldUserMsgResponse) PARSER.parseFrom(inputStream);
        }

        public static PullOldUserMsgResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (PullOldUserMsgResponse) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static PullOldUserMsgResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (PullOldUserMsgResponse) PARSER.parseDelimitedFrom(inputStream);
        }

        public static PullOldUserMsgResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (PullOldUserMsgResponse) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static PullOldUserMsgResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (PullOldUserMsgResponse) PARSER.parseFrom(codedInputStream);
        }

        public static PullOldUserMsgResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (PullOldUserMsgResponse) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(PullOldUserMsgResponse pullOldUserMsgResponse) {
            return newBuilder().mergeFrom(pullOldUserMsgResponse);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface PullOldUserMsgResponseOrBuilder extends com.google.protobuf.MessageOrBuilder {
        int getAppid();

        String getCurrGuid();

        ByteString getCurrGuidBytes();

        long getCurrMuid();

        Message getMsgs(int i);

        int getMsgsCount();

        List<Message> getMsgsList();

        MessageOrBuilder getMsgsOrBuilder(int i);

        List<? extends MessageOrBuilder> getMsgsOrBuilderList();

        int getRetCode();

        boolean hasAppid();

        boolean hasCurrGuid();

        boolean hasCurrMuid();

        boolean hasRetCode();
    }

    public static final class PushGroupMsg extends GeneratedMessage implements PushGroupMsgOrBuilder {
        public static final int APPID_FIELD_NUMBER = 1;
        public static final int FROMMUID_FIELD_NUMBER = 2;
        public static final int MSG_FIELD_NUMBER = 5;
        public static Parser<PushGroupMsg> PARSER = new AbstractParser<PushGroupMsg>() {
            public PushGroupMsg parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new PushGroupMsg(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int TOMGID_FIELD_NUMBER = 4;
        public static final int TOMUID_FIELD_NUMBER = 3;
        private static final PushGroupMsg defaultInstance = new PushGroupMsg(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int appid_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public long fromMuid_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public Message msg_;
        /* access modifiers changed from: private */
        public long toMgid_;
        /* access modifiers changed from: private */
        public long toMuid_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements PushGroupMsgOrBuilder {
            private int appid_;
            private int bitField0_;
            private long fromMuid_;
            private SingleFieldBuilder<Message, Builder, MessageOrBuilder> msgBuilder_;
            private Message msg_;
            private long toMgid_;
            private long toMuid_;

            public static final Descriptor getDescriptor() {
                return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_PushGroupMsg_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_PushGroupMsg_fieldAccessorTable.ensureFieldAccessorsInitialized(PushGroupMsg.class, Builder.class);
            }

            private Builder() {
                this.msg_ = Message.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.msg_ = Message.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (PushGroupMsg.alwaysUseFieldBuilders) {
                    getMsgFieldBuilder();
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.appid_ = 0;
                this.bitField0_ &= -2;
                this.fromMuid_ = 0;
                this.bitField0_ &= -3;
                this.toMuid_ = 0;
                this.bitField0_ &= -5;
                this.toMgid_ = 0;
                this.bitField0_ &= -9;
                if (this.msgBuilder_ == null) {
                    this.msg_ = Message.getDefaultInstance();
                } else {
                    this.msgBuilder_.clear();
                }
                this.bitField0_ &= -17;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_PushGroupMsg_descriptor;
            }

            public PushGroupMsg getDefaultInstanceForType() {
                return PushGroupMsg.getDefaultInstance();
            }

            public PushGroupMsg build() {
                PushGroupMsg buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public PushGroupMsg buildPartial() {
                int i;
                int i2 = 1;
                PushGroupMsg pushGroupMsg = new PushGroupMsg((com.google.protobuf.GeneratedMessage.Builder) this);
                int i3 = this.bitField0_;
                if ((i3 & 1) != 1) {
                    i2 = 0;
                }
                pushGroupMsg.appid_ = this.appid_;
                if ((i3 & 2) == 2) {
                    i2 |= 2;
                }
                pushGroupMsg.fromMuid_ = this.fromMuid_;
                if ((i3 & 4) == 4) {
                    i2 |= 4;
                }
                pushGroupMsg.toMuid_ = this.toMuid_;
                if ((i3 & 8) == 8) {
                    i2 |= 8;
                }
                pushGroupMsg.toMgid_ = this.toMgid_;
                if ((i3 & 16) == 16) {
                    i = i2 | 16;
                } else {
                    i = i2;
                }
                if (this.msgBuilder_ == null) {
                    pushGroupMsg.msg_ = this.msg_;
                } else {
                    pushGroupMsg.msg_ = (Message) this.msgBuilder_.build();
                }
                pushGroupMsg.bitField0_ = i;
                onBuilt();
                return pushGroupMsg;
            }

            public Builder mergeFrom(com.google.protobuf.Message message) {
                if (message instanceof PushGroupMsg) {
                    return mergeFrom((PushGroupMsg) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(PushGroupMsg pushGroupMsg) {
                if (pushGroupMsg != PushGroupMsg.getDefaultInstance()) {
                    if (pushGroupMsg.hasAppid()) {
                        setAppid(pushGroupMsg.getAppid());
                    }
                    if (pushGroupMsg.hasFromMuid()) {
                        setFromMuid(pushGroupMsg.getFromMuid());
                    }
                    if (pushGroupMsg.hasToMuid()) {
                        setToMuid(pushGroupMsg.getToMuid());
                    }
                    if (pushGroupMsg.hasToMgid()) {
                        setToMgid(pushGroupMsg.getToMgid());
                    }
                    if (pushGroupMsg.hasMsg()) {
                        mergeMsg(pushGroupMsg.getMsg());
                    }
                    mergeUnknownFields(pushGroupMsg.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasAppid() && hasToMuid() && hasMsg() && getMsg().isInitialized()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                PushGroupMsg pushGroupMsg;
                PushGroupMsg pushGroupMsg2;
                try {
                    PushGroupMsg pushGroupMsg3 = (PushGroupMsg) PushGroupMsg.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (pushGroupMsg3 != null) {
                        mergeFrom(pushGroupMsg3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    pushGroupMsg2 = (PushGroupMsg) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    pushGroupMsg = pushGroupMsg2;
                    th = th2;
                }
                if (pushGroupMsg != null) {
                    mergeFrom(pushGroupMsg);
                }
                throw th;
            }

            public boolean hasAppid() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getAppid() {
                return this.appid_;
            }

            public Builder setAppid(int i) {
                this.bitField0_ |= 1;
                this.appid_ = i;
                onChanged();
                return this;
            }

            public Builder clearAppid() {
                this.bitField0_ &= -2;
                this.appid_ = 0;
                onChanged();
                return this;
            }

            public boolean hasFromMuid() {
                return (this.bitField0_ & 2) == 2;
            }

            public long getFromMuid() {
                return this.fromMuid_;
            }

            public Builder setFromMuid(long j) {
                this.bitField0_ |= 2;
                this.fromMuid_ = j;
                onChanged();
                return this;
            }

            public Builder clearFromMuid() {
                this.bitField0_ &= -3;
                this.fromMuid_ = 0;
                onChanged();
                return this;
            }

            public boolean hasToMuid() {
                return (this.bitField0_ & 4) == 4;
            }

            public long getToMuid() {
                return this.toMuid_;
            }

            public Builder setToMuid(long j) {
                this.bitField0_ |= 4;
                this.toMuid_ = j;
                onChanged();
                return this;
            }

            public Builder clearToMuid() {
                this.bitField0_ &= -5;
                this.toMuid_ = 0;
                onChanged();
                return this;
            }

            public boolean hasToMgid() {
                return (this.bitField0_ & 8) == 8;
            }

            public long getToMgid() {
                return this.toMgid_;
            }

            public Builder setToMgid(long j) {
                this.bitField0_ |= 8;
                this.toMgid_ = j;
                onChanged();
                return this;
            }

            public Builder clearToMgid() {
                this.bitField0_ &= -9;
                this.toMgid_ = 0;
                onChanged();
                return this;
            }

            public boolean hasMsg() {
                return (this.bitField0_ & 16) == 16;
            }

            public Message getMsg() {
                if (this.msgBuilder_ == null) {
                    return this.msg_;
                }
                return (Message) this.msgBuilder_.getMessage();
            }

            public Builder setMsg(Message message) {
                if (this.msgBuilder_ != null) {
                    this.msgBuilder_.setMessage(message);
                } else if (message == null) {
                    throw new NullPointerException();
                } else {
                    this.msg_ = message;
                    onChanged();
                }
                this.bitField0_ |= 16;
                return this;
            }

            public Builder setMsg(Builder builder) {
                if (this.msgBuilder_ == null) {
                    this.msg_ = builder.build();
                    onChanged();
                } else {
                    this.msgBuilder_.setMessage(builder.build());
                }
                this.bitField0_ |= 16;
                return this;
            }

            public Builder mergeMsg(Message message) {
                if (this.msgBuilder_ == null) {
                    if ((this.bitField0_ & 16) != 16 || this.msg_ == Message.getDefaultInstance()) {
                        this.msg_ = message;
                    } else {
                        this.msg_ = Message.newBuilder(this.msg_).mergeFrom(message).buildPartial();
                    }
                    onChanged();
                } else {
                    this.msgBuilder_.mergeFrom(message);
                }
                this.bitField0_ |= 16;
                return this;
            }

            public Builder clearMsg() {
                if (this.msgBuilder_ == null) {
                    this.msg_ = Message.getDefaultInstance();
                    onChanged();
                } else {
                    this.msgBuilder_.clear();
                }
                this.bitField0_ &= -17;
                return this;
            }

            public Builder getMsgBuilder() {
                this.bitField0_ |= 16;
                onChanged();
                return (Builder) getMsgFieldBuilder().getBuilder();
            }

            public MessageOrBuilder getMsgOrBuilder() {
                if (this.msgBuilder_ != null) {
                    return (MessageOrBuilder) this.msgBuilder_.getMessageOrBuilder();
                }
                return this.msg_;
            }

            private SingleFieldBuilder<Message, Builder, MessageOrBuilder> getMsgFieldBuilder() {
                if (this.msgBuilder_ == null) {
                    this.msgBuilder_ = new SingleFieldBuilder<>(getMsg(), getParentForChildren(), isClean());
                    this.msg_ = null;
                }
                return this.msgBuilder_;
            }
        }

        private PushGroupMsg(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private PushGroupMsg(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static PushGroupMsg getDefaultInstance() {
            return defaultInstance;
        }

        public PushGroupMsg getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private PushGroupMsg(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.appid_ = codedInputStream.readUInt32();
                            z = z2;
                            break;
                        case 16:
                            this.bitField0_ |= 2;
                            this.fromMuid_ = codedInputStream.readUInt64();
                            z = z2;
                            break;
                        case 24:
                            this.bitField0_ |= 4;
                            this.toMuid_ = codedInputStream.readUInt64();
                            z = z2;
                            break;
                        case 32:
                            this.bitField0_ |= 8;
                            this.toMgid_ = codedInputStream.readUInt64();
                            z = z2;
                            break;
                        case 42:
                            if ((this.bitField0_ & 16) == 16) {
                                builder = this.msg_.toBuilder();
                            } else {
                                builder = null;
                            }
                            this.msg_ = (Message) codedInputStream.readMessage(Message.PARSER, extensionRegistryLite);
                            if (builder != null) {
                                builder.mergeFrom(this.msg_);
                                this.msg_ = builder.buildPartial();
                            }
                            this.bitField0_ |= 16;
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
            return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_PushGroupMsg_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_PushGroupMsg_fieldAccessorTable.ensureFieldAccessorsInitialized(PushGroupMsg.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<PushGroupMsg> getParserForType() {
            return PARSER;
        }

        public boolean hasAppid() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getAppid() {
            return this.appid_;
        }

        public boolean hasFromMuid() {
            return (this.bitField0_ & 2) == 2;
        }

        public long getFromMuid() {
            return this.fromMuid_;
        }

        public boolean hasToMuid() {
            return (this.bitField0_ & 4) == 4;
        }

        public long getToMuid() {
            return this.toMuid_;
        }

        public boolean hasToMgid() {
            return (this.bitField0_ & 8) == 8;
        }

        public long getToMgid() {
            return this.toMgid_;
        }

        public boolean hasMsg() {
            return (this.bitField0_ & 16) == 16;
        }

        public Message getMsg() {
            return this.msg_;
        }

        public MessageOrBuilder getMsgOrBuilder() {
            return this.msg_;
        }

        private void initFields() {
            this.appid_ = 0;
            this.fromMuid_ = 0;
            this.toMuid_ = 0;
            this.toMgid_ = 0;
            this.msg_ = Message.getDefaultInstance();
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasAppid()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasToMuid()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasMsg()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!getMsg().isInitialized()) {
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
                codedOutputStream.writeUInt32(1, this.appid_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeUInt64(2, this.fromMuid_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeUInt64(3, this.toMuid_);
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeUInt64(4, this.toMgid_);
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeMessage(5, this.msg_);
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
                i2 = 0 + CodedOutputStream.computeUInt32Size(1, this.appid_);
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeUInt64Size(2, this.fromMuid_);
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeUInt64Size(3, this.toMuid_);
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeUInt64Size(4, this.toMgid_);
            }
            if ((this.bitField0_ & 16) == 16) {
                i2 += CodedOutputStream.computeMessageSize(5, this.msg_);
            }
            int serializedSize = i2 + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static PushGroupMsg parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (PushGroupMsg) PARSER.parseFrom(byteString);
        }

        public static PushGroupMsg parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (PushGroupMsg) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static PushGroupMsg parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (PushGroupMsg) PARSER.parseFrom(bArr);
        }

        public static PushGroupMsg parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (PushGroupMsg) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static PushGroupMsg parseFrom(InputStream inputStream) throws IOException {
            return (PushGroupMsg) PARSER.parseFrom(inputStream);
        }

        public static PushGroupMsg parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (PushGroupMsg) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static PushGroupMsg parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (PushGroupMsg) PARSER.parseDelimitedFrom(inputStream);
        }

        public static PushGroupMsg parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (PushGroupMsg) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static PushGroupMsg parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (PushGroupMsg) PARSER.parseFrom(codedInputStream);
        }

        public static PushGroupMsg parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (PushGroupMsg) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(PushGroupMsg pushGroupMsg) {
            return newBuilder().mergeFrom(pushGroupMsg);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface PushGroupMsgOrBuilder extends com.google.protobuf.MessageOrBuilder {
        int getAppid();

        long getFromMuid();

        Message getMsg();

        MessageOrBuilder getMsgOrBuilder();

        long getToMgid();

        long getToMuid();

        boolean hasAppid();

        boolean hasFromMuid();

        boolean hasMsg();

        boolean hasToMgid();

        boolean hasToMuid();
    }

    public static final class PushRoomMsg extends GeneratedMessage implements PushRoomMsgOrBuilder {
        public static final int APPID_FIELD_NUMBER = 1;
        public static final int FROMMUID_FIELD_NUMBER = 2;
        public static final int MRID_FIELD_NUMBER = 4;
        public static final int MSG_FIELD_NUMBER = 5;
        public static Parser<PushRoomMsg> PARSER = new AbstractParser<PushRoomMsg>() {
            public PushRoomMsg parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new PushRoomMsg(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int TOMUID_FIELD_NUMBER = 3;
        private static final PushRoomMsg defaultInstance = new PushRoomMsg(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int appid_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public long fromMuid_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public long mrid_;
        /* access modifiers changed from: private */
        public Message msg_;
        /* access modifiers changed from: private */
        public long toMuid_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements PushRoomMsgOrBuilder {
            private int appid_;
            private int bitField0_;
            private long fromMuid_;
            private long mrid_;
            private SingleFieldBuilder<Message, Builder, MessageOrBuilder> msgBuilder_;
            private Message msg_;
            private long toMuid_;

            public static final Descriptor getDescriptor() {
                return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_PushRoomMsg_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_PushRoomMsg_fieldAccessorTable.ensureFieldAccessorsInitialized(PushRoomMsg.class, Builder.class);
            }

            private Builder() {
                this.msg_ = Message.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.msg_ = Message.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (PushRoomMsg.alwaysUseFieldBuilders) {
                    getMsgFieldBuilder();
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.appid_ = 0;
                this.bitField0_ &= -2;
                this.fromMuid_ = 0;
                this.bitField0_ &= -3;
                this.toMuid_ = 0;
                this.bitField0_ &= -5;
                this.mrid_ = 0;
                this.bitField0_ &= -9;
                if (this.msgBuilder_ == null) {
                    this.msg_ = Message.getDefaultInstance();
                } else {
                    this.msgBuilder_.clear();
                }
                this.bitField0_ &= -17;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_PushRoomMsg_descriptor;
            }

            public PushRoomMsg getDefaultInstanceForType() {
                return PushRoomMsg.getDefaultInstance();
            }

            public PushRoomMsg build() {
                PushRoomMsg buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public PushRoomMsg buildPartial() {
                int i;
                int i2 = 1;
                PushRoomMsg pushRoomMsg = new PushRoomMsg((com.google.protobuf.GeneratedMessage.Builder) this);
                int i3 = this.bitField0_;
                if ((i3 & 1) != 1) {
                    i2 = 0;
                }
                pushRoomMsg.appid_ = this.appid_;
                if ((i3 & 2) == 2) {
                    i2 |= 2;
                }
                pushRoomMsg.fromMuid_ = this.fromMuid_;
                if ((i3 & 4) == 4) {
                    i2 |= 4;
                }
                pushRoomMsg.toMuid_ = this.toMuid_;
                if ((i3 & 8) == 8) {
                    i2 |= 8;
                }
                pushRoomMsg.mrid_ = this.mrid_;
                if ((i3 & 16) == 16) {
                    i = i2 | 16;
                } else {
                    i = i2;
                }
                if (this.msgBuilder_ == null) {
                    pushRoomMsg.msg_ = this.msg_;
                } else {
                    pushRoomMsg.msg_ = (Message) this.msgBuilder_.build();
                }
                pushRoomMsg.bitField0_ = i;
                onBuilt();
                return pushRoomMsg;
            }

            public Builder mergeFrom(com.google.protobuf.Message message) {
                if (message instanceof PushRoomMsg) {
                    return mergeFrom((PushRoomMsg) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(PushRoomMsg pushRoomMsg) {
                if (pushRoomMsg != PushRoomMsg.getDefaultInstance()) {
                    if (pushRoomMsg.hasAppid()) {
                        setAppid(pushRoomMsg.getAppid());
                    }
                    if (pushRoomMsg.hasFromMuid()) {
                        setFromMuid(pushRoomMsg.getFromMuid());
                    }
                    if (pushRoomMsg.hasToMuid()) {
                        setToMuid(pushRoomMsg.getToMuid());
                    }
                    if (pushRoomMsg.hasMrid()) {
                        setMrid(pushRoomMsg.getMrid());
                    }
                    if (pushRoomMsg.hasMsg()) {
                        mergeMsg(pushRoomMsg.getMsg());
                    }
                    mergeUnknownFields(pushRoomMsg.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasAppid() && hasToMuid() && hasMsg() && getMsg().isInitialized()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                PushRoomMsg pushRoomMsg;
                PushRoomMsg pushRoomMsg2;
                try {
                    PushRoomMsg pushRoomMsg3 = (PushRoomMsg) PushRoomMsg.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (pushRoomMsg3 != null) {
                        mergeFrom(pushRoomMsg3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    pushRoomMsg2 = (PushRoomMsg) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    pushRoomMsg = pushRoomMsg2;
                    th = th2;
                }
                if (pushRoomMsg != null) {
                    mergeFrom(pushRoomMsg);
                }
                throw th;
            }

            public boolean hasAppid() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getAppid() {
                return this.appid_;
            }

            public Builder setAppid(int i) {
                this.bitField0_ |= 1;
                this.appid_ = i;
                onChanged();
                return this;
            }

            public Builder clearAppid() {
                this.bitField0_ &= -2;
                this.appid_ = 0;
                onChanged();
                return this;
            }

            public boolean hasFromMuid() {
                return (this.bitField0_ & 2) == 2;
            }

            public long getFromMuid() {
                return this.fromMuid_;
            }

            public Builder setFromMuid(long j) {
                this.bitField0_ |= 2;
                this.fromMuid_ = j;
                onChanged();
                return this;
            }

            public Builder clearFromMuid() {
                this.bitField0_ &= -3;
                this.fromMuid_ = 0;
                onChanged();
                return this;
            }

            public boolean hasToMuid() {
                return (this.bitField0_ & 4) == 4;
            }

            public long getToMuid() {
                return this.toMuid_;
            }

            public Builder setToMuid(long j) {
                this.bitField0_ |= 4;
                this.toMuid_ = j;
                onChanged();
                return this;
            }

            public Builder clearToMuid() {
                this.bitField0_ &= -5;
                this.toMuid_ = 0;
                onChanged();
                return this;
            }

            public boolean hasMrid() {
                return (this.bitField0_ & 8) == 8;
            }

            public long getMrid() {
                return this.mrid_;
            }

            public Builder setMrid(long j) {
                this.bitField0_ |= 8;
                this.mrid_ = j;
                onChanged();
                return this;
            }

            public Builder clearMrid() {
                this.bitField0_ &= -9;
                this.mrid_ = 0;
                onChanged();
                return this;
            }

            public boolean hasMsg() {
                return (this.bitField0_ & 16) == 16;
            }

            public Message getMsg() {
                if (this.msgBuilder_ == null) {
                    return this.msg_;
                }
                return (Message) this.msgBuilder_.getMessage();
            }

            public Builder setMsg(Message message) {
                if (this.msgBuilder_ != null) {
                    this.msgBuilder_.setMessage(message);
                } else if (message == null) {
                    throw new NullPointerException();
                } else {
                    this.msg_ = message;
                    onChanged();
                }
                this.bitField0_ |= 16;
                return this;
            }

            public Builder setMsg(Builder builder) {
                if (this.msgBuilder_ == null) {
                    this.msg_ = builder.build();
                    onChanged();
                } else {
                    this.msgBuilder_.setMessage(builder.build());
                }
                this.bitField0_ |= 16;
                return this;
            }

            public Builder mergeMsg(Message message) {
                if (this.msgBuilder_ == null) {
                    if ((this.bitField0_ & 16) != 16 || this.msg_ == Message.getDefaultInstance()) {
                        this.msg_ = message;
                    } else {
                        this.msg_ = Message.newBuilder(this.msg_).mergeFrom(message).buildPartial();
                    }
                    onChanged();
                } else {
                    this.msgBuilder_.mergeFrom(message);
                }
                this.bitField0_ |= 16;
                return this;
            }

            public Builder clearMsg() {
                if (this.msgBuilder_ == null) {
                    this.msg_ = Message.getDefaultInstance();
                    onChanged();
                } else {
                    this.msgBuilder_.clear();
                }
                this.bitField0_ &= -17;
                return this;
            }

            public Builder getMsgBuilder() {
                this.bitField0_ |= 16;
                onChanged();
                return (Builder) getMsgFieldBuilder().getBuilder();
            }

            public MessageOrBuilder getMsgOrBuilder() {
                if (this.msgBuilder_ != null) {
                    return (MessageOrBuilder) this.msgBuilder_.getMessageOrBuilder();
                }
                return this.msg_;
            }

            private SingleFieldBuilder<Message, Builder, MessageOrBuilder> getMsgFieldBuilder() {
                if (this.msgBuilder_ == null) {
                    this.msgBuilder_ = new SingleFieldBuilder<>(getMsg(), getParentForChildren(), isClean());
                    this.msg_ = null;
                }
                return this.msgBuilder_;
            }
        }

        private PushRoomMsg(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private PushRoomMsg(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static PushRoomMsg getDefaultInstance() {
            return defaultInstance;
        }

        public PushRoomMsg getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private PushRoomMsg(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.appid_ = codedInputStream.readUInt32();
                            z = z2;
                            break;
                        case 16:
                            this.bitField0_ |= 2;
                            this.fromMuid_ = codedInputStream.readUInt64();
                            z = z2;
                            break;
                        case 24:
                            this.bitField0_ |= 4;
                            this.toMuid_ = codedInputStream.readUInt64();
                            z = z2;
                            break;
                        case 32:
                            this.bitField0_ |= 8;
                            this.mrid_ = codedInputStream.readUInt64();
                            z = z2;
                            break;
                        case 42:
                            if ((this.bitField0_ & 16) == 16) {
                                builder = this.msg_.toBuilder();
                            } else {
                                builder = null;
                            }
                            this.msg_ = (Message) codedInputStream.readMessage(Message.PARSER, extensionRegistryLite);
                            if (builder != null) {
                                builder.mergeFrom(this.msg_);
                                this.msg_ = builder.buildPartial();
                            }
                            this.bitField0_ |= 16;
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
            return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_PushRoomMsg_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_PushRoomMsg_fieldAccessorTable.ensureFieldAccessorsInitialized(PushRoomMsg.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<PushRoomMsg> getParserForType() {
            return PARSER;
        }

        public boolean hasAppid() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getAppid() {
            return this.appid_;
        }

        public boolean hasFromMuid() {
            return (this.bitField0_ & 2) == 2;
        }

        public long getFromMuid() {
            return this.fromMuid_;
        }

        public boolean hasToMuid() {
            return (this.bitField0_ & 4) == 4;
        }

        public long getToMuid() {
            return this.toMuid_;
        }

        public boolean hasMrid() {
            return (this.bitField0_ & 8) == 8;
        }

        public long getMrid() {
            return this.mrid_;
        }

        public boolean hasMsg() {
            return (this.bitField0_ & 16) == 16;
        }

        public Message getMsg() {
            return this.msg_;
        }

        public MessageOrBuilder getMsgOrBuilder() {
            return this.msg_;
        }

        private void initFields() {
            this.appid_ = 0;
            this.fromMuid_ = 0;
            this.toMuid_ = 0;
            this.mrid_ = 0;
            this.msg_ = Message.getDefaultInstance();
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasAppid()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasToMuid()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasMsg()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!getMsg().isInitialized()) {
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
                codedOutputStream.writeUInt32(1, this.appid_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeUInt64(2, this.fromMuid_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeUInt64(3, this.toMuid_);
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeUInt64(4, this.mrid_);
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeMessage(5, this.msg_);
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
                i2 = 0 + CodedOutputStream.computeUInt32Size(1, this.appid_);
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeUInt64Size(2, this.fromMuid_);
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeUInt64Size(3, this.toMuid_);
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeUInt64Size(4, this.mrid_);
            }
            if ((this.bitField0_ & 16) == 16) {
                i2 += CodedOutputStream.computeMessageSize(5, this.msg_);
            }
            int serializedSize = i2 + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static PushRoomMsg parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (PushRoomMsg) PARSER.parseFrom(byteString);
        }

        public static PushRoomMsg parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (PushRoomMsg) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static PushRoomMsg parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (PushRoomMsg) PARSER.parseFrom(bArr);
        }

        public static PushRoomMsg parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (PushRoomMsg) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static PushRoomMsg parseFrom(InputStream inputStream) throws IOException {
            return (PushRoomMsg) PARSER.parseFrom(inputStream);
        }

        public static PushRoomMsg parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (PushRoomMsg) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static PushRoomMsg parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (PushRoomMsg) PARSER.parseDelimitedFrom(inputStream);
        }

        public static PushRoomMsg parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (PushRoomMsg) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static PushRoomMsg parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (PushRoomMsg) PARSER.parseFrom(codedInputStream);
        }

        public static PushRoomMsg parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (PushRoomMsg) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(PushRoomMsg pushRoomMsg) {
            return newBuilder().mergeFrom(pushRoomMsg);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface PushRoomMsgOrBuilder extends com.google.protobuf.MessageOrBuilder {
        int getAppid();

        long getFromMuid();

        long getMrid();

        Message getMsg();

        MessageOrBuilder getMsgOrBuilder();

        long getToMuid();

        boolean hasAppid();

        boolean hasFromMuid();

        boolean hasMrid();

        boolean hasMsg();

        boolean hasToMuid();
    }

    public static final class PushUserMsg extends GeneratedMessage implements PushUserMsgOrBuilder {
        public static final int APPID_FIELD_NUMBER = 1;
        public static final int FROMMUID_FIELD_NUMBER = 2;
        public static final int MSG_FIELD_NUMBER = 4;
        public static Parser<PushUserMsg> PARSER = new AbstractParser<PushUserMsg>() {
            public PushUserMsg parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new PushUserMsg(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int TOMUID_FIELD_NUMBER = 3;
        private static final PushUserMsg defaultInstance = new PushUserMsg(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int appid_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public long fromMuid_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public Message msg_;
        /* access modifiers changed from: private */
        public long toMuid_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements PushUserMsgOrBuilder {
            private int appid_;
            private int bitField0_;
            private long fromMuid_;
            private SingleFieldBuilder<Message, Builder, MessageOrBuilder> msgBuilder_;
            private Message msg_;
            private long toMuid_;

            public static final Descriptor getDescriptor() {
                return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_PushUserMsg_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_PushUserMsg_fieldAccessorTable.ensureFieldAccessorsInitialized(PushUserMsg.class, Builder.class);
            }

            private Builder() {
                this.msg_ = Message.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.msg_ = Message.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (PushUserMsg.alwaysUseFieldBuilders) {
                    getMsgFieldBuilder();
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.appid_ = 0;
                this.bitField0_ &= -2;
                this.fromMuid_ = 0;
                this.bitField0_ &= -3;
                this.toMuid_ = 0;
                this.bitField0_ &= -5;
                if (this.msgBuilder_ == null) {
                    this.msg_ = Message.getDefaultInstance();
                } else {
                    this.msgBuilder_.clear();
                }
                this.bitField0_ &= -9;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_PushUserMsg_descriptor;
            }

            public PushUserMsg getDefaultInstanceForType() {
                return PushUserMsg.getDefaultInstance();
            }

            public PushUserMsg build() {
                PushUserMsg buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public PushUserMsg buildPartial() {
                int i;
                int i2 = 1;
                PushUserMsg pushUserMsg = new PushUserMsg((com.google.protobuf.GeneratedMessage.Builder) this);
                int i3 = this.bitField0_;
                if ((i3 & 1) != 1) {
                    i2 = 0;
                }
                pushUserMsg.appid_ = this.appid_;
                if ((i3 & 2) == 2) {
                    i2 |= 2;
                }
                pushUserMsg.fromMuid_ = this.fromMuid_;
                if ((i3 & 4) == 4) {
                    i2 |= 4;
                }
                pushUserMsg.toMuid_ = this.toMuid_;
                if ((i3 & 8) == 8) {
                    i = i2 | 8;
                } else {
                    i = i2;
                }
                if (this.msgBuilder_ == null) {
                    pushUserMsg.msg_ = this.msg_;
                } else {
                    pushUserMsg.msg_ = (Message) this.msgBuilder_.build();
                }
                pushUserMsg.bitField0_ = i;
                onBuilt();
                return pushUserMsg;
            }

            public Builder mergeFrom(com.google.protobuf.Message message) {
                if (message instanceof PushUserMsg) {
                    return mergeFrom((PushUserMsg) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(PushUserMsg pushUserMsg) {
                if (pushUserMsg != PushUserMsg.getDefaultInstance()) {
                    if (pushUserMsg.hasAppid()) {
                        setAppid(pushUserMsg.getAppid());
                    }
                    if (pushUserMsg.hasFromMuid()) {
                        setFromMuid(pushUserMsg.getFromMuid());
                    }
                    if (pushUserMsg.hasToMuid()) {
                        setToMuid(pushUserMsg.getToMuid());
                    }
                    if (pushUserMsg.hasMsg()) {
                        mergeMsg(pushUserMsg.getMsg());
                    }
                    mergeUnknownFields(pushUserMsg.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasAppid() && hasToMuid() && hasMsg() && getMsg().isInitialized()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                PushUserMsg pushUserMsg;
                PushUserMsg pushUserMsg2;
                try {
                    PushUserMsg pushUserMsg3 = (PushUserMsg) PushUserMsg.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (pushUserMsg3 != null) {
                        mergeFrom(pushUserMsg3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    pushUserMsg2 = (PushUserMsg) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    pushUserMsg = pushUserMsg2;
                    th = th2;
                }
                if (pushUserMsg != null) {
                    mergeFrom(pushUserMsg);
                }
                throw th;
            }

            public boolean hasAppid() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getAppid() {
                return this.appid_;
            }

            public Builder setAppid(int i) {
                this.bitField0_ |= 1;
                this.appid_ = i;
                onChanged();
                return this;
            }

            public Builder clearAppid() {
                this.bitField0_ &= -2;
                this.appid_ = 0;
                onChanged();
                return this;
            }

            public boolean hasFromMuid() {
                return (this.bitField0_ & 2) == 2;
            }

            public long getFromMuid() {
                return this.fromMuid_;
            }

            public Builder setFromMuid(long j) {
                this.bitField0_ |= 2;
                this.fromMuid_ = j;
                onChanged();
                return this;
            }

            public Builder clearFromMuid() {
                this.bitField0_ &= -3;
                this.fromMuid_ = 0;
                onChanged();
                return this;
            }

            public boolean hasToMuid() {
                return (this.bitField0_ & 4) == 4;
            }

            public long getToMuid() {
                return this.toMuid_;
            }

            public Builder setToMuid(long j) {
                this.bitField0_ |= 4;
                this.toMuid_ = j;
                onChanged();
                return this;
            }

            public Builder clearToMuid() {
                this.bitField0_ &= -5;
                this.toMuid_ = 0;
                onChanged();
                return this;
            }

            public boolean hasMsg() {
                return (this.bitField0_ & 8) == 8;
            }

            public Message getMsg() {
                if (this.msgBuilder_ == null) {
                    return this.msg_;
                }
                return (Message) this.msgBuilder_.getMessage();
            }

            public Builder setMsg(Message message) {
                if (this.msgBuilder_ != null) {
                    this.msgBuilder_.setMessage(message);
                } else if (message == null) {
                    throw new NullPointerException();
                } else {
                    this.msg_ = message;
                    onChanged();
                }
                this.bitField0_ |= 8;
                return this;
            }

            public Builder setMsg(Builder builder) {
                if (this.msgBuilder_ == null) {
                    this.msg_ = builder.build();
                    onChanged();
                } else {
                    this.msgBuilder_.setMessage(builder.build());
                }
                this.bitField0_ |= 8;
                return this;
            }

            public Builder mergeMsg(Message message) {
                if (this.msgBuilder_ == null) {
                    if ((this.bitField0_ & 8) != 8 || this.msg_ == Message.getDefaultInstance()) {
                        this.msg_ = message;
                    } else {
                        this.msg_ = Message.newBuilder(this.msg_).mergeFrom(message).buildPartial();
                    }
                    onChanged();
                } else {
                    this.msgBuilder_.mergeFrom(message);
                }
                this.bitField0_ |= 8;
                return this;
            }

            public Builder clearMsg() {
                if (this.msgBuilder_ == null) {
                    this.msg_ = Message.getDefaultInstance();
                    onChanged();
                } else {
                    this.msgBuilder_.clear();
                }
                this.bitField0_ &= -9;
                return this;
            }

            public Builder getMsgBuilder() {
                this.bitField0_ |= 8;
                onChanged();
                return (Builder) getMsgFieldBuilder().getBuilder();
            }

            public MessageOrBuilder getMsgOrBuilder() {
                if (this.msgBuilder_ != null) {
                    return (MessageOrBuilder) this.msgBuilder_.getMessageOrBuilder();
                }
                return this.msg_;
            }

            private SingleFieldBuilder<Message, Builder, MessageOrBuilder> getMsgFieldBuilder() {
                if (this.msgBuilder_ == null) {
                    this.msgBuilder_ = new SingleFieldBuilder<>(getMsg(), getParentForChildren(), isClean());
                    this.msg_ = null;
                }
                return this.msgBuilder_;
            }
        }

        private PushUserMsg(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private PushUserMsg(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static PushUserMsg getDefaultInstance() {
            return defaultInstance;
        }

        public PushUserMsg getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private PushUserMsg(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.appid_ = codedInputStream.readUInt32();
                            z = z2;
                            break;
                        case 16:
                            this.bitField0_ |= 2;
                            this.fromMuid_ = codedInputStream.readUInt64();
                            z = z2;
                            break;
                        case 24:
                            this.bitField0_ |= 4;
                            this.toMuid_ = codedInputStream.readUInt64();
                            z = z2;
                            break;
                        case 34:
                            if ((this.bitField0_ & 8) == 8) {
                                builder = this.msg_.toBuilder();
                            } else {
                                builder = null;
                            }
                            this.msg_ = (Message) codedInputStream.readMessage(Message.PARSER, extensionRegistryLite);
                            if (builder != null) {
                                builder.mergeFrom(this.msg_);
                                this.msg_ = builder.buildPartial();
                            }
                            this.bitField0_ |= 8;
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
            return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_PushUserMsg_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_PushUserMsg_fieldAccessorTable.ensureFieldAccessorsInitialized(PushUserMsg.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<PushUserMsg> getParserForType() {
            return PARSER;
        }

        public boolean hasAppid() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getAppid() {
            return this.appid_;
        }

        public boolean hasFromMuid() {
            return (this.bitField0_ & 2) == 2;
        }

        public long getFromMuid() {
            return this.fromMuid_;
        }

        public boolean hasToMuid() {
            return (this.bitField0_ & 4) == 4;
        }

        public long getToMuid() {
            return this.toMuid_;
        }

        public boolean hasMsg() {
            return (this.bitField0_ & 8) == 8;
        }

        public Message getMsg() {
            return this.msg_;
        }

        public MessageOrBuilder getMsgOrBuilder() {
            return this.msg_;
        }

        private void initFields() {
            this.appid_ = 0;
            this.fromMuid_ = 0;
            this.toMuid_ = 0;
            this.msg_ = Message.getDefaultInstance();
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasAppid()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasToMuid()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasMsg()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!getMsg().isInitialized()) {
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
                codedOutputStream.writeUInt32(1, this.appid_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeUInt64(2, this.fromMuid_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeUInt64(3, this.toMuid_);
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeMessage(4, this.msg_);
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
                i2 = 0 + CodedOutputStream.computeUInt32Size(1, this.appid_);
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeUInt64Size(2, this.fromMuid_);
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeUInt64Size(3, this.toMuid_);
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeMessageSize(4, this.msg_);
            }
            int serializedSize = i2 + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static PushUserMsg parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (PushUserMsg) PARSER.parseFrom(byteString);
        }

        public static PushUserMsg parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (PushUserMsg) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static PushUserMsg parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (PushUserMsg) PARSER.parseFrom(bArr);
        }

        public static PushUserMsg parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (PushUserMsg) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static PushUserMsg parseFrom(InputStream inputStream) throws IOException {
            return (PushUserMsg) PARSER.parseFrom(inputStream);
        }

        public static PushUserMsg parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (PushUserMsg) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static PushUserMsg parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (PushUserMsg) PARSER.parseDelimitedFrom(inputStream);
        }

        public static PushUserMsg parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (PushUserMsg) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static PushUserMsg parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (PushUserMsg) PARSER.parseFrom(codedInputStream);
        }

        public static PushUserMsg parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (PushUserMsg) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(PushUserMsg pushUserMsg) {
            return newBuilder().mergeFrom(pushUserMsg);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface PushUserMsgOrBuilder extends com.google.protobuf.MessageOrBuilder {
        int getAppid();

        long getFromMuid();

        Message getMsg();

        MessageOrBuilder getMsgOrBuilder();

        long getToMuid();

        boolean hasAppid();

        boolean hasFromMuid();

        boolean hasMsg();

        boolean hasToMuid();
    }

    public static final class SendGroupMsgRequest extends GeneratedMessage implements SendGroupMsgRequestOrBuilder {
        public static final int APPID_FIELD_NUMBER = 1;
        public static final int BODYTYPE_FIELD_NUMBER = 7;
        public static final int BODY_FIELD_NUMBER = 6;
        public static final int FROMGUID_FIELD_NUMBER = 3;
        public static final int FROMMUID_FIELD_NUMBER = 4;
        public static final int MSGID_FIELD_NUMBER = 5;
        public static Parser<SendGroupMsgRequest> PARSER = new AbstractParser<SendGroupMsgRequest>() {
            public SendGroupMsgRequest parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new SendGroupMsgRequest(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int TOGGID_FIELD_NUMBER = 2;
        private static final SendGroupMsgRequest defaultInstance = new SendGroupMsgRequest(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int appid_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public int bodyType_;
        /* access modifiers changed from: private */
        public ByteString body_;
        /* access modifiers changed from: private */
        public Object fromGuid_;
        /* access modifiers changed from: private */
        public long fromMuid_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public long msgId_;
        /* access modifiers changed from: private */
        public Object toGgid_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements SendGroupMsgRequestOrBuilder {
            private int appid_;
            private int bitField0_;
            private int bodyType_;
            private ByteString body_;
            private Object fromGuid_;
            private long fromMuid_;
            private long msgId_;
            private Object toGgid_;

            public static final Descriptor getDescriptor() {
                return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_SendGroupMsgRequest_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_SendGroupMsgRequest_fieldAccessorTable.ensureFieldAccessorsInitialized(SendGroupMsgRequest.class, Builder.class);
            }

            private Builder() {
                this.toGgid_ = "";
                this.fromGuid_ = "";
                this.body_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.toGgid_ = "";
                this.fromGuid_ = "";
                this.body_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (SendGroupMsgRequest.alwaysUseFieldBuilders) {
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.appid_ = 0;
                this.bitField0_ &= -2;
                this.toGgid_ = "";
                this.bitField0_ &= -3;
                this.fromGuid_ = "";
                this.bitField0_ &= -5;
                this.fromMuid_ = 0;
                this.bitField0_ &= -9;
                this.msgId_ = 0;
                this.bitField0_ &= -17;
                this.body_ = ByteString.EMPTY;
                this.bitField0_ &= -33;
                this.bodyType_ = 0;
                this.bitField0_ &= -65;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_SendGroupMsgRequest_descriptor;
            }

            public SendGroupMsgRequest getDefaultInstanceForType() {
                return SendGroupMsgRequest.getDefaultInstance();
            }

            public SendGroupMsgRequest build() {
                SendGroupMsgRequest buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public SendGroupMsgRequest buildPartial() {
                int i = 1;
                SendGroupMsgRequest sendGroupMsgRequest = new SendGroupMsgRequest((com.google.protobuf.GeneratedMessage.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                sendGroupMsgRequest.appid_ = this.appid_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                sendGroupMsgRequest.toGgid_ = this.toGgid_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                sendGroupMsgRequest.fromGuid_ = this.fromGuid_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                sendGroupMsgRequest.fromMuid_ = this.fromMuid_;
                if ((i2 & 16) == 16) {
                    i |= 16;
                }
                sendGroupMsgRequest.msgId_ = this.msgId_;
                if ((i2 & 32) == 32) {
                    i |= 32;
                }
                sendGroupMsgRequest.body_ = this.body_;
                if ((i2 & 64) == 64) {
                    i |= 64;
                }
                sendGroupMsgRequest.bodyType_ = this.bodyType_;
                sendGroupMsgRequest.bitField0_ = i;
                onBuilt();
                return sendGroupMsgRequest;
            }

            public Builder mergeFrom(com.google.protobuf.Message message) {
                if (message instanceof SendGroupMsgRequest) {
                    return mergeFrom((SendGroupMsgRequest) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(SendGroupMsgRequest sendGroupMsgRequest) {
                if (sendGroupMsgRequest != SendGroupMsgRequest.getDefaultInstance()) {
                    if (sendGroupMsgRequest.hasAppid()) {
                        setAppid(sendGroupMsgRequest.getAppid());
                    }
                    if (sendGroupMsgRequest.hasToGgid()) {
                        this.bitField0_ |= 2;
                        this.toGgid_ = sendGroupMsgRequest.toGgid_;
                        onChanged();
                    }
                    if (sendGroupMsgRequest.hasFromGuid()) {
                        this.bitField0_ |= 4;
                        this.fromGuid_ = sendGroupMsgRequest.fromGuid_;
                        onChanged();
                    }
                    if (sendGroupMsgRequest.hasFromMuid()) {
                        setFromMuid(sendGroupMsgRequest.getFromMuid());
                    }
                    if (sendGroupMsgRequest.hasMsgId()) {
                        setMsgId(sendGroupMsgRequest.getMsgId());
                    }
                    if (sendGroupMsgRequest.hasBody()) {
                        setBody(sendGroupMsgRequest.getBody());
                    }
                    if (sendGroupMsgRequest.hasBodyType()) {
                        setBodyType(sendGroupMsgRequest.getBodyType());
                    }
                    mergeUnknownFields(sendGroupMsgRequest.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasAppid() && hasToGgid() && hasFromGuid() && hasBody()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                SendGroupMsgRequest sendGroupMsgRequest;
                SendGroupMsgRequest sendGroupMsgRequest2;
                try {
                    SendGroupMsgRequest sendGroupMsgRequest3 = (SendGroupMsgRequest) SendGroupMsgRequest.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (sendGroupMsgRequest3 != null) {
                        mergeFrom(sendGroupMsgRequest3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    sendGroupMsgRequest2 = (SendGroupMsgRequest) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    sendGroupMsgRequest = sendGroupMsgRequest2;
                    th = th2;
                }
                if (sendGroupMsgRequest != null) {
                    mergeFrom(sendGroupMsgRequest);
                }
                throw th;
            }

            public boolean hasAppid() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getAppid() {
                return this.appid_;
            }

            public Builder setAppid(int i) {
                this.bitField0_ |= 1;
                this.appid_ = i;
                onChanged();
                return this;
            }

            public Builder clearAppid() {
                this.bitField0_ &= -2;
                this.appid_ = 0;
                onChanged();
                return this;
            }

            public boolean hasToGgid() {
                return (this.bitField0_ & 2) == 2;
            }

            public String getToGgid() {
                Object obj = this.toGgid_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.toGgid_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getToGgidBytes() {
                Object obj = this.toGgid_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.toGgid_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setToGgid(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.toGgid_ = str;
                onChanged();
                return this;
            }

            public Builder clearToGgid() {
                this.bitField0_ &= -3;
                this.toGgid_ = SendGroupMsgRequest.getDefaultInstance().getToGgid();
                onChanged();
                return this;
            }

            public Builder setToGgidBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.toGgid_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasFromGuid() {
                return (this.bitField0_ & 4) == 4;
            }

            public String getFromGuid() {
                Object obj = this.fromGuid_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.fromGuid_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getFromGuidBytes() {
                Object obj = this.fromGuid_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.fromGuid_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setFromGuid(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.fromGuid_ = str;
                onChanged();
                return this;
            }

            public Builder clearFromGuid() {
                this.bitField0_ &= -5;
                this.fromGuid_ = SendGroupMsgRequest.getDefaultInstance().getFromGuid();
                onChanged();
                return this;
            }

            public Builder setFromGuidBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.fromGuid_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasFromMuid() {
                return (this.bitField0_ & 8) == 8;
            }

            public long getFromMuid() {
                return this.fromMuid_;
            }

            public Builder setFromMuid(long j) {
                this.bitField0_ |= 8;
                this.fromMuid_ = j;
                onChanged();
                return this;
            }

            public Builder clearFromMuid() {
                this.bitField0_ &= -9;
                this.fromMuid_ = 0;
                onChanged();
                return this;
            }

            public boolean hasMsgId() {
                return (this.bitField0_ & 16) == 16;
            }

            public long getMsgId() {
                return this.msgId_;
            }

            public Builder setMsgId(long j) {
                this.bitField0_ |= 16;
                this.msgId_ = j;
                onChanged();
                return this;
            }

            public Builder clearMsgId() {
                this.bitField0_ &= -17;
                this.msgId_ = 0;
                onChanged();
                return this;
            }

            public boolean hasBody() {
                return (this.bitField0_ & 32) == 32;
            }

            public ByteString getBody() {
                return this.body_;
            }

            public Builder setBody(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 32;
                this.body_ = byteString;
                onChanged();
                return this;
            }

            public Builder clearBody() {
                this.bitField0_ &= -33;
                this.body_ = SendGroupMsgRequest.getDefaultInstance().getBody();
                onChanged();
                return this;
            }

            public boolean hasBodyType() {
                return (this.bitField0_ & 64) == 64;
            }

            public int getBodyType() {
                return this.bodyType_;
            }

            public Builder setBodyType(int i) {
                this.bitField0_ |= 64;
                this.bodyType_ = i;
                onChanged();
                return this;
            }

            public Builder clearBodyType() {
                this.bitField0_ &= -65;
                this.bodyType_ = 0;
                onChanged();
                return this;
            }
        }

        private SendGroupMsgRequest(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private SendGroupMsgRequest(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static SendGroupMsgRequest getDefaultInstance() {
            return defaultInstance;
        }

        public SendGroupMsgRequest getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private SendGroupMsgRequest(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.appid_ = codedInputStream.readUInt32();
                            break;
                        case 18:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 2;
                            this.toGgid_ = readBytes;
                            break;
                        case 26:
                            ByteString readBytes2 = codedInputStream.readBytes();
                            this.bitField0_ |= 4;
                            this.fromGuid_ = readBytes2;
                            break;
                        case 32:
                            this.bitField0_ |= 8;
                            this.fromMuid_ = codedInputStream.readUInt64();
                            break;
                        case 40:
                            this.bitField0_ |= 16;
                            this.msgId_ = codedInputStream.readUInt64();
                            break;
                        case 50:
                            this.bitField0_ |= 32;
                            this.body_ = codedInputStream.readBytes();
                            break;
                        case 56:
                            this.bitField0_ |= 64;
                            this.bodyType_ = codedInputStream.readUInt32();
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
            return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_SendGroupMsgRequest_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_SendGroupMsgRequest_fieldAccessorTable.ensureFieldAccessorsInitialized(SendGroupMsgRequest.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<SendGroupMsgRequest> getParserForType() {
            return PARSER;
        }

        public boolean hasAppid() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getAppid() {
            return this.appid_;
        }

        public boolean hasToGgid() {
            return (this.bitField0_ & 2) == 2;
        }

        public String getToGgid() {
            Object obj = this.toGgid_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.toGgid_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getToGgidBytes() {
            Object obj = this.toGgid_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.toGgid_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasFromGuid() {
            return (this.bitField0_ & 4) == 4;
        }

        public String getFromGuid() {
            Object obj = this.fromGuid_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.fromGuid_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getFromGuidBytes() {
            Object obj = this.fromGuid_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.fromGuid_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasFromMuid() {
            return (this.bitField0_ & 8) == 8;
        }

        public long getFromMuid() {
            return this.fromMuid_;
        }

        public boolean hasMsgId() {
            return (this.bitField0_ & 16) == 16;
        }

        public long getMsgId() {
            return this.msgId_;
        }

        public boolean hasBody() {
            return (this.bitField0_ & 32) == 32;
        }

        public ByteString getBody() {
            return this.body_;
        }

        public boolean hasBodyType() {
            return (this.bitField0_ & 64) == 64;
        }

        public int getBodyType() {
            return this.bodyType_;
        }

        private void initFields() {
            this.appid_ = 0;
            this.toGgid_ = "";
            this.fromGuid_ = "";
            this.fromMuid_ = 0;
            this.msgId_ = 0;
            this.body_ = ByteString.EMPTY;
            this.bodyType_ = 0;
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasAppid()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasToGgid()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasFromGuid()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasBody()) {
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
                codedOutputStream.writeUInt32(1, this.appid_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeBytes(2, getToGgidBytes());
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBytes(3, getFromGuidBytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeUInt64(4, this.fromMuid_);
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeUInt64(5, this.msgId_);
            }
            if ((this.bitField0_ & 32) == 32) {
                codedOutputStream.writeBytes(6, this.body_);
            }
            if ((this.bitField0_ & 64) == 64) {
                codedOutputStream.writeUInt32(7, this.bodyType_);
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
                i2 = 0 + CodedOutputStream.computeUInt32Size(1, this.appid_);
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeBytesSize(2, getToGgidBytes());
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeBytesSize(3, getFromGuidBytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeUInt64Size(4, this.fromMuid_);
            }
            if ((this.bitField0_ & 16) == 16) {
                i2 += CodedOutputStream.computeUInt64Size(5, this.msgId_);
            }
            if ((this.bitField0_ & 32) == 32) {
                i2 += CodedOutputStream.computeBytesSize(6, this.body_);
            }
            if ((this.bitField0_ & 64) == 64) {
                i2 += CodedOutputStream.computeUInt32Size(7, this.bodyType_);
            }
            int serializedSize = i2 + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static SendGroupMsgRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (SendGroupMsgRequest) PARSER.parseFrom(byteString);
        }

        public static SendGroupMsgRequest parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SendGroupMsgRequest) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static SendGroupMsgRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (SendGroupMsgRequest) PARSER.parseFrom(bArr);
        }

        public static SendGroupMsgRequest parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SendGroupMsgRequest) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static SendGroupMsgRequest parseFrom(InputStream inputStream) throws IOException {
            return (SendGroupMsgRequest) PARSER.parseFrom(inputStream);
        }

        public static SendGroupMsgRequest parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SendGroupMsgRequest) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static SendGroupMsgRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (SendGroupMsgRequest) PARSER.parseDelimitedFrom(inputStream);
        }

        public static SendGroupMsgRequest parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SendGroupMsgRequest) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static SendGroupMsgRequest parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (SendGroupMsgRequest) PARSER.parseFrom(codedInputStream);
        }

        public static SendGroupMsgRequest parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SendGroupMsgRequest) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(SendGroupMsgRequest sendGroupMsgRequest) {
            return newBuilder().mergeFrom(sendGroupMsgRequest);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface SendGroupMsgRequestOrBuilder extends com.google.protobuf.MessageOrBuilder {
        int getAppid();

        ByteString getBody();

        int getBodyType();

        String getFromGuid();

        ByteString getFromGuidBytes();

        long getFromMuid();

        long getMsgId();

        String getToGgid();

        ByteString getToGgidBytes();

        boolean hasAppid();

        boolean hasBody();

        boolean hasBodyType();

        boolean hasFromGuid();

        boolean hasFromMuid();

        boolean hasMsgId();

        boolean hasToGgid();
    }

    public static final class SendGroupMsgResponse extends GeneratedMessage implements SendGroupMsgResponseOrBuilder {
        public static final int APPID_FIELD_NUMBER = 1;
        public static final int FROMGUID_FIELD_NUMBER = 3;
        public static final int FROMMUID_FIELD_NUMBER = 4;
        public static final int MSGID_FIELD_NUMBER = 7;
        public static final int MSGSEQ_FIELD_NUMBER = 8;
        public static Parser<SendGroupMsgResponse> PARSER = new AbstractParser<SendGroupMsgResponse>() {
            public SendGroupMsgResponse parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new SendGroupMsgResponse(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int RETCODE_FIELD_NUMBER = 2;
        public static final int SENTTIME_FIELD_NUMBER = 9;
        public static final int TARGETGGID_FIELD_NUMBER = 5;
        public static final int TARGETMGID_FIELD_NUMBER = 6;
        private static final SendGroupMsgResponse defaultInstance = new SendGroupMsgResponse(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int appid_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public Object fromGuid_;
        /* access modifiers changed from: private */
        public long fromMuid_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public long msgId_;
        /* access modifiers changed from: private */
        public long msgSeq_;
        /* access modifiers changed from: private */
        public int retCode_;
        /* access modifiers changed from: private */
        public int sentTime_;
        /* access modifiers changed from: private */
        public Object targetGgid_;
        /* access modifiers changed from: private */
        public long targetMgid_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements SendGroupMsgResponseOrBuilder {
            private int appid_;
            private int bitField0_;
            private Object fromGuid_;
            private long fromMuid_;
            private long msgId_;
            private long msgSeq_;
            private int retCode_;
            private int sentTime_;
            private Object targetGgid_;
            private long targetMgid_;

            public static final Descriptor getDescriptor() {
                return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_SendGroupMsgResponse_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_SendGroupMsgResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(SendGroupMsgResponse.class, Builder.class);
            }

            private Builder() {
                this.fromGuid_ = "";
                this.targetGgid_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.fromGuid_ = "";
                this.targetGgid_ = "";
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (SendGroupMsgResponse.alwaysUseFieldBuilders) {
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.appid_ = 0;
                this.bitField0_ &= -2;
                this.retCode_ = 0;
                this.bitField0_ &= -3;
                this.fromGuid_ = "";
                this.bitField0_ &= -5;
                this.fromMuid_ = 0;
                this.bitField0_ &= -9;
                this.targetGgid_ = "";
                this.bitField0_ &= -17;
                this.targetMgid_ = 0;
                this.bitField0_ &= -33;
                this.msgId_ = 0;
                this.bitField0_ &= -65;
                this.msgSeq_ = 0;
                this.bitField0_ &= -129;
                this.sentTime_ = 0;
                this.bitField0_ &= -257;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_SendGroupMsgResponse_descriptor;
            }

            public SendGroupMsgResponse getDefaultInstanceForType() {
                return SendGroupMsgResponse.getDefaultInstance();
            }

            public SendGroupMsgResponse build() {
                SendGroupMsgResponse buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public SendGroupMsgResponse buildPartial() {
                int i = 1;
                SendGroupMsgResponse sendGroupMsgResponse = new SendGroupMsgResponse((com.google.protobuf.GeneratedMessage.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                sendGroupMsgResponse.appid_ = this.appid_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                sendGroupMsgResponse.retCode_ = this.retCode_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                sendGroupMsgResponse.fromGuid_ = this.fromGuid_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                sendGroupMsgResponse.fromMuid_ = this.fromMuid_;
                if ((i2 & 16) == 16) {
                    i |= 16;
                }
                sendGroupMsgResponse.targetGgid_ = this.targetGgid_;
                if ((i2 & 32) == 32) {
                    i |= 32;
                }
                sendGroupMsgResponse.targetMgid_ = this.targetMgid_;
                if ((i2 & 64) == 64) {
                    i |= 64;
                }
                sendGroupMsgResponse.msgId_ = this.msgId_;
                if ((i2 & 128) == 128) {
                    i |= 128;
                }
                sendGroupMsgResponse.msgSeq_ = this.msgSeq_;
                if ((i2 & 256) == 256) {
                    i |= 256;
                }
                sendGroupMsgResponse.sentTime_ = this.sentTime_;
                sendGroupMsgResponse.bitField0_ = i;
                onBuilt();
                return sendGroupMsgResponse;
            }

            public Builder mergeFrom(com.google.protobuf.Message message) {
                if (message instanceof SendGroupMsgResponse) {
                    return mergeFrom((SendGroupMsgResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(SendGroupMsgResponse sendGroupMsgResponse) {
                if (sendGroupMsgResponse != SendGroupMsgResponse.getDefaultInstance()) {
                    if (sendGroupMsgResponse.hasAppid()) {
                        setAppid(sendGroupMsgResponse.getAppid());
                    }
                    if (sendGroupMsgResponse.hasRetCode()) {
                        setRetCode(sendGroupMsgResponse.getRetCode());
                    }
                    if (sendGroupMsgResponse.hasFromGuid()) {
                        this.bitField0_ |= 4;
                        this.fromGuid_ = sendGroupMsgResponse.fromGuid_;
                        onChanged();
                    }
                    if (sendGroupMsgResponse.hasFromMuid()) {
                        setFromMuid(sendGroupMsgResponse.getFromMuid());
                    }
                    if (sendGroupMsgResponse.hasTargetGgid()) {
                        this.bitField0_ |= 16;
                        this.targetGgid_ = sendGroupMsgResponse.targetGgid_;
                        onChanged();
                    }
                    if (sendGroupMsgResponse.hasTargetMgid()) {
                        setTargetMgid(sendGroupMsgResponse.getTargetMgid());
                    }
                    if (sendGroupMsgResponse.hasMsgId()) {
                        setMsgId(sendGroupMsgResponse.getMsgId());
                    }
                    if (sendGroupMsgResponse.hasMsgSeq()) {
                        setMsgSeq(sendGroupMsgResponse.getMsgSeq());
                    }
                    if (sendGroupMsgResponse.hasSentTime()) {
                        setSentTime(sendGroupMsgResponse.getSentTime());
                    }
                    mergeUnknownFields(sendGroupMsgResponse.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasAppid() && hasRetCode() && hasFromGuid() && hasTargetGgid()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                SendGroupMsgResponse sendGroupMsgResponse;
                SendGroupMsgResponse sendGroupMsgResponse2;
                try {
                    SendGroupMsgResponse sendGroupMsgResponse3 = (SendGroupMsgResponse) SendGroupMsgResponse.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (sendGroupMsgResponse3 != null) {
                        mergeFrom(sendGroupMsgResponse3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    sendGroupMsgResponse2 = (SendGroupMsgResponse) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    sendGroupMsgResponse = sendGroupMsgResponse2;
                    th = th2;
                }
                if (sendGroupMsgResponse != null) {
                    mergeFrom(sendGroupMsgResponse);
                }
                throw th;
            }

            public boolean hasAppid() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getAppid() {
                return this.appid_;
            }

            public Builder setAppid(int i) {
                this.bitField0_ |= 1;
                this.appid_ = i;
                onChanged();
                return this;
            }

            public Builder clearAppid() {
                this.bitField0_ &= -2;
                this.appid_ = 0;
                onChanged();
                return this;
            }

            public boolean hasRetCode() {
                return (this.bitField0_ & 2) == 2;
            }

            public int getRetCode() {
                return this.retCode_;
            }

            public Builder setRetCode(int i) {
                this.bitField0_ |= 2;
                this.retCode_ = i;
                onChanged();
                return this;
            }

            public Builder clearRetCode() {
                this.bitField0_ &= -3;
                this.retCode_ = 0;
                onChanged();
                return this;
            }

            public boolean hasFromGuid() {
                return (this.bitField0_ & 4) == 4;
            }

            public String getFromGuid() {
                Object obj = this.fromGuid_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.fromGuid_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getFromGuidBytes() {
                Object obj = this.fromGuid_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.fromGuid_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setFromGuid(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.fromGuid_ = str;
                onChanged();
                return this;
            }

            public Builder clearFromGuid() {
                this.bitField0_ &= -5;
                this.fromGuid_ = SendGroupMsgResponse.getDefaultInstance().getFromGuid();
                onChanged();
                return this;
            }

            public Builder setFromGuidBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.fromGuid_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasFromMuid() {
                return (this.bitField0_ & 8) == 8;
            }

            public long getFromMuid() {
                return this.fromMuid_;
            }

            public Builder setFromMuid(long j) {
                this.bitField0_ |= 8;
                this.fromMuid_ = j;
                onChanged();
                return this;
            }

            public Builder clearFromMuid() {
                this.bitField0_ &= -9;
                this.fromMuid_ = 0;
                onChanged();
                return this;
            }

            public boolean hasTargetGgid() {
                return (this.bitField0_ & 16) == 16;
            }

            public String getTargetGgid() {
                Object obj = this.targetGgid_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.targetGgid_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getTargetGgidBytes() {
                Object obj = this.targetGgid_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.targetGgid_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setTargetGgid(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 16;
                this.targetGgid_ = str;
                onChanged();
                return this;
            }

            public Builder clearTargetGgid() {
                this.bitField0_ &= -17;
                this.targetGgid_ = SendGroupMsgResponse.getDefaultInstance().getTargetGgid();
                onChanged();
                return this;
            }

            public Builder setTargetGgidBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 16;
                this.targetGgid_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasTargetMgid() {
                return (this.bitField0_ & 32) == 32;
            }

            public long getTargetMgid() {
                return this.targetMgid_;
            }

            public Builder setTargetMgid(long j) {
                this.bitField0_ |= 32;
                this.targetMgid_ = j;
                onChanged();
                return this;
            }

            public Builder clearTargetMgid() {
                this.bitField0_ &= -33;
                this.targetMgid_ = 0;
                onChanged();
                return this;
            }

            public boolean hasMsgId() {
                return (this.bitField0_ & 64) == 64;
            }

            public long getMsgId() {
                return this.msgId_;
            }

            public Builder setMsgId(long j) {
                this.bitField0_ |= 64;
                this.msgId_ = j;
                onChanged();
                return this;
            }

            public Builder clearMsgId() {
                this.bitField0_ &= -65;
                this.msgId_ = 0;
                onChanged();
                return this;
            }

            public boolean hasMsgSeq() {
                return (this.bitField0_ & 128) == 128;
            }

            public long getMsgSeq() {
                return this.msgSeq_;
            }

            public Builder setMsgSeq(long j) {
                this.bitField0_ |= 128;
                this.msgSeq_ = j;
                onChanged();
                return this;
            }

            public Builder clearMsgSeq() {
                this.bitField0_ &= -129;
                this.msgSeq_ = 0;
                onChanged();
                return this;
            }

            public boolean hasSentTime() {
                return (this.bitField0_ & 256) == 256;
            }

            public int getSentTime() {
                return this.sentTime_;
            }

            public Builder setSentTime(int i) {
                this.bitField0_ |= 256;
                this.sentTime_ = i;
                onChanged();
                return this;
            }

            public Builder clearSentTime() {
                this.bitField0_ &= -257;
                this.sentTime_ = 0;
                onChanged();
                return this;
            }
        }

        private SendGroupMsgResponse(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private SendGroupMsgResponse(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static SendGroupMsgResponse getDefaultInstance() {
            return defaultInstance;
        }

        public SendGroupMsgResponse getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private SendGroupMsgResponse(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.appid_ = codedInputStream.readUInt32();
                            break;
                        case 16:
                            this.bitField0_ |= 2;
                            this.retCode_ = codedInputStream.readUInt32();
                            break;
                        case 26:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 4;
                            this.fromGuid_ = readBytes;
                            break;
                        case 32:
                            this.bitField0_ |= 8;
                            this.fromMuid_ = codedInputStream.readUInt64();
                            break;
                        case 42:
                            ByteString readBytes2 = codedInputStream.readBytes();
                            this.bitField0_ |= 16;
                            this.targetGgid_ = readBytes2;
                            break;
                        case 48:
                            this.bitField0_ |= 32;
                            this.targetMgid_ = codedInputStream.readUInt64();
                            break;
                        case 56:
                            this.bitField0_ |= 64;
                            this.msgId_ = codedInputStream.readUInt64();
                            break;
                        case 64:
                            this.bitField0_ |= 128;
                            this.msgSeq_ = codedInputStream.readUInt64();
                            break;
                        case 72:
                            this.bitField0_ |= 256;
                            this.sentTime_ = codedInputStream.readUInt32();
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
            return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_SendGroupMsgResponse_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_SendGroupMsgResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(SendGroupMsgResponse.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<SendGroupMsgResponse> getParserForType() {
            return PARSER;
        }

        public boolean hasAppid() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getAppid() {
            return this.appid_;
        }

        public boolean hasRetCode() {
            return (this.bitField0_ & 2) == 2;
        }

        public int getRetCode() {
            return this.retCode_;
        }

        public boolean hasFromGuid() {
            return (this.bitField0_ & 4) == 4;
        }

        public String getFromGuid() {
            Object obj = this.fromGuid_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.fromGuid_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getFromGuidBytes() {
            Object obj = this.fromGuid_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.fromGuid_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasFromMuid() {
            return (this.bitField0_ & 8) == 8;
        }

        public long getFromMuid() {
            return this.fromMuid_;
        }

        public boolean hasTargetGgid() {
            return (this.bitField0_ & 16) == 16;
        }

        public String getTargetGgid() {
            Object obj = this.targetGgid_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.targetGgid_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getTargetGgidBytes() {
            Object obj = this.targetGgid_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.targetGgid_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasTargetMgid() {
            return (this.bitField0_ & 32) == 32;
        }

        public long getTargetMgid() {
            return this.targetMgid_;
        }

        public boolean hasMsgId() {
            return (this.bitField0_ & 64) == 64;
        }

        public long getMsgId() {
            return this.msgId_;
        }

        public boolean hasMsgSeq() {
            return (this.bitField0_ & 128) == 128;
        }

        public long getMsgSeq() {
            return this.msgSeq_;
        }

        public boolean hasSentTime() {
            return (this.bitField0_ & 256) == 256;
        }

        public int getSentTime() {
            return this.sentTime_;
        }

        private void initFields() {
            this.appid_ = 0;
            this.retCode_ = 0;
            this.fromGuid_ = "";
            this.fromMuid_ = 0;
            this.targetGgid_ = "";
            this.targetMgid_ = 0;
            this.msgId_ = 0;
            this.msgSeq_ = 0;
            this.sentTime_ = 0;
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasAppid()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasRetCode()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasFromGuid()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasTargetGgid()) {
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
                codedOutputStream.writeUInt32(1, this.appid_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeUInt32(2, this.retCode_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBytes(3, getFromGuidBytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeUInt64(4, this.fromMuid_);
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeBytes(5, getTargetGgidBytes());
            }
            if ((this.bitField0_ & 32) == 32) {
                codedOutputStream.writeUInt64(6, this.targetMgid_);
            }
            if ((this.bitField0_ & 64) == 64) {
                codedOutputStream.writeUInt64(7, this.msgId_);
            }
            if ((this.bitField0_ & 128) == 128) {
                codedOutputStream.writeUInt64(8, this.msgSeq_);
            }
            if ((this.bitField0_ & 256) == 256) {
                codedOutputStream.writeUInt32(9, this.sentTime_);
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
                i2 = 0 + CodedOutputStream.computeUInt32Size(1, this.appid_);
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeUInt32Size(2, this.retCode_);
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeBytesSize(3, getFromGuidBytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeUInt64Size(4, this.fromMuid_);
            }
            if ((this.bitField0_ & 16) == 16) {
                i2 += CodedOutputStream.computeBytesSize(5, getTargetGgidBytes());
            }
            if ((this.bitField0_ & 32) == 32) {
                i2 += CodedOutputStream.computeUInt64Size(6, this.targetMgid_);
            }
            if ((this.bitField0_ & 64) == 64) {
                i2 += CodedOutputStream.computeUInt64Size(7, this.msgId_);
            }
            if ((this.bitField0_ & 128) == 128) {
                i2 += CodedOutputStream.computeUInt64Size(8, this.msgSeq_);
            }
            if ((this.bitField0_ & 256) == 256) {
                i2 += CodedOutputStream.computeUInt32Size(9, this.sentTime_);
            }
            int serializedSize = i2 + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static SendGroupMsgResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (SendGroupMsgResponse) PARSER.parseFrom(byteString);
        }

        public static SendGroupMsgResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SendGroupMsgResponse) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static SendGroupMsgResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (SendGroupMsgResponse) PARSER.parseFrom(bArr);
        }

        public static SendGroupMsgResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SendGroupMsgResponse) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static SendGroupMsgResponse parseFrom(InputStream inputStream) throws IOException {
            return (SendGroupMsgResponse) PARSER.parseFrom(inputStream);
        }

        public static SendGroupMsgResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SendGroupMsgResponse) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static SendGroupMsgResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (SendGroupMsgResponse) PARSER.parseDelimitedFrom(inputStream);
        }

        public static SendGroupMsgResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SendGroupMsgResponse) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static SendGroupMsgResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (SendGroupMsgResponse) PARSER.parseFrom(codedInputStream);
        }

        public static SendGroupMsgResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SendGroupMsgResponse) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(SendGroupMsgResponse sendGroupMsgResponse) {
            return newBuilder().mergeFrom(sendGroupMsgResponse);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface SendGroupMsgResponseOrBuilder extends com.google.protobuf.MessageOrBuilder {
        int getAppid();

        String getFromGuid();

        ByteString getFromGuidBytes();

        long getFromMuid();

        long getMsgId();

        long getMsgSeq();

        int getRetCode();

        int getSentTime();

        String getTargetGgid();

        ByteString getTargetGgidBytes();

        long getTargetMgid();

        boolean hasAppid();

        boolean hasFromGuid();

        boolean hasFromMuid();

        boolean hasMsgId();

        boolean hasMsgSeq();

        boolean hasRetCode();

        boolean hasSentTime();

        boolean hasTargetGgid();

        boolean hasTargetMgid();
    }

    public static final class SendRoomMsgRequest extends GeneratedMessage implements SendRoomMsgRequestOrBuilder {
        public static final int APPID_FIELD_NUMBER = 1;
        public static final int BODYTYPE_FIELD_NUMBER = 7;
        public static final int BODY_FIELD_NUMBER = 6;
        public static final int FROMGUID_FIELD_NUMBER = 3;
        public static final int FROMMUID_FIELD_NUMBER = 4;
        public static final int MSGID_FIELD_NUMBER = 5;
        public static Parser<SendRoomMsgRequest> PARSER = new AbstractParser<SendRoomMsgRequest>() {
            public SendRoomMsgRequest parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new SendRoomMsgRequest(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int TOGRID_FIELD_NUMBER = 2;
        private static final SendRoomMsgRequest defaultInstance = new SendRoomMsgRequest(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int appid_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public int bodyType_;
        /* access modifiers changed from: private */
        public ByteString body_;
        /* access modifiers changed from: private */
        public Object fromGuid_;
        /* access modifiers changed from: private */
        public long fromMuid_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public long msgId_;
        /* access modifiers changed from: private */
        public Object toGrid_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements SendRoomMsgRequestOrBuilder {
            private int appid_;
            private int bitField0_;
            private int bodyType_;
            private ByteString body_;
            private Object fromGuid_;
            private long fromMuid_;
            private long msgId_;
            private Object toGrid_;

            public static final Descriptor getDescriptor() {
                return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_SendRoomMsgRequest_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_SendRoomMsgRequest_fieldAccessorTable.ensureFieldAccessorsInitialized(SendRoomMsgRequest.class, Builder.class);
            }

            private Builder() {
                this.toGrid_ = "";
                this.fromGuid_ = "";
                this.body_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.toGrid_ = "";
                this.fromGuid_ = "";
                this.body_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (SendRoomMsgRequest.alwaysUseFieldBuilders) {
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.appid_ = 0;
                this.bitField0_ &= -2;
                this.toGrid_ = "";
                this.bitField0_ &= -3;
                this.fromGuid_ = "";
                this.bitField0_ &= -5;
                this.fromMuid_ = 0;
                this.bitField0_ &= -9;
                this.msgId_ = 0;
                this.bitField0_ &= -17;
                this.body_ = ByteString.EMPTY;
                this.bitField0_ &= -33;
                this.bodyType_ = 0;
                this.bitField0_ &= -65;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_SendRoomMsgRequest_descriptor;
            }

            public SendRoomMsgRequest getDefaultInstanceForType() {
                return SendRoomMsgRequest.getDefaultInstance();
            }

            public SendRoomMsgRequest build() {
                SendRoomMsgRequest buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public SendRoomMsgRequest buildPartial() {
                int i = 1;
                SendRoomMsgRequest sendRoomMsgRequest = new SendRoomMsgRequest((com.google.protobuf.GeneratedMessage.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                sendRoomMsgRequest.appid_ = this.appid_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                sendRoomMsgRequest.toGrid_ = this.toGrid_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                sendRoomMsgRequest.fromGuid_ = this.fromGuid_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                sendRoomMsgRequest.fromMuid_ = this.fromMuid_;
                if ((i2 & 16) == 16) {
                    i |= 16;
                }
                sendRoomMsgRequest.msgId_ = this.msgId_;
                if ((i2 & 32) == 32) {
                    i |= 32;
                }
                sendRoomMsgRequest.body_ = this.body_;
                if ((i2 & 64) == 64) {
                    i |= 64;
                }
                sendRoomMsgRequest.bodyType_ = this.bodyType_;
                sendRoomMsgRequest.bitField0_ = i;
                onBuilt();
                return sendRoomMsgRequest;
            }

            public Builder mergeFrom(com.google.protobuf.Message message) {
                if (message instanceof SendRoomMsgRequest) {
                    return mergeFrom((SendRoomMsgRequest) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(SendRoomMsgRequest sendRoomMsgRequest) {
                if (sendRoomMsgRequest != SendRoomMsgRequest.getDefaultInstance()) {
                    if (sendRoomMsgRequest.hasAppid()) {
                        setAppid(sendRoomMsgRequest.getAppid());
                    }
                    if (sendRoomMsgRequest.hasToGrid()) {
                        this.bitField0_ |= 2;
                        this.toGrid_ = sendRoomMsgRequest.toGrid_;
                        onChanged();
                    }
                    if (sendRoomMsgRequest.hasFromGuid()) {
                        this.bitField0_ |= 4;
                        this.fromGuid_ = sendRoomMsgRequest.fromGuid_;
                        onChanged();
                    }
                    if (sendRoomMsgRequest.hasFromMuid()) {
                        setFromMuid(sendRoomMsgRequest.getFromMuid());
                    }
                    if (sendRoomMsgRequest.hasMsgId()) {
                        setMsgId(sendRoomMsgRequest.getMsgId());
                    }
                    if (sendRoomMsgRequest.hasBody()) {
                        setBody(sendRoomMsgRequest.getBody());
                    }
                    if (sendRoomMsgRequest.hasBodyType()) {
                        setBodyType(sendRoomMsgRequest.getBodyType());
                    }
                    mergeUnknownFields(sendRoomMsgRequest.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasAppid() && hasToGrid() && hasFromGuid() && hasBody()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                SendRoomMsgRequest sendRoomMsgRequest;
                SendRoomMsgRequest sendRoomMsgRequest2;
                try {
                    SendRoomMsgRequest sendRoomMsgRequest3 = (SendRoomMsgRequest) SendRoomMsgRequest.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (sendRoomMsgRequest3 != null) {
                        mergeFrom(sendRoomMsgRequest3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    sendRoomMsgRequest2 = (SendRoomMsgRequest) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    sendRoomMsgRequest = sendRoomMsgRequest2;
                    th = th2;
                }
                if (sendRoomMsgRequest != null) {
                    mergeFrom(sendRoomMsgRequest);
                }
                throw th;
            }

            public boolean hasAppid() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getAppid() {
                return this.appid_;
            }

            public Builder setAppid(int i) {
                this.bitField0_ |= 1;
                this.appid_ = i;
                onChanged();
                return this;
            }

            public Builder clearAppid() {
                this.bitField0_ &= -2;
                this.appid_ = 0;
                onChanged();
                return this;
            }

            public boolean hasToGrid() {
                return (this.bitField0_ & 2) == 2;
            }

            public String getToGrid() {
                Object obj = this.toGrid_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.toGrid_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getToGridBytes() {
                Object obj = this.toGrid_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.toGrid_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setToGrid(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.toGrid_ = str;
                onChanged();
                return this;
            }

            public Builder clearToGrid() {
                this.bitField0_ &= -3;
                this.toGrid_ = SendRoomMsgRequest.getDefaultInstance().getToGrid();
                onChanged();
                return this;
            }

            public Builder setToGridBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.toGrid_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasFromGuid() {
                return (this.bitField0_ & 4) == 4;
            }

            public String getFromGuid() {
                Object obj = this.fromGuid_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.fromGuid_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getFromGuidBytes() {
                Object obj = this.fromGuid_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.fromGuid_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setFromGuid(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.fromGuid_ = str;
                onChanged();
                return this;
            }

            public Builder clearFromGuid() {
                this.bitField0_ &= -5;
                this.fromGuid_ = SendRoomMsgRequest.getDefaultInstance().getFromGuid();
                onChanged();
                return this;
            }

            public Builder setFromGuidBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.fromGuid_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasFromMuid() {
                return (this.bitField0_ & 8) == 8;
            }

            public long getFromMuid() {
                return this.fromMuid_;
            }

            public Builder setFromMuid(long j) {
                this.bitField0_ |= 8;
                this.fromMuid_ = j;
                onChanged();
                return this;
            }

            public Builder clearFromMuid() {
                this.bitField0_ &= -9;
                this.fromMuid_ = 0;
                onChanged();
                return this;
            }

            public boolean hasMsgId() {
                return (this.bitField0_ & 16) == 16;
            }

            public long getMsgId() {
                return this.msgId_;
            }

            public Builder setMsgId(long j) {
                this.bitField0_ |= 16;
                this.msgId_ = j;
                onChanged();
                return this;
            }

            public Builder clearMsgId() {
                this.bitField0_ &= -17;
                this.msgId_ = 0;
                onChanged();
                return this;
            }

            public boolean hasBody() {
                return (this.bitField0_ & 32) == 32;
            }

            public ByteString getBody() {
                return this.body_;
            }

            public Builder setBody(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 32;
                this.body_ = byteString;
                onChanged();
                return this;
            }

            public Builder clearBody() {
                this.bitField0_ &= -33;
                this.body_ = SendRoomMsgRequest.getDefaultInstance().getBody();
                onChanged();
                return this;
            }

            public boolean hasBodyType() {
                return (this.bitField0_ & 64) == 64;
            }

            public int getBodyType() {
                return this.bodyType_;
            }

            public Builder setBodyType(int i) {
                this.bitField0_ |= 64;
                this.bodyType_ = i;
                onChanged();
                return this;
            }

            public Builder clearBodyType() {
                this.bitField0_ &= -65;
                this.bodyType_ = 0;
                onChanged();
                return this;
            }
        }

        private SendRoomMsgRequest(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private SendRoomMsgRequest(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static SendRoomMsgRequest getDefaultInstance() {
            return defaultInstance;
        }

        public SendRoomMsgRequest getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private SendRoomMsgRequest(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.appid_ = codedInputStream.readUInt32();
                            break;
                        case 18:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 2;
                            this.toGrid_ = readBytes;
                            break;
                        case 26:
                            ByteString readBytes2 = codedInputStream.readBytes();
                            this.bitField0_ |= 4;
                            this.fromGuid_ = readBytes2;
                            break;
                        case 32:
                            this.bitField0_ |= 8;
                            this.fromMuid_ = codedInputStream.readUInt64();
                            break;
                        case 40:
                            this.bitField0_ |= 16;
                            this.msgId_ = codedInputStream.readUInt64();
                            break;
                        case 50:
                            this.bitField0_ |= 32;
                            this.body_ = codedInputStream.readBytes();
                            break;
                        case 56:
                            this.bitField0_ |= 64;
                            this.bodyType_ = codedInputStream.readUInt32();
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
            return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_SendRoomMsgRequest_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_SendRoomMsgRequest_fieldAccessorTable.ensureFieldAccessorsInitialized(SendRoomMsgRequest.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<SendRoomMsgRequest> getParserForType() {
            return PARSER;
        }

        public boolean hasAppid() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getAppid() {
            return this.appid_;
        }

        public boolean hasToGrid() {
            return (this.bitField0_ & 2) == 2;
        }

        public String getToGrid() {
            Object obj = this.toGrid_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.toGrid_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getToGridBytes() {
            Object obj = this.toGrid_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.toGrid_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasFromGuid() {
            return (this.bitField0_ & 4) == 4;
        }

        public String getFromGuid() {
            Object obj = this.fromGuid_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.fromGuid_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getFromGuidBytes() {
            Object obj = this.fromGuid_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.fromGuid_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasFromMuid() {
            return (this.bitField0_ & 8) == 8;
        }

        public long getFromMuid() {
            return this.fromMuid_;
        }

        public boolean hasMsgId() {
            return (this.bitField0_ & 16) == 16;
        }

        public long getMsgId() {
            return this.msgId_;
        }

        public boolean hasBody() {
            return (this.bitField0_ & 32) == 32;
        }

        public ByteString getBody() {
            return this.body_;
        }

        public boolean hasBodyType() {
            return (this.bitField0_ & 64) == 64;
        }

        public int getBodyType() {
            return this.bodyType_;
        }

        private void initFields() {
            this.appid_ = 0;
            this.toGrid_ = "";
            this.fromGuid_ = "";
            this.fromMuid_ = 0;
            this.msgId_ = 0;
            this.body_ = ByteString.EMPTY;
            this.bodyType_ = 0;
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasAppid()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasToGrid()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasFromGuid()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasBody()) {
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
                codedOutputStream.writeUInt32(1, this.appid_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeBytes(2, getToGridBytes());
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBytes(3, getFromGuidBytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeUInt64(4, this.fromMuid_);
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeUInt64(5, this.msgId_);
            }
            if ((this.bitField0_ & 32) == 32) {
                codedOutputStream.writeBytes(6, this.body_);
            }
            if ((this.bitField0_ & 64) == 64) {
                codedOutputStream.writeUInt32(7, this.bodyType_);
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
                i2 = 0 + CodedOutputStream.computeUInt32Size(1, this.appid_);
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeBytesSize(2, getToGridBytes());
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeBytesSize(3, getFromGuidBytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeUInt64Size(4, this.fromMuid_);
            }
            if ((this.bitField0_ & 16) == 16) {
                i2 += CodedOutputStream.computeUInt64Size(5, this.msgId_);
            }
            if ((this.bitField0_ & 32) == 32) {
                i2 += CodedOutputStream.computeBytesSize(6, this.body_);
            }
            if ((this.bitField0_ & 64) == 64) {
                i2 += CodedOutputStream.computeUInt32Size(7, this.bodyType_);
            }
            int serializedSize = i2 + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static SendRoomMsgRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (SendRoomMsgRequest) PARSER.parseFrom(byteString);
        }

        public static SendRoomMsgRequest parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SendRoomMsgRequest) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static SendRoomMsgRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (SendRoomMsgRequest) PARSER.parseFrom(bArr);
        }

        public static SendRoomMsgRequest parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SendRoomMsgRequest) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static SendRoomMsgRequest parseFrom(InputStream inputStream) throws IOException {
            return (SendRoomMsgRequest) PARSER.parseFrom(inputStream);
        }

        public static SendRoomMsgRequest parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SendRoomMsgRequest) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static SendRoomMsgRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (SendRoomMsgRequest) PARSER.parseDelimitedFrom(inputStream);
        }

        public static SendRoomMsgRequest parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SendRoomMsgRequest) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static SendRoomMsgRequest parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (SendRoomMsgRequest) PARSER.parseFrom(codedInputStream);
        }

        public static SendRoomMsgRequest parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SendRoomMsgRequest) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(SendRoomMsgRequest sendRoomMsgRequest) {
            return newBuilder().mergeFrom(sendRoomMsgRequest);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface SendRoomMsgRequestOrBuilder extends com.google.protobuf.MessageOrBuilder {
        int getAppid();

        ByteString getBody();

        int getBodyType();

        String getFromGuid();

        ByteString getFromGuidBytes();

        long getFromMuid();

        long getMsgId();

        String getToGrid();

        ByteString getToGridBytes();

        boolean hasAppid();

        boolean hasBody();

        boolean hasBodyType();

        boolean hasFromGuid();

        boolean hasFromMuid();

        boolean hasMsgId();

        boolean hasToGrid();
    }

    public static final class SendRoomMsgResponse extends GeneratedMessage implements SendRoomMsgResponseOrBuilder {
        public static final int APPID_FIELD_NUMBER = 1;
        public static final int FROMGUID_FIELD_NUMBER = 3;
        public static final int FROMMUID_FIELD_NUMBER = 4;
        public static final int MSGID_FIELD_NUMBER = 7;
        public static final int MSGSEQ_FIELD_NUMBER = 8;
        public static Parser<SendRoomMsgResponse> PARSER = new AbstractParser<SendRoomMsgResponse>() {
            public SendRoomMsgResponse parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new SendRoomMsgResponse(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int RETCODE_FIELD_NUMBER = 2;
        public static final int SENTTIME_FIELD_NUMBER = 9;
        public static final int TARGETGRID_FIELD_NUMBER = 5;
        public static final int TARGETMRID_FIELD_NUMBER = 6;
        private static final SendRoomMsgResponse defaultInstance = new SendRoomMsgResponse(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int appid_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public Object fromGuid_;
        /* access modifiers changed from: private */
        public long fromMuid_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public long msgId_;
        /* access modifiers changed from: private */
        public long msgSeq_;
        /* access modifiers changed from: private */
        public int retCode_;
        /* access modifiers changed from: private */
        public int sentTime_;
        /* access modifiers changed from: private */
        public Object targetGrid_;
        /* access modifiers changed from: private */
        public long targetMrid_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements SendRoomMsgResponseOrBuilder {
            private int appid_;
            private int bitField0_;
            private Object fromGuid_;
            private long fromMuid_;
            private long msgId_;
            private long msgSeq_;
            private int retCode_;
            private int sentTime_;
            private Object targetGrid_;
            private long targetMrid_;

            public static final Descriptor getDescriptor() {
                return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_SendRoomMsgResponse_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_SendRoomMsgResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(SendRoomMsgResponse.class, Builder.class);
            }

            private Builder() {
                this.fromGuid_ = "";
                this.targetGrid_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.fromGuid_ = "";
                this.targetGrid_ = "";
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (SendRoomMsgResponse.alwaysUseFieldBuilders) {
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.appid_ = 0;
                this.bitField0_ &= -2;
                this.retCode_ = 0;
                this.bitField0_ &= -3;
                this.fromGuid_ = "";
                this.bitField0_ &= -5;
                this.fromMuid_ = 0;
                this.bitField0_ &= -9;
                this.targetGrid_ = "";
                this.bitField0_ &= -17;
                this.targetMrid_ = 0;
                this.bitField0_ &= -33;
                this.msgId_ = 0;
                this.bitField0_ &= -65;
                this.msgSeq_ = 0;
                this.bitField0_ &= -129;
                this.sentTime_ = 0;
                this.bitField0_ &= -257;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_SendRoomMsgResponse_descriptor;
            }

            public SendRoomMsgResponse getDefaultInstanceForType() {
                return SendRoomMsgResponse.getDefaultInstance();
            }

            public SendRoomMsgResponse build() {
                SendRoomMsgResponse buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public SendRoomMsgResponse buildPartial() {
                int i = 1;
                SendRoomMsgResponse sendRoomMsgResponse = new SendRoomMsgResponse((com.google.protobuf.GeneratedMessage.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                sendRoomMsgResponse.appid_ = this.appid_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                sendRoomMsgResponse.retCode_ = this.retCode_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                sendRoomMsgResponse.fromGuid_ = this.fromGuid_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                sendRoomMsgResponse.fromMuid_ = this.fromMuid_;
                if ((i2 & 16) == 16) {
                    i |= 16;
                }
                sendRoomMsgResponse.targetGrid_ = this.targetGrid_;
                if ((i2 & 32) == 32) {
                    i |= 32;
                }
                sendRoomMsgResponse.targetMrid_ = this.targetMrid_;
                if ((i2 & 64) == 64) {
                    i |= 64;
                }
                sendRoomMsgResponse.msgId_ = this.msgId_;
                if ((i2 & 128) == 128) {
                    i |= 128;
                }
                sendRoomMsgResponse.msgSeq_ = this.msgSeq_;
                if ((i2 & 256) == 256) {
                    i |= 256;
                }
                sendRoomMsgResponse.sentTime_ = this.sentTime_;
                sendRoomMsgResponse.bitField0_ = i;
                onBuilt();
                return sendRoomMsgResponse;
            }

            public Builder mergeFrom(com.google.protobuf.Message message) {
                if (message instanceof SendRoomMsgResponse) {
                    return mergeFrom((SendRoomMsgResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(SendRoomMsgResponse sendRoomMsgResponse) {
                if (sendRoomMsgResponse != SendRoomMsgResponse.getDefaultInstance()) {
                    if (sendRoomMsgResponse.hasAppid()) {
                        setAppid(sendRoomMsgResponse.getAppid());
                    }
                    if (sendRoomMsgResponse.hasRetCode()) {
                        setRetCode(sendRoomMsgResponse.getRetCode());
                    }
                    if (sendRoomMsgResponse.hasFromGuid()) {
                        this.bitField0_ |= 4;
                        this.fromGuid_ = sendRoomMsgResponse.fromGuid_;
                        onChanged();
                    }
                    if (sendRoomMsgResponse.hasFromMuid()) {
                        setFromMuid(sendRoomMsgResponse.getFromMuid());
                    }
                    if (sendRoomMsgResponse.hasTargetGrid()) {
                        this.bitField0_ |= 16;
                        this.targetGrid_ = sendRoomMsgResponse.targetGrid_;
                        onChanged();
                    }
                    if (sendRoomMsgResponse.hasTargetMrid()) {
                        setTargetMrid(sendRoomMsgResponse.getTargetMrid());
                    }
                    if (sendRoomMsgResponse.hasMsgId()) {
                        setMsgId(sendRoomMsgResponse.getMsgId());
                    }
                    if (sendRoomMsgResponse.hasMsgSeq()) {
                        setMsgSeq(sendRoomMsgResponse.getMsgSeq());
                    }
                    if (sendRoomMsgResponse.hasSentTime()) {
                        setSentTime(sendRoomMsgResponse.getSentTime());
                    }
                    mergeUnknownFields(sendRoomMsgResponse.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasAppid() && hasRetCode() && hasFromGuid() && hasTargetGrid()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                SendRoomMsgResponse sendRoomMsgResponse;
                SendRoomMsgResponse sendRoomMsgResponse2;
                try {
                    SendRoomMsgResponse sendRoomMsgResponse3 = (SendRoomMsgResponse) SendRoomMsgResponse.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (sendRoomMsgResponse3 != null) {
                        mergeFrom(sendRoomMsgResponse3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    sendRoomMsgResponse2 = (SendRoomMsgResponse) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    sendRoomMsgResponse = sendRoomMsgResponse2;
                    th = th2;
                }
                if (sendRoomMsgResponse != null) {
                    mergeFrom(sendRoomMsgResponse);
                }
                throw th;
            }

            public boolean hasAppid() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getAppid() {
                return this.appid_;
            }

            public Builder setAppid(int i) {
                this.bitField0_ |= 1;
                this.appid_ = i;
                onChanged();
                return this;
            }

            public Builder clearAppid() {
                this.bitField0_ &= -2;
                this.appid_ = 0;
                onChanged();
                return this;
            }

            public boolean hasRetCode() {
                return (this.bitField0_ & 2) == 2;
            }

            public int getRetCode() {
                return this.retCode_;
            }

            public Builder setRetCode(int i) {
                this.bitField0_ |= 2;
                this.retCode_ = i;
                onChanged();
                return this;
            }

            public Builder clearRetCode() {
                this.bitField0_ &= -3;
                this.retCode_ = 0;
                onChanged();
                return this;
            }

            public boolean hasFromGuid() {
                return (this.bitField0_ & 4) == 4;
            }

            public String getFromGuid() {
                Object obj = this.fromGuid_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.fromGuid_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getFromGuidBytes() {
                Object obj = this.fromGuid_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.fromGuid_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setFromGuid(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.fromGuid_ = str;
                onChanged();
                return this;
            }

            public Builder clearFromGuid() {
                this.bitField0_ &= -5;
                this.fromGuid_ = SendRoomMsgResponse.getDefaultInstance().getFromGuid();
                onChanged();
                return this;
            }

            public Builder setFromGuidBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.fromGuid_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasFromMuid() {
                return (this.bitField0_ & 8) == 8;
            }

            public long getFromMuid() {
                return this.fromMuid_;
            }

            public Builder setFromMuid(long j) {
                this.bitField0_ |= 8;
                this.fromMuid_ = j;
                onChanged();
                return this;
            }

            public Builder clearFromMuid() {
                this.bitField0_ &= -9;
                this.fromMuid_ = 0;
                onChanged();
                return this;
            }

            public boolean hasTargetGrid() {
                return (this.bitField0_ & 16) == 16;
            }

            public String getTargetGrid() {
                Object obj = this.targetGrid_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.targetGrid_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getTargetGridBytes() {
                Object obj = this.targetGrid_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.targetGrid_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setTargetGrid(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 16;
                this.targetGrid_ = str;
                onChanged();
                return this;
            }

            public Builder clearTargetGrid() {
                this.bitField0_ &= -17;
                this.targetGrid_ = SendRoomMsgResponse.getDefaultInstance().getTargetGrid();
                onChanged();
                return this;
            }

            public Builder setTargetGridBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 16;
                this.targetGrid_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasTargetMrid() {
                return (this.bitField0_ & 32) == 32;
            }

            public long getTargetMrid() {
                return this.targetMrid_;
            }

            public Builder setTargetMrid(long j) {
                this.bitField0_ |= 32;
                this.targetMrid_ = j;
                onChanged();
                return this;
            }

            public Builder clearTargetMrid() {
                this.bitField0_ &= -33;
                this.targetMrid_ = 0;
                onChanged();
                return this;
            }

            public boolean hasMsgId() {
                return (this.bitField0_ & 64) == 64;
            }

            public long getMsgId() {
                return this.msgId_;
            }

            public Builder setMsgId(long j) {
                this.bitField0_ |= 64;
                this.msgId_ = j;
                onChanged();
                return this;
            }

            public Builder clearMsgId() {
                this.bitField0_ &= -65;
                this.msgId_ = 0;
                onChanged();
                return this;
            }

            public boolean hasMsgSeq() {
                return (this.bitField0_ & 128) == 128;
            }

            public long getMsgSeq() {
                return this.msgSeq_;
            }

            public Builder setMsgSeq(long j) {
                this.bitField0_ |= 128;
                this.msgSeq_ = j;
                onChanged();
                return this;
            }

            public Builder clearMsgSeq() {
                this.bitField0_ &= -129;
                this.msgSeq_ = 0;
                onChanged();
                return this;
            }

            public boolean hasSentTime() {
                return (this.bitField0_ & 256) == 256;
            }

            public int getSentTime() {
                return this.sentTime_;
            }

            public Builder setSentTime(int i) {
                this.bitField0_ |= 256;
                this.sentTime_ = i;
                onChanged();
                return this;
            }

            public Builder clearSentTime() {
                this.bitField0_ &= -257;
                this.sentTime_ = 0;
                onChanged();
                return this;
            }
        }

        private SendRoomMsgResponse(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private SendRoomMsgResponse(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static SendRoomMsgResponse getDefaultInstance() {
            return defaultInstance;
        }

        public SendRoomMsgResponse getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private SendRoomMsgResponse(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.appid_ = codedInputStream.readUInt32();
                            break;
                        case 16:
                            this.bitField0_ |= 2;
                            this.retCode_ = codedInputStream.readUInt32();
                            break;
                        case 26:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 4;
                            this.fromGuid_ = readBytes;
                            break;
                        case 32:
                            this.bitField0_ |= 8;
                            this.fromMuid_ = codedInputStream.readUInt64();
                            break;
                        case 42:
                            ByteString readBytes2 = codedInputStream.readBytes();
                            this.bitField0_ |= 16;
                            this.targetGrid_ = readBytes2;
                            break;
                        case 48:
                            this.bitField0_ |= 32;
                            this.targetMrid_ = codedInputStream.readUInt64();
                            break;
                        case 56:
                            this.bitField0_ |= 64;
                            this.msgId_ = codedInputStream.readUInt64();
                            break;
                        case 64:
                            this.bitField0_ |= 128;
                            this.msgSeq_ = codedInputStream.readUInt64();
                            break;
                        case 72:
                            this.bitField0_ |= 256;
                            this.sentTime_ = codedInputStream.readUInt32();
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
            return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_SendRoomMsgResponse_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_SendRoomMsgResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(SendRoomMsgResponse.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<SendRoomMsgResponse> getParserForType() {
            return PARSER;
        }

        public boolean hasAppid() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getAppid() {
            return this.appid_;
        }

        public boolean hasRetCode() {
            return (this.bitField0_ & 2) == 2;
        }

        public int getRetCode() {
            return this.retCode_;
        }

        public boolean hasFromGuid() {
            return (this.bitField0_ & 4) == 4;
        }

        public String getFromGuid() {
            Object obj = this.fromGuid_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.fromGuid_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getFromGuidBytes() {
            Object obj = this.fromGuid_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.fromGuid_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasFromMuid() {
            return (this.bitField0_ & 8) == 8;
        }

        public long getFromMuid() {
            return this.fromMuid_;
        }

        public boolean hasTargetGrid() {
            return (this.bitField0_ & 16) == 16;
        }

        public String getTargetGrid() {
            Object obj = this.targetGrid_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.targetGrid_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getTargetGridBytes() {
            Object obj = this.targetGrid_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.targetGrid_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasTargetMrid() {
            return (this.bitField0_ & 32) == 32;
        }

        public long getTargetMrid() {
            return this.targetMrid_;
        }

        public boolean hasMsgId() {
            return (this.bitField0_ & 64) == 64;
        }

        public long getMsgId() {
            return this.msgId_;
        }

        public boolean hasMsgSeq() {
            return (this.bitField0_ & 128) == 128;
        }

        public long getMsgSeq() {
            return this.msgSeq_;
        }

        public boolean hasSentTime() {
            return (this.bitField0_ & 256) == 256;
        }

        public int getSentTime() {
            return this.sentTime_;
        }

        private void initFields() {
            this.appid_ = 0;
            this.retCode_ = 0;
            this.fromGuid_ = "";
            this.fromMuid_ = 0;
            this.targetGrid_ = "";
            this.targetMrid_ = 0;
            this.msgId_ = 0;
            this.msgSeq_ = 0;
            this.sentTime_ = 0;
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasAppid()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasRetCode()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasFromGuid()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasTargetGrid()) {
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
                codedOutputStream.writeUInt32(1, this.appid_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeUInt32(2, this.retCode_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBytes(3, getFromGuidBytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeUInt64(4, this.fromMuid_);
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeBytes(5, getTargetGridBytes());
            }
            if ((this.bitField0_ & 32) == 32) {
                codedOutputStream.writeUInt64(6, this.targetMrid_);
            }
            if ((this.bitField0_ & 64) == 64) {
                codedOutputStream.writeUInt64(7, this.msgId_);
            }
            if ((this.bitField0_ & 128) == 128) {
                codedOutputStream.writeUInt64(8, this.msgSeq_);
            }
            if ((this.bitField0_ & 256) == 256) {
                codedOutputStream.writeUInt32(9, this.sentTime_);
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
                i2 = 0 + CodedOutputStream.computeUInt32Size(1, this.appid_);
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeUInt32Size(2, this.retCode_);
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeBytesSize(3, getFromGuidBytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeUInt64Size(4, this.fromMuid_);
            }
            if ((this.bitField0_ & 16) == 16) {
                i2 += CodedOutputStream.computeBytesSize(5, getTargetGridBytes());
            }
            if ((this.bitField0_ & 32) == 32) {
                i2 += CodedOutputStream.computeUInt64Size(6, this.targetMrid_);
            }
            if ((this.bitField0_ & 64) == 64) {
                i2 += CodedOutputStream.computeUInt64Size(7, this.msgId_);
            }
            if ((this.bitField0_ & 128) == 128) {
                i2 += CodedOutputStream.computeUInt64Size(8, this.msgSeq_);
            }
            if ((this.bitField0_ & 256) == 256) {
                i2 += CodedOutputStream.computeUInt32Size(9, this.sentTime_);
            }
            int serializedSize = i2 + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static SendRoomMsgResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (SendRoomMsgResponse) PARSER.parseFrom(byteString);
        }

        public static SendRoomMsgResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SendRoomMsgResponse) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static SendRoomMsgResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (SendRoomMsgResponse) PARSER.parseFrom(bArr);
        }

        public static SendRoomMsgResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SendRoomMsgResponse) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static SendRoomMsgResponse parseFrom(InputStream inputStream) throws IOException {
            return (SendRoomMsgResponse) PARSER.parseFrom(inputStream);
        }

        public static SendRoomMsgResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SendRoomMsgResponse) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static SendRoomMsgResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (SendRoomMsgResponse) PARSER.parseDelimitedFrom(inputStream);
        }

        public static SendRoomMsgResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SendRoomMsgResponse) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static SendRoomMsgResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (SendRoomMsgResponse) PARSER.parseFrom(codedInputStream);
        }

        public static SendRoomMsgResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SendRoomMsgResponse) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(SendRoomMsgResponse sendRoomMsgResponse) {
            return newBuilder().mergeFrom(sendRoomMsgResponse);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface SendRoomMsgResponseOrBuilder extends com.google.protobuf.MessageOrBuilder {
        int getAppid();

        String getFromGuid();

        ByteString getFromGuidBytes();

        long getFromMuid();

        long getMsgId();

        long getMsgSeq();

        int getRetCode();

        int getSentTime();

        String getTargetGrid();

        ByteString getTargetGridBytes();

        long getTargetMrid();

        boolean hasAppid();

        boolean hasFromGuid();

        boolean hasFromMuid();

        boolean hasMsgId();

        boolean hasMsgSeq();

        boolean hasRetCode();

        boolean hasSentTime();

        boolean hasTargetGrid();

        boolean hasTargetMrid();
    }

    public static final class SendUserMsgRequest extends GeneratedMessage implements SendUserMsgRequestOrBuilder {
        public static final int APPID_FIELD_NUMBER = 1;
        public static final int BODYTYPE_FIELD_NUMBER = 7;
        public static final int BODY_FIELD_NUMBER = 6;
        public static final int FROMGUID_FIELD_NUMBER = 3;
        public static final int FROMMUID_FIELD_NUMBER = 4;
        public static final int MSGID_FIELD_NUMBER = 5;
        public static Parser<SendUserMsgRequest> PARSER = new AbstractParser<SendUserMsgRequest>() {
            public SendUserMsgRequest parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new SendUserMsgRequest(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int TOGUID_FIELD_NUMBER = 2;
        private static final SendUserMsgRequest defaultInstance = new SendUserMsgRequest(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int appid_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public int bodyType_;
        /* access modifiers changed from: private */
        public ByteString body_;
        /* access modifiers changed from: private */
        public Object fromGuid_;
        /* access modifiers changed from: private */
        public long fromMuid_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public long msgId_;
        /* access modifiers changed from: private */
        public LazyStringList toGuid_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements SendUserMsgRequestOrBuilder {
            private int appid_;
            private int bitField0_;
            private int bodyType_;
            private ByteString body_;
            private Object fromGuid_;
            private long fromMuid_;
            private long msgId_;
            private LazyStringList toGuid_;

            public static final Descriptor getDescriptor() {
                return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_SendUserMsgRequest_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_SendUserMsgRequest_fieldAccessorTable.ensureFieldAccessorsInitialized(SendUserMsgRequest.class, Builder.class);
            }

            private Builder() {
                this.toGuid_ = LazyStringArrayList.EMPTY;
                this.fromGuid_ = "";
                this.body_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.toGuid_ = LazyStringArrayList.EMPTY;
                this.fromGuid_ = "";
                this.body_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (SendUserMsgRequest.alwaysUseFieldBuilders) {
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.appid_ = 0;
                this.bitField0_ &= -2;
                this.toGuid_ = LazyStringArrayList.EMPTY;
                this.bitField0_ &= -3;
                this.fromGuid_ = "";
                this.bitField0_ &= -5;
                this.fromMuid_ = 0;
                this.bitField0_ &= -9;
                this.msgId_ = 0;
                this.bitField0_ &= -17;
                this.body_ = ByteString.EMPTY;
                this.bitField0_ &= -33;
                this.bodyType_ = 0;
                this.bitField0_ &= -65;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_SendUserMsgRequest_descriptor;
            }

            public SendUserMsgRequest getDefaultInstanceForType() {
                return SendUserMsgRequest.getDefaultInstance();
            }

            public SendUserMsgRequest build() {
                SendUserMsgRequest buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public SendUserMsgRequest buildPartial() {
                int i = 1;
                SendUserMsgRequest sendUserMsgRequest = new SendUserMsgRequest((com.google.protobuf.GeneratedMessage.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                sendUserMsgRequest.appid_ = this.appid_;
                if ((this.bitField0_ & 2) == 2) {
                    this.toGuid_ = this.toGuid_.getUnmodifiableView();
                    this.bitField0_ &= -3;
                }
                sendUserMsgRequest.toGuid_ = this.toGuid_;
                if ((i2 & 4) == 4) {
                    i |= 2;
                }
                sendUserMsgRequest.fromGuid_ = this.fromGuid_;
                if ((i2 & 8) == 8) {
                    i |= 4;
                }
                sendUserMsgRequest.fromMuid_ = this.fromMuid_;
                if ((i2 & 16) == 16) {
                    i |= 8;
                }
                sendUserMsgRequest.msgId_ = this.msgId_;
                if ((i2 & 32) == 32) {
                    i |= 16;
                }
                sendUserMsgRequest.body_ = this.body_;
                if ((i2 & 64) == 64) {
                    i |= 32;
                }
                sendUserMsgRequest.bodyType_ = this.bodyType_;
                sendUserMsgRequest.bitField0_ = i;
                onBuilt();
                return sendUserMsgRequest;
            }

            public Builder mergeFrom(com.google.protobuf.Message message) {
                if (message instanceof SendUserMsgRequest) {
                    return mergeFrom((SendUserMsgRequest) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(SendUserMsgRequest sendUserMsgRequest) {
                if (sendUserMsgRequest != SendUserMsgRequest.getDefaultInstance()) {
                    if (sendUserMsgRequest.hasAppid()) {
                        setAppid(sendUserMsgRequest.getAppid());
                    }
                    if (!sendUserMsgRequest.toGuid_.isEmpty()) {
                        if (this.toGuid_.isEmpty()) {
                            this.toGuid_ = sendUserMsgRequest.toGuid_;
                            this.bitField0_ &= -3;
                        } else {
                            ensureToGuidIsMutable();
                            this.toGuid_.addAll(sendUserMsgRequest.toGuid_);
                        }
                        onChanged();
                    }
                    if (sendUserMsgRequest.hasFromGuid()) {
                        this.bitField0_ |= 4;
                        this.fromGuid_ = sendUserMsgRequest.fromGuid_;
                        onChanged();
                    }
                    if (sendUserMsgRequest.hasFromMuid()) {
                        setFromMuid(sendUserMsgRequest.getFromMuid());
                    }
                    if (sendUserMsgRequest.hasMsgId()) {
                        setMsgId(sendUserMsgRequest.getMsgId());
                    }
                    if (sendUserMsgRequest.hasBody()) {
                        setBody(sendUserMsgRequest.getBody());
                    }
                    if (sendUserMsgRequest.hasBodyType()) {
                        setBodyType(sendUserMsgRequest.getBodyType());
                    }
                    mergeUnknownFields(sendUserMsgRequest.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasAppid() && hasFromGuid() && hasBody()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                SendUserMsgRequest sendUserMsgRequest;
                SendUserMsgRequest sendUserMsgRequest2;
                try {
                    SendUserMsgRequest sendUserMsgRequest3 = (SendUserMsgRequest) SendUserMsgRequest.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (sendUserMsgRequest3 != null) {
                        mergeFrom(sendUserMsgRequest3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    sendUserMsgRequest2 = (SendUserMsgRequest) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    sendUserMsgRequest = sendUserMsgRequest2;
                    th = th2;
                }
                if (sendUserMsgRequest != null) {
                    mergeFrom(sendUserMsgRequest);
                }
                throw th;
            }

            public boolean hasAppid() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getAppid() {
                return this.appid_;
            }

            public Builder setAppid(int i) {
                this.bitField0_ |= 1;
                this.appid_ = i;
                onChanged();
                return this;
            }

            public Builder clearAppid() {
                this.bitField0_ &= -2;
                this.appid_ = 0;
                onChanged();
                return this;
            }

            private void ensureToGuidIsMutable() {
                if ((this.bitField0_ & 2) != 2) {
                    this.toGuid_ = new LazyStringArrayList(this.toGuid_);
                    this.bitField0_ |= 2;
                }
            }

            public ProtocolStringList getToGuidList() {
                return this.toGuid_.getUnmodifiableView();
            }

            public int getToGuidCount() {
                return this.toGuid_.size();
            }

            public String getToGuid(int i) {
                return (String) this.toGuid_.get(i);
            }

            public ByteString getToGuidBytes(int i) {
                return this.toGuid_.getByteString(i);
            }

            public Builder setToGuid(int i, String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                ensureToGuidIsMutable();
                this.toGuid_.set(i, str);
                onChanged();
                return this;
            }

            public Builder addToGuid(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                ensureToGuidIsMutable();
                this.toGuid_.add(str);
                onChanged();
                return this;
            }

            public Builder addAllToGuid(Iterable<String> iterable) {
                ensureToGuidIsMutable();
                com.google.protobuf.AbstractMessageLite.Builder.addAll(iterable, this.toGuid_);
                onChanged();
                return this;
            }

            public Builder clearToGuid() {
                this.toGuid_ = LazyStringArrayList.EMPTY;
                this.bitField0_ &= -3;
                onChanged();
                return this;
            }

            public Builder addToGuidBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                ensureToGuidIsMutable();
                this.toGuid_.add(byteString);
                onChanged();
                return this;
            }

            public boolean hasFromGuid() {
                return (this.bitField0_ & 4) == 4;
            }

            public String getFromGuid() {
                Object obj = this.fromGuid_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.fromGuid_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getFromGuidBytes() {
                Object obj = this.fromGuid_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.fromGuid_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setFromGuid(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.fromGuid_ = str;
                onChanged();
                return this;
            }

            public Builder clearFromGuid() {
                this.bitField0_ &= -5;
                this.fromGuid_ = SendUserMsgRequest.getDefaultInstance().getFromGuid();
                onChanged();
                return this;
            }

            public Builder setFromGuidBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.fromGuid_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasFromMuid() {
                return (this.bitField0_ & 8) == 8;
            }

            public long getFromMuid() {
                return this.fromMuid_;
            }

            public Builder setFromMuid(long j) {
                this.bitField0_ |= 8;
                this.fromMuid_ = j;
                onChanged();
                return this;
            }

            public Builder clearFromMuid() {
                this.bitField0_ &= -9;
                this.fromMuid_ = 0;
                onChanged();
                return this;
            }

            public boolean hasMsgId() {
                return (this.bitField0_ & 16) == 16;
            }

            public long getMsgId() {
                return this.msgId_;
            }

            public Builder setMsgId(long j) {
                this.bitField0_ |= 16;
                this.msgId_ = j;
                onChanged();
                return this;
            }

            public Builder clearMsgId() {
                this.bitField0_ &= -17;
                this.msgId_ = 0;
                onChanged();
                return this;
            }

            public boolean hasBody() {
                return (this.bitField0_ & 32) == 32;
            }

            public ByteString getBody() {
                return this.body_;
            }

            public Builder setBody(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 32;
                this.body_ = byteString;
                onChanged();
                return this;
            }

            public Builder clearBody() {
                this.bitField0_ &= -33;
                this.body_ = SendUserMsgRequest.getDefaultInstance().getBody();
                onChanged();
                return this;
            }

            public boolean hasBodyType() {
                return (this.bitField0_ & 64) == 64;
            }

            public int getBodyType() {
                return this.bodyType_;
            }

            public Builder setBodyType(int i) {
                this.bitField0_ |= 64;
                this.bodyType_ = i;
                onChanged();
                return this;
            }

            public Builder clearBodyType() {
                this.bitField0_ &= -65;
                this.bodyType_ = 0;
                onChanged();
                return this;
            }
        }

        private SendUserMsgRequest(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private SendUserMsgRequest(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static SendUserMsgRequest getDefaultInstance() {
            return defaultInstance;
        }

        public SendUserMsgRequest getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private SendUserMsgRequest(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.appid_ = codedInputStream.readUInt32();
                            break;
                        case 18:
                            ByteString readBytes = codedInputStream.readBytes();
                            if (!(z2 & true)) {
                                this.toGuid_ = new LazyStringArrayList();
                                z2 |= true;
                            }
                            this.toGuid_.add(readBytes);
                            break;
                        case 26:
                            ByteString readBytes2 = codedInputStream.readBytes();
                            this.bitField0_ |= 2;
                            this.fromGuid_ = readBytes2;
                            break;
                        case 32:
                            this.bitField0_ |= 4;
                            this.fromMuid_ = codedInputStream.readUInt64();
                            break;
                        case 40:
                            this.bitField0_ |= 8;
                            this.msgId_ = codedInputStream.readUInt64();
                            break;
                        case 50:
                            this.bitField0_ |= 16;
                            this.body_ = codedInputStream.readBytes();
                            break;
                        case 56:
                            this.bitField0_ |= 32;
                            this.bodyType_ = codedInputStream.readUInt32();
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
                        this.toGuid_ = this.toGuid_.getUnmodifiableView();
                    }
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            if (z2 & true) {
                this.toGuid_ = this.toGuid_.getUnmodifiableView();
            }
            this.unknownFields = newBuilder.build();
            makeExtensionsImmutable();
        }

        public static final Descriptor getDescriptor() {
            return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_SendUserMsgRequest_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_SendUserMsgRequest_fieldAccessorTable.ensureFieldAccessorsInitialized(SendUserMsgRequest.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<SendUserMsgRequest> getParserForType() {
            return PARSER;
        }

        public boolean hasAppid() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getAppid() {
            return this.appid_;
        }

        public ProtocolStringList getToGuidList() {
            return this.toGuid_;
        }

        public int getToGuidCount() {
            return this.toGuid_.size();
        }

        public String getToGuid(int i) {
            return (String) this.toGuid_.get(i);
        }

        public ByteString getToGuidBytes(int i) {
            return this.toGuid_.getByteString(i);
        }

        public boolean hasFromGuid() {
            return (this.bitField0_ & 2) == 2;
        }

        public String getFromGuid() {
            Object obj = this.fromGuid_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.fromGuid_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getFromGuidBytes() {
            Object obj = this.fromGuid_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.fromGuid_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasFromMuid() {
            return (this.bitField0_ & 4) == 4;
        }

        public long getFromMuid() {
            return this.fromMuid_;
        }

        public boolean hasMsgId() {
            return (this.bitField0_ & 8) == 8;
        }

        public long getMsgId() {
            return this.msgId_;
        }

        public boolean hasBody() {
            return (this.bitField0_ & 16) == 16;
        }

        public ByteString getBody() {
            return this.body_;
        }

        public boolean hasBodyType() {
            return (this.bitField0_ & 32) == 32;
        }

        public int getBodyType() {
            return this.bodyType_;
        }

        private void initFields() {
            this.appid_ = 0;
            this.toGuid_ = LazyStringArrayList.EMPTY;
            this.fromGuid_ = "";
            this.fromMuid_ = 0;
            this.msgId_ = 0;
            this.body_ = ByteString.EMPTY;
            this.bodyType_ = 0;
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasAppid()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasFromGuid()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasBody()) {
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
                codedOutputStream.writeUInt32(1, this.appid_);
            }
            for (int i = 0; i < this.toGuid_.size(); i++) {
                codedOutputStream.writeBytes(2, this.toGuid_.getByteString(i));
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeBytes(3, getFromGuidBytes());
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeUInt64(4, this.fromMuid_);
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeUInt64(5, this.msgId_);
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeBytes(6, this.body_);
            }
            if ((this.bitField0_ & 32) == 32) {
                codedOutputStream.writeUInt32(7, this.bodyType_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        public int getSerializedSize() {
            int i;
            int i2 = this.memoizedSerializedSize;
            if (i2 != -1) {
                return i2;
            }
            if ((this.bitField0_ & 1) == 1) {
                i = CodedOutputStream.computeUInt32Size(1, this.appid_) + 0;
            } else {
                i = 0;
            }
            int i3 = 0;
            for (int i4 = 0; i4 < this.toGuid_.size(); i4++) {
                i3 += CodedOutputStream.computeBytesSizeNoTag(this.toGuid_.getByteString(i4));
            }
            int size = i + i3 + (getToGuidList().size() * 1);
            if ((this.bitField0_ & 2) == 2) {
                size += CodedOutputStream.computeBytesSize(3, getFromGuidBytes());
            }
            if ((this.bitField0_ & 4) == 4) {
                size += CodedOutputStream.computeUInt64Size(4, this.fromMuid_);
            }
            if ((this.bitField0_ & 8) == 8) {
                size += CodedOutputStream.computeUInt64Size(5, this.msgId_);
            }
            if ((this.bitField0_ & 16) == 16) {
                size += CodedOutputStream.computeBytesSize(6, this.body_);
            }
            if ((this.bitField0_ & 32) == 32) {
                size += CodedOutputStream.computeUInt32Size(7, this.bodyType_);
            }
            int serializedSize = size + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static SendUserMsgRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (SendUserMsgRequest) PARSER.parseFrom(byteString);
        }

        public static SendUserMsgRequest parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SendUserMsgRequest) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static SendUserMsgRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (SendUserMsgRequest) PARSER.parseFrom(bArr);
        }

        public static SendUserMsgRequest parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SendUserMsgRequest) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static SendUserMsgRequest parseFrom(InputStream inputStream) throws IOException {
            return (SendUserMsgRequest) PARSER.parseFrom(inputStream);
        }

        public static SendUserMsgRequest parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SendUserMsgRequest) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static SendUserMsgRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (SendUserMsgRequest) PARSER.parseDelimitedFrom(inputStream);
        }

        public static SendUserMsgRequest parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SendUserMsgRequest) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static SendUserMsgRequest parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (SendUserMsgRequest) PARSER.parseFrom(codedInputStream);
        }

        public static SendUserMsgRequest parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SendUserMsgRequest) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(SendUserMsgRequest sendUserMsgRequest) {
            return newBuilder().mergeFrom(sendUserMsgRequest);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface SendUserMsgRequestOrBuilder extends com.google.protobuf.MessageOrBuilder {
        int getAppid();

        ByteString getBody();

        int getBodyType();

        String getFromGuid();

        ByteString getFromGuidBytes();

        long getFromMuid();

        long getMsgId();

        String getToGuid(int i);

        ByteString getToGuidBytes(int i);

        int getToGuidCount();

        ProtocolStringList getToGuidList();

        boolean hasAppid();

        boolean hasBody();

        boolean hasBodyType();

        boolean hasFromGuid();

        boolean hasFromMuid();

        boolean hasMsgId();
    }

    public static final class SendUserMsgResponse extends GeneratedMessage implements SendUserMsgResponseOrBuilder {
        public static final int APPID_FIELD_NUMBER = 1;
        public static final int FROMGUID_FIELD_NUMBER = 3;
        public static final int FROMMUID_FIELD_NUMBER = 4;
        public static final int MSGID_FIELD_NUMBER = 5;
        public static final int MSGSEQ_FIELD_NUMBER = 6;
        public static Parser<SendUserMsgResponse> PARSER = new AbstractParser<SendUserMsgResponse>() {
            public SendUserMsgResponse parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new SendUserMsgResponse(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int RETCODE_FIELD_NUMBER = 2;
        public static final int SENTTIME_FIELD_NUMBER = 7;
        private static final SendUserMsgResponse defaultInstance = new SendUserMsgResponse(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int appid_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public Object fromGuid_;
        /* access modifiers changed from: private */
        public long fromMuid_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public long msgId_;
        /* access modifiers changed from: private */
        public long msgSeq_;
        /* access modifiers changed from: private */
        public int retCode_;
        /* access modifiers changed from: private */
        public int sentTime_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements SendUserMsgResponseOrBuilder {
            private int appid_;
            private int bitField0_;
            private Object fromGuid_;
            private long fromMuid_;
            private long msgId_;
            private long msgSeq_;
            private int retCode_;
            private int sentTime_;

            public static final Descriptor getDescriptor() {
                return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_SendUserMsgResponse_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_SendUserMsgResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(SendUserMsgResponse.class, Builder.class);
            }

            private Builder() {
                this.fromGuid_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.fromGuid_ = "";
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (SendUserMsgResponse.alwaysUseFieldBuilders) {
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.appid_ = 0;
                this.bitField0_ &= -2;
                this.retCode_ = 0;
                this.bitField0_ &= -3;
                this.fromGuid_ = "";
                this.bitField0_ &= -5;
                this.fromMuid_ = 0;
                this.bitField0_ &= -9;
                this.msgId_ = 0;
                this.bitField0_ &= -17;
                this.msgSeq_ = 0;
                this.bitField0_ &= -33;
                this.sentTime_ = 0;
                this.bitField0_ &= -65;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_SendUserMsgResponse_descriptor;
            }

            public SendUserMsgResponse getDefaultInstanceForType() {
                return SendUserMsgResponse.getDefaultInstance();
            }

            public SendUserMsgResponse build() {
                SendUserMsgResponse buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public SendUserMsgResponse buildPartial() {
                int i = 1;
                SendUserMsgResponse sendUserMsgResponse = new SendUserMsgResponse((com.google.protobuf.GeneratedMessage.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                sendUserMsgResponse.appid_ = this.appid_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                sendUserMsgResponse.retCode_ = this.retCode_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                sendUserMsgResponse.fromGuid_ = this.fromGuid_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                sendUserMsgResponse.fromMuid_ = this.fromMuid_;
                if ((i2 & 16) == 16) {
                    i |= 16;
                }
                sendUserMsgResponse.msgId_ = this.msgId_;
                if ((i2 & 32) == 32) {
                    i |= 32;
                }
                sendUserMsgResponse.msgSeq_ = this.msgSeq_;
                if ((i2 & 64) == 64) {
                    i |= 64;
                }
                sendUserMsgResponse.sentTime_ = this.sentTime_;
                sendUserMsgResponse.bitField0_ = i;
                onBuilt();
                return sendUserMsgResponse;
            }

            public Builder mergeFrom(com.google.protobuf.Message message) {
                if (message instanceof SendUserMsgResponse) {
                    return mergeFrom((SendUserMsgResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(SendUserMsgResponse sendUserMsgResponse) {
                if (sendUserMsgResponse != SendUserMsgResponse.getDefaultInstance()) {
                    if (sendUserMsgResponse.hasAppid()) {
                        setAppid(sendUserMsgResponse.getAppid());
                    }
                    if (sendUserMsgResponse.hasRetCode()) {
                        setRetCode(sendUserMsgResponse.getRetCode());
                    }
                    if (sendUserMsgResponse.hasFromGuid()) {
                        this.bitField0_ |= 4;
                        this.fromGuid_ = sendUserMsgResponse.fromGuid_;
                        onChanged();
                    }
                    if (sendUserMsgResponse.hasFromMuid()) {
                        setFromMuid(sendUserMsgResponse.getFromMuid());
                    }
                    if (sendUserMsgResponse.hasMsgId()) {
                        setMsgId(sendUserMsgResponse.getMsgId());
                    }
                    if (sendUserMsgResponse.hasMsgSeq()) {
                        setMsgSeq(sendUserMsgResponse.getMsgSeq());
                    }
                    if (sendUserMsgResponse.hasSentTime()) {
                        setSentTime(sendUserMsgResponse.getSentTime());
                    }
                    mergeUnknownFields(sendUserMsgResponse.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasAppid() && hasRetCode() && hasFromGuid()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                SendUserMsgResponse sendUserMsgResponse;
                SendUserMsgResponse sendUserMsgResponse2;
                try {
                    SendUserMsgResponse sendUserMsgResponse3 = (SendUserMsgResponse) SendUserMsgResponse.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (sendUserMsgResponse3 != null) {
                        mergeFrom(sendUserMsgResponse3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    sendUserMsgResponse2 = (SendUserMsgResponse) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    sendUserMsgResponse = sendUserMsgResponse2;
                    th = th2;
                }
                if (sendUserMsgResponse != null) {
                    mergeFrom(sendUserMsgResponse);
                }
                throw th;
            }

            public boolean hasAppid() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getAppid() {
                return this.appid_;
            }

            public Builder setAppid(int i) {
                this.bitField0_ |= 1;
                this.appid_ = i;
                onChanged();
                return this;
            }

            public Builder clearAppid() {
                this.bitField0_ &= -2;
                this.appid_ = 0;
                onChanged();
                return this;
            }

            public boolean hasRetCode() {
                return (this.bitField0_ & 2) == 2;
            }

            public int getRetCode() {
                return this.retCode_;
            }

            public Builder setRetCode(int i) {
                this.bitField0_ |= 2;
                this.retCode_ = i;
                onChanged();
                return this;
            }

            public Builder clearRetCode() {
                this.bitField0_ &= -3;
                this.retCode_ = 0;
                onChanged();
                return this;
            }

            public boolean hasFromGuid() {
                return (this.bitField0_ & 4) == 4;
            }

            public String getFromGuid() {
                Object obj = this.fromGuid_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.fromGuid_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getFromGuidBytes() {
                Object obj = this.fromGuid_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.fromGuid_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setFromGuid(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.fromGuid_ = str;
                onChanged();
                return this;
            }

            public Builder clearFromGuid() {
                this.bitField0_ &= -5;
                this.fromGuid_ = SendUserMsgResponse.getDefaultInstance().getFromGuid();
                onChanged();
                return this;
            }

            public Builder setFromGuidBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.fromGuid_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasFromMuid() {
                return (this.bitField0_ & 8) == 8;
            }

            public long getFromMuid() {
                return this.fromMuid_;
            }

            public Builder setFromMuid(long j) {
                this.bitField0_ |= 8;
                this.fromMuid_ = j;
                onChanged();
                return this;
            }

            public Builder clearFromMuid() {
                this.bitField0_ &= -9;
                this.fromMuid_ = 0;
                onChanged();
                return this;
            }

            public boolean hasMsgId() {
                return (this.bitField0_ & 16) == 16;
            }

            public long getMsgId() {
                return this.msgId_;
            }

            public Builder setMsgId(long j) {
                this.bitField0_ |= 16;
                this.msgId_ = j;
                onChanged();
                return this;
            }

            public Builder clearMsgId() {
                this.bitField0_ &= -17;
                this.msgId_ = 0;
                onChanged();
                return this;
            }

            public boolean hasMsgSeq() {
                return (this.bitField0_ & 32) == 32;
            }

            public long getMsgSeq() {
                return this.msgSeq_;
            }

            public Builder setMsgSeq(long j) {
                this.bitField0_ |= 32;
                this.msgSeq_ = j;
                onChanged();
                return this;
            }

            public Builder clearMsgSeq() {
                this.bitField0_ &= -33;
                this.msgSeq_ = 0;
                onChanged();
                return this;
            }

            public boolean hasSentTime() {
                return (this.bitField0_ & 64) == 64;
            }

            public int getSentTime() {
                return this.sentTime_;
            }

            public Builder setSentTime(int i) {
                this.bitField0_ |= 64;
                this.sentTime_ = i;
                onChanged();
                return this;
            }

            public Builder clearSentTime() {
                this.bitField0_ &= -65;
                this.sentTime_ = 0;
                onChanged();
                return this;
            }
        }

        private SendUserMsgResponse(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private SendUserMsgResponse(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static SendUserMsgResponse getDefaultInstance() {
            return defaultInstance;
        }

        public SendUserMsgResponse getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private SendUserMsgResponse(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.appid_ = codedInputStream.readUInt32();
                            break;
                        case 16:
                            this.bitField0_ |= 2;
                            this.retCode_ = codedInputStream.readUInt32();
                            break;
                        case 26:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 4;
                            this.fromGuid_ = readBytes;
                            break;
                        case 32:
                            this.bitField0_ |= 8;
                            this.fromMuid_ = codedInputStream.readUInt64();
                            break;
                        case 40:
                            this.bitField0_ |= 16;
                            this.msgId_ = codedInputStream.readUInt64();
                            break;
                        case 48:
                            this.bitField0_ |= 32;
                            this.msgSeq_ = codedInputStream.readUInt64();
                            break;
                        case 56:
                            this.bitField0_ |= 64;
                            this.sentTime_ = codedInputStream.readUInt32();
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
            return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_SendUserMsgResponse_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_SendUserMsgResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(SendUserMsgResponse.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<SendUserMsgResponse> getParserForType() {
            return PARSER;
        }

        public boolean hasAppid() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getAppid() {
            return this.appid_;
        }

        public boolean hasRetCode() {
            return (this.bitField0_ & 2) == 2;
        }

        public int getRetCode() {
            return this.retCode_;
        }

        public boolean hasFromGuid() {
            return (this.bitField0_ & 4) == 4;
        }

        public String getFromGuid() {
            Object obj = this.fromGuid_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.fromGuid_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getFromGuidBytes() {
            Object obj = this.fromGuid_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.fromGuid_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasFromMuid() {
            return (this.bitField0_ & 8) == 8;
        }

        public long getFromMuid() {
            return this.fromMuid_;
        }

        public boolean hasMsgId() {
            return (this.bitField0_ & 16) == 16;
        }

        public long getMsgId() {
            return this.msgId_;
        }

        public boolean hasMsgSeq() {
            return (this.bitField0_ & 32) == 32;
        }

        public long getMsgSeq() {
            return this.msgSeq_;
        }

        public boolean hasSentTime() {
            return (this.bitField0_ & 64) == 64;
        }

        public int getSentTime() {
            return this.sentTime_;
        }

        private void initFields() {
            this.appid_ = 0;
            this.retCode_ = 0;
            this.fromGuid_ = "";
            this.fromMuid_ = 0;
            this.msgId_ = 0;
            this.msgSeq_ = 0;
            this.sentTime_ = 0;
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasAppid()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasRetCode()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasFromGuid()) {
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
                codedOutputStream.writeUInt32(1, this.appid_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeUInt32(2, this.retCode_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBytes(3, getFromGuidBytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeUInt64(4, this.fromMuid_);
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeUInt64(5, this.msgId_);
            }
            if ((this.bitField0_ & 32) == 32) {
                codedOutputStream.writeUInt64(6, this.msgSeq_);
            }
            if ((this.bitField0_ & 64) == 64) {
                codedOutputStream.writeUInt32(7, this.sentTime_);
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
                i2 = 0 + CodedOutputStream.computeUInt32Size(1, this.appid_);
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeUInt32Size(2, this.retCode_);
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeBytesSize(3, getFromGuidBytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeUInt64Size(4, this.fromMuid_);
            }
            if ((this.bitField0_ & 16) == 16) {
                i2 += CodedOutputStream.computeUInt64Size(5, this.msgId_);
            }
            if ((this.bitField0_ & 32) == 32) {
                i2 += CodedOutputStream.computeUInt64Size(6, this.msgSeq_);
            }
            if ((this.bitField0_ & 64) == 64) {
                i2 += CodedOutputStream.computeUInt32Size(7, this.sentTime_);
            }
            int serializedSize = i2 + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static SendUserMsgResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (SendUserMsgResponse) PARSER.parseFrom(byteString);
        }

        public static SendUserMsgResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SendUserMsgResponse) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static SendUserMsgResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (SendUserMsgResponse) PARSER.parseFrom(bArr);
        }

        public static SendUserMsgResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SendUserMsgResponse) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static SendUserMsgResponse parseFrom(InputStream inputStream) throws IOException {
            return (SendUserMsgResponse) PARSER.parseFrom(inputStream);
        }

        public static SendUserMsgResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SendUserMsgResponse) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static SendUserMsgResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (SendUserMsgResponse) PARSER.parseDelimitedFrom(inputStream);
        }

        public static SendUserMsgResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SendUserMsgResponse) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static SendUserMsgResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (SendUserMsgResponse) PARSER.parseFrom(codedInputStream);
        }

        public static SendUserMsgResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SendUserMsgResponse) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(SendUserMsgResponse sendUserMsgResponse) {
            return newBuilder().mergeFrom(sendUserMsgResponse);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface SendUserMsgResponseOrBuilder extends com.google.protobuf.MessageOrBuilder {
        int getAppid();

        String getFromGuid();

        ByteString getFromGuidBytes();

        long getFromMuid();

        long getMsgId();

        long getMsgSeq();

        int getRetCode();

        int getSentTime();

        boolean hasAppid();

        boolean hasFromGuid();

        boolean hasFromMuid();

        boolean hasMsgId();

        boolean hasMsgSeq();

        boolean hasRetCode();

        boolean hasSentTime();
    }

    public static final class SyncGroupMsgRequest extends GeneratedMessage implements SyncGroupMsgRequestOrBuilder {
        public static final int APPID_FIELD_NUMBER = 1;
        public static final int CURRGUID_FIELD_NUMBER = 2;
        public static final int CURRMUID_FIELD_NUMBER = 3;
        public static final int LIMIT_FIELD_NUMBER = 6;
        public static final int MAXRECVSEQ_FIELD_NUMBER = 5;
        public static Parser<SyncGroupMsgRequest> PARSER = new AbstractParser<SyncGroupMsgRequest>() {
            public SyncGroupMsgRequest parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new SyncGroupMsgRequest(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int TARGETGGID_FIELD_NUMBER = 4;
        private static final SyncGroupMsgRequest defaultInstance = new SyncGroupMsgRequest(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int appid_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public Object currGuid_;
        /* access modifiers changed from: private */
        public long currMuid_;
        /* access modifiers changed from: private */
        public int limit_;
        /* access modifiers changed from: private */
        public long maxRecvSeq_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public Object targetGgid_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements SyncGroupMsgRequestOrBuilder {
            private int appid_;
            private int bitField0_;
            private Object currGuid_;
            private long currMuid_;
            private int limit_;
            private long maxRecvSeq_;
            private Object targetGgid_;

            public static final Descriptor getDescriptor() {
                return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_SyncGroupMsgRequest_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_SyncGroupMsgRequest_fieldAccessorTable.ensureFieldAccessorsInitialized(SyncGroupMsgRequest.class, Builder.class);
            }

            private Builder() {
                this.currGuid_ = "";
                this.targetGgid_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.currGuid_ = "";
                this.targetGgid_ = "";
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (SyncGroupMsgRequest.alwaysUseFieldBuilders) {
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.appid_ = 0;
                this.bitField0_ &= -2;
                this.currGuid_ = "";
                this.bitField0_ &= -3;
                this.currMuid_ = 0;
                this.bitField0_ &= -5;
                this.targetGgid_ = "";
                this.bitField0_ &= -9;
                this.maxRecvSeq_ = 0;
                this.bitField0_ &= -17;
                this.limit_ = 0;
                this.bitField0_ &= -33;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_SyncGroupMsgRequest_descriptor;
            }

            public SyncGroupMsgRequest getDefaultInstanceForType() {
                return SyncGroupMsgRequest.getDefaultInstance();
            }

            public SyncGroupMsgRequest build() {
                SyncGroupMsgRequest buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public SyncGroupMsgRequest buildPartial() {
                int i = 1;
                SyncGroupMsgRequest syncGroupMsgRequest = new SyncGroupMsgRequest((com.google.protobuf.GeneratedMessage.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                syncGroupMsgRequest.appid_ = this.appid_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                syncGroupMsgRequest.currGuid_ = this.currGuid_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                syncGroupMsgRequest.currMuid_ = this.currMuid_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                syncGroupMsgRequest.targetGgid_ = this.targetGgid_;
                if ((i2 & 16) == 16) {
                    i |= 16;
                }
                syncGroupMsgRequest.maxRecvSeq_ = this.maxRecvSeq_;
                if ((i2 & 32) == 32) {
                    i |= 32;
                }
                syncGroupMsgRequest.limit_ = this.limit_;
                syncGroupMsgRequest.bitField0_ = i;
                onBuilt();
                return syncGroupMsgRequest;
            }

            public Builder mergeFrom(com.google.protobuf.Message message) {
                if (message instanceof SyncGroupMsgRequest) {
                    return mergeFrom((SyncGroupMsgRequest) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(SyncGroupMsgRequest syncGroupMsgRequest) {
                if (syncGroupMsgRequest != SyncGroupMsgRequest.getDefaultInstance()) {
                    if (syncGroupMsgRequest.hasAppid()) {
                        setAppid(syncGroupMsgRequest.getAppid());
                    }
                    if (syncGroupMsgRequest.hasCurrGuid()) {
                        this.bitField0_ |= 2;
                        this.currGuid_ = syncGroupMsgRequest.currGuid_;
                        onChanged();
                    }
                    if (syncGroupMsgRequest.hasCurrMuid()) {
                        setCurrMuid(syncGroupMsgRequest.getCurrMuid());
                    }
                    if (syncGroupMsgRequest.hasTargetGgid()) {
                        this.bitField0_ |= 8;
                        this.targetGgid_ = syncGroupMsgRequest.targetGgid_;
                        onChanged();
                    }
                    if (syncGroupMsgRequest.hasMaxRecvSeq()) {
                        setMaxRecvSeq(syncGroupMsgRequest.getMaxRecvSeq());
                    }
                    if (syncGroupMsgRequest.hasLimit()) {
                        setLimit(syncGroupMsgRequest.getLimit());
                    }
                    mergeUnknownFields(syncGroupMsgRequest.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasAppid() && hasCurrGuid() && hasTargetGgid() && hasMaxRecvSeq()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                SyncGroupMsgRequest syncGroupMsgRequest;
                SyncGroupMsgRequest syncGroupMsgRequest2;
                try {
                    SyncGroupMsgRequest syncGroupMsgRequest3 = (SyncGroupMsgRequest) SyncGroupMsgRequest.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (syncGroupMsgRequest3 != null) {
                        mergeFrom(syncGroupMsgRequest3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    syncGroupMsgRequest2 = (SyncGroupMsgRequest) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    syncGroupMsgRequest = syncGroupMsgRequest2;
                    th = th2;
                }
                if (syncGroupMsgRequest != null) {
                    mergeFrom(syncGroupMsgRequest);
                }
                throw th;
            }

            public boolean hasAppid() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getAppid() {
                return this.appid_;
            }

            public Builder setAppid(int i) {
                this.bitField0_ |= 1;
                this.appid_ = i;
                onChanged();
                return this;
            }

            public Builder clearAppid() {
                this.bitField0_ &= -2;
                this.appid_ = 0;
                onChanged();
                return this;
            }

            public boolean hasCurrGuid() {
                return (this.bitField0_ & 2) == 2;
            }

            public String getCurrGuid() {
                Object obj = this.currGuid_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.currGuid_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getCurrGuidBytes() {
                Object obj = this.currGuid_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.currGuid_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setCurrGuid(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.currGuid_ = str;
                onChanged();
                return this;
            }

            public Builder clearCurrGuid() {
                this.bitField0_ &= -3;
                this.currGuid_ = SyncGroupMsgRequest.getDefaultInstance().getCurrGuid();
                onChanged();
                return this;
            }

            public Builder setCurrGuidBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.currGuid_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasCurrMuid() {
                return (this.bitField0_ & 4) == 4;
            }

            public long getCurrMuid() {
                return this.currMuid_;
            }

            public Builder setCurrMuid(long j) {
                this.bitField0_ |= 4;
                this.currMuid_ = j;
                onChanged();
                return this;
            }

            public Builder clearCurrMuid() {
                this.bitField0_ &= -5;
                this.currMuid_ = 0;
                onChanged();
                return this;
            }

            public boolean hasTargetGgid() {
                return (this.bitField0_ & 8) == 8;
            }

            public String getTargetGgid() {
                Object obj = this.targetGgid_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.targetGgid_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getTargetGgidBytes() {
                Object obj = this.targetGgid_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.targetGgid_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setTargetGgid(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.targetGgid_ = str;
                onChanged();
                return this;
            }

            public Builder clearTargetGgid() {
                this.bitField0_ &= -9;
                this.targetGgid_ = SyncGroupMsgRequest.getDefaultInstance().getTargetGgid();
                onChanged();
                return this;
            }

            public Builder setTargetGgidBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.targetGgid_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasMaxRecvSeq() {
                return (this.bitField0_ & 16) == 16;
            }

            public long getMaxRecvSeq() {
                return this.maxRecvSeq_;
            }

            public Builder setMaxRecvSeq(long j) {
                this.bitField0_ |= 16;
                this.maxRecvSeq_ = j;
                onChanged();
                return this;
            }

            public Builder clearMaxRecvSeq() {
                this.bitField0_ &= -17;
                this.maxRecvSeq_ = 0;
                onChanged();
                return this;
            }

            public boolean hasLimit() {
                return (this.bitField0_ & 32) == 32;
            }

            public int getLimit() {
                return this.limit_;
            }

            public Builder setLimit(int i) {
                this.bitField0_ |= 32;
                this.limit_ = i;
                onChanged();
                return this;
            }

            public Builder clearLimit() {
                this.bitField0_ &= -33;
                this.limit_ = 0;
                onChanged();
                return this;
            }
        }

        private SyncGroupMsgRequest(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private SyncGroupMsgRequest(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static SyncGroupMsgRequest getDefaultInstance() {
            return defaultInstance;
        }

        public SyncGroupMsgRequest getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private SyncGroupMsgRequest(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.appid_ = codedInputStream.readUInt32();
                            break;
                        case 18:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 2;
                            this.currGuid_ = readBytes;
                            break;
                        case 24:
                            this.bitField0_ |= 4;
                            this.currMuid_ = codedInputStream.readUInt64();
                            break;
                        case 34:
                            ByteString readBytes2 = codedInputStream.readBytes();
                            this.bitField0_ |= 8;
                            this.targetGgid_ = readBytes2;
                            break;
                        case 40:
                            this.bitField0_ |= 16;
                            this.maxRecvSeq_ = codedInputStream.readUInt64();
                            break;
                        case 48:
                            this.bitField0_ |= 32;
                            this.limit_ = codedInputStream.readUInt32();
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
            return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_SyncGroupMsgRequest_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_SyncGroupMsgRequest_fieldAccessorTable.ensureFieldAccessorsInitialized(SyncGroupMsgRequest.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<SyncGroupMsgRequest> getParserForType() {
            return PARSER;
        }

        public boolean hasAppid() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getAppid() {
            return this.appid_;
        }

        public boolean hasCurrGuid() {
            return (this.bitField0_ & 2) == 2;
        }

        public String getCurrGuid() {
            Object obj = this.currGuid_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.currGuid_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getCurrGuidBytes() {
            Object obj = this.currGuid_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.currGuid_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasCurrMuid() {
            return (this.bitField0_ & 4) == 4;
        }

        public long getCurrMuid() {
            return this.currMuid_;
        }

        public boolean hasTargetGgid() {
            return (this.bitField0_ & 8) == 8;
        }

        public String getTargetGgid() {
            Object obj = this.targetGgid_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.targetGgid_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getTargetGgidBytes() {
            Object obj = this.targetGgid_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.targetGgid_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasMaxRecvSeq() {
            return (this.bitField0_ & 16) == 16;
        }

        public long getMaxRecvSeq() {
            return this.maxRecvSeq_;
        }

        public boolean hasLimit() {
            return (this.bitField0_ & 32) == 32;
        }

        public int getLimit() {
            return this.limit_;
        }

        private void initFields() {
            this.appid_ = 0;
            this.currGuid_ = "";
            this.currMuid_ = 0;
            this.targetGgid_ = "";
            this.maxRecvSeq_ = 0;
            this.limit_ = 0;
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasAppid()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasCurrGuid()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasTargetGgid()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasMaxRecvSeq()) {
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
                codedOutputStream.writeUInt32(1, this.appid_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeBytes(2, getCurrGuidBytes());
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeUInt64(3, this.currMuid_);
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeBytes(4, getTargetGgidBytes());
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeUInt64(5, this.maxRecvSeq_);
            }
            if ((this.bitField0_ & 32) == 32) {
                codedOutputStream.writeUInt32(6, this.limit_);
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
                i2 = 0 + CodedOutputStream.computeUInt32Size(1, this.appid_);
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeBytesSize(2, getCurrGuidBytes());
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeUInt64Size(3, this.currMuid_);
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeBytesSize(4, getTargetGgidBytes());
            }
            if ((this.bitField0_ & 16) == 16) {
                i2 += CodedOutputStream.computeUInt64Size(5, this.maxRecvSeq_);
            }
            if ((this.bitField0_ & 32) == 32) {
                i2 += CodedOutputStream.computeUInt32Size(6, this.limit_);
            }
            int serializedSize = i2 + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static SyncGroupMsgRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (SyncGroupMsgRequest) PARSER.parseFrom(byteString);
        }

        public static SyncGroupMsgRequest parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SyncGroupMsgRequest) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static SyncGroupMsgRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (SyncGroupMsgRequest) PARSER.parseFrom(bArr);
        }

        public static SyncGroupMsgRequest parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SyncGroupMsgRequest) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static SyncGroupMsgRequest parseFrom(InputStream inputStream) throws IOException {
            return (SyncGroupMsgRequest) PARSER.parseFrom(inputStream);
        }

        public static SyncGroupMsgRequest parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SyncGroupMsgRequest) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static SyncGroupMsgRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (SyncGroupMsgRequest) PARSER.parseDelimitedFrom(inputStream);
        }

        public static SyncGroupMsgRequest parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SyncGroupMsgRequest) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static SyncGroupMsgRequest parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (SyncGroupMsgRequest) PARSER.parseFrom(codedInputStream);
        }

        public static SyncGroupMsgRequest parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SyncGroupMsgRequest) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(SyncGroupMsgRequest syncGroupMsgRequest) {
            return newBuilder().mergeFrom(syncGroupMsgRequest);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface SyncGroupMsgRequestOrBuilder extends com.google.protobuf.MessageOrBuilder {
        int getAppid();

        String getCurrGuid();

        ByteString getCurrGuidBytes();

        long getCurrMuid();

        int getLimit();

        long getMaxRecvSeq();

        String getTargetGgid();

        ByteString getTargetGgidBytes();

        boolean hasAppid();

        boolean hasCurrGuid();

        boolean hasCurrMuid();

        boolean hasLimit();

        boolean hasMaxRecvSeq();

        boolean hasTargetGgid();
    }

    public static final class SyncGroupMsgResponse extends GeneratedMessage implements SyncGroupMsgResponseOrBuilder {
        public static final int APPID_FIELD_NUMBER = 1;
        public static final int CURRGUID_FIELD_NUMBER = 3;
        public static final int CURRMUID_FIELD_NUMBER = 4;
        public static final int MAXMSGSEQ_FIELD_NUMBER = 7;
        public static final int MSGS_FIELD_NUMBER = 8;
        public static Parser<SyncGroupMsgResponse> PARSER = new AbstractParser<SyncGroupMsgResponse>() {
            public SyncGroupMsgResponse parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new SyncGroupMsgResponse(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int RETCODE_FIELD_NUMBER = 2;
        public static final int TARGETGGID_FIELD_NUMBER = 5;
        public static final int TARGETMGID_FIELD_NUMBER = 6;
        private static final SyncGroupMsgResponse defaultInstance = new SyncGroupMsgResponse(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int appid_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public Object currGuid_;
        /* access modifiers changed from: private */
        public long currMuid_;
        /* access modifiers changed from: private */
        public long maxMsgSeq_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public List<Message> msgs_;
        /* access modifiers changed from: private */
        public int retCode_;
        /* access modifiers changed from: private */
        public Object targetGgid_;
        /* access modifiers changed from: private */
        public long targetMgid_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements SyncGroupMsgResponseOrBuilder {
            private int appid_;
            private int bitField0_;
            private Object currGuid_;
            private long currMuid_;
            private long maxMsgSeq_;
            private RepeatedFieldBuilder<Message, Builder, MessageOrBuilder> msgsBuilder_;
            private List<Message> msgs_;
            private int retCode_;
            private Object targetGgid_;
            private long targetMgid_;

            public static final Descriptor getDescriptor() {
                return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_SyncGroupMsgResponse_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_SyncGroupMsgResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(SyncGroupMsgResponse.class, Builder.class);
            }

            private Builder() {
                this.currGuid_ = "";
                this.targetGgid_ = "";
                this.msgs_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.currGuid_ = "";
                this.targetGgid_ = "";
                this.msgs_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (SyncGroupMsgResponse.alwaysUseFieldBuilders) {
                    getMsgsFieldBuilder();
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.appid_ = 0;
                this.bitField0_ &= -2;
                this.retCode_ = 0;
                this.bitField0_ &= -3;
                this.currGuid_ = "";
                this.bitField0_ &= -5;
                this.currMuid_ = 0;
                this.bitField0_ &= -9;
                this.targetGgid_ = "";
                this.bitField0_ &= -17;
                this.targetMgid_ = 0;
                this.bitField0_ &= -33;
                this.maxMsgSeq_ = 0;
                this.bitField0_ &= -65;
                if (this.msgsBuilder_ == null) {
                    this.msgs_ = Collections.emptyList();
                    this.bitField0_ &= -129;
                } else {
                    this.msgsBuilder_.clear();
                }
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_SyncGroupMsgResponse_descriptor;
            }

            public SyncGroupMsgResponse getDefaultInstanceForType() {
                return SyncGroupMsgResponse.getDefaultInstance();
            }

            public SyncGroupMsgResponse build() {
                SyncGroupMsgResponse buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public SyncGroupMsgResponse buildPartial() {
                int i = 1;
                SyncGroupMsgResponse syncGroupMsgResponse = new SyncGroupMsgResponse((com.google.protobuf.GeneratedMessage.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                syncGroupMsgResponse.appid_ = this.appid_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                syncGroupMsgResponse.retCode_ = this.retCode_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                syncGroupMsgResponse.currGuid_ = this.currGuid_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                syncGroupMsgResponse.currMuid_ = this.currMuid_;
                if ((i2 & 16) == 16) {
                    i |= 16;
                }
                syncGroupMsgResponse.targetGgid_ = this.targetGgid_;
                if ((i2 & 32) == 32) {
                    i |= 32;
                }
                syncGroupMsgResponse.targetMgid_ = this.targetMgid_;
                if ((i2 & 64) == 64) {
                    i |= 64;
                }
                syncGroupMsgResponse.maxMsgSeq_ = this.maxMsgSeq_;
                if (this.msgsBuilder_ == null) {
                    if ((this.bitField0_ & 128) == 128) {
                        this.msgs_ = Collections.unmodifiableList(this.msgs_);
                        this.bitField0_ &= -129;
                    }
                    syncGroupMsgResponse.msgs_ = this.msgs_;
                } else {
                    syncGroupMsgResponse.msgs_ = this.msgsBuilder_.build();
                }
                syncGroupMsgResponse.bitField0_ = i;
                onBuilt();
                return syncGroupMsgResponse;
            }

            public Builder mergeFrom(com.google.protobuf.Message message) {
                if (message instanceof SyncGroupMsgResponse) {
                    return mergeFrom((SyncGroupMsgResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(SyncGroupMsgResponse syncGroupMsgResponse) {
                RepeatedFieldBuilder<Message, Builder, MessageOrBuilder> repeatedFieldBuilder = null;
                if (syncGroupMsgResponse != SyncGroupMsgResponse.getDefaultInstance()) {
                    if (syncGroupMsgResponse.hasAppid()) {
                        setAppid(syncGroupMsgResponse.getAppid());
                    }
                    if (syncGroupMsgResponse.hasRetCode()) {
                        setRetCode(syncGroupMsgResponse.getRetCode());
                    }
                    if (syncGroupMsgResponse.hasCurrGuid()) {
                        this.bitField0_ |= 4;
                        this.currGuid_ = syncGroupMsgResponse.currGuid_;
                        onChanged();
                    }
                    if (syncGroupMsgResponse.hasCurrMuid()) {
                        setCurrMuid(syncGroupMsgResponse.getCurrMuid());
                    }
                    if (syncGroupMsgResponse.hasTargetGgid()) {
                        this.bitField0_ |= 16;
                        this.targetGgid_ = syncGroupMsgResponse.targetGgid_;
                        onChanged();
                    }
                    if (syncGroupMsgResponse.hasTargetMgid()) {
                        setTargetMgid(syncGroupMsgResponse.getTargetMgid());
                    }
                    if (syncGroupMsgResponse.hasMaxMsgSeq()) {
                        setMaxMsgSeq(syncGroupMsgResponse.getMaxMsgSeq());
                    }
                    if (this.msgsBuilder_ == null) {
                        if (!syncGroupMsgResponse.msgs_.isEmpty()) {
                            if (this.msgs_.isEmpty()) {
                                this.msgs_ = syncGroupMsgResponse.msgs_;
                                this.bitField0_ &= -129;
                            } else {
                                ensureMsgsIsMutable();
                                this.msgs_.addAll(syncGroupMsgResponse.msgs_);
                            }
                            onChanged();
                        }
                    } else if (!syncGroupMsgResponse.msgs_.isEmpty()) {
                        if (this.msgsBuilder_.isEmpty()) {
                            this.msgsBuilder_.dispose();
                            this.msgsBuilder_ = null;
                            this.msgs_ = syncGroupMsgResponse.msgs_;
                            this.bitField0_ &= -129;
                            if (SyncGroupMsgResponse.alwaysUseFieldBuilders) {
                                repeatedFieldBuilder = getMsgsFieldBuilder();
                            }
                            this.msgsBuilder_ = repeatedFieldBuilder;
                        } else {
                            this.msgsBuilder_.addAllMessages(syncGroupMsgResponse.msgs_);
                        }
                    }
                    mergeUnknownFields(syncGroupMsgResponse.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                if (!hasAppid() || !hasRetCode() || !hasCurrGuid() || !hasTargetGgid()) {
                    return false;
                }
                for (int i = 0; i < getMsgsCount(); i++) {
                    if (!getMsgs(i).isInitialized()) {
                        return false;
                    }
                }
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                SyncGroupMsgResponse syncGroupMsgResponse;
                SyncGroupMsgResponse syncGroupMsgResponse2;
                try {
                    SyncGroupMsgResponse syncGroupMsgResponse3 = (SyncGroupMsgResponse) SyncGroupMsgResponse.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (syncGroupMsgResponse3 != null) {
                        mergeFrom(syncGroupMsgResponse3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    syncGroupMsgResponse2 = (SyncGroupMsgResponse) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    syncGroupMsgResponse = syncGroupMsgResponse2;
                    th = th2;
                }
                if (syncGroupMsgResponse != null) {
                    mergeFrom(syncGroupMsgResponse);
                }
                throw th;
            }

            public boolean hasAppid() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getAppid() {
                return this.appid_;
            }

            public Builder setAppid(int i) {
                this.bitField0_ |= 1;
                this.appid_ = i;
                onChanged();
                return this;
            }

            public Builder clearAppid() {
                this.bitField0_ &= -2;
                this.appid_ = 0;
                onChanged();
                return this;
            }

            public boolean hasRetCode() {
                return (this.bitField0_ & 2) == 2;
            }

            public int getRetCode() {
                return this.retCode_;
            }

            public Builder setRetCode(int i) {
                this.bitField0_ |= 2;
                this.retCode_ = i;
                onChanged();
                return this;
            }

            public Builder clearRetCode() {
                this.bitField0_ &= -3;
                this.retCode_ = 0;
                onChanged();
                return this;
            }

            public boolean hasCurrGuid() {
                return (this.bitField0_ & 4) == 4;
            }

            public String getCurrGuid() {
                Object obj = this.currGuid_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.currGuid_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getCurrGuidBytes() {
                Object obj = this.currGuid_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.currGuid_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setCurrGuid(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.currGuid_ = str;
                onChanged();
                return this;
            }

            public Builder clearCurrGuid() {
                this.bitField0_ &= -5;
                this.currGuid_ = SyncGroupMsgResponse.getDefaultInstance().getCurrGuid();
                onChanged();
                return this;
            }

            public Builder setCurrGuidBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.currGuid_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasCurrMuid() {
                return (this.bitField0_ & 8) == 8;
            }

            public long getCurrMuid() {
                return this.currMuid_;
            }

            public Builder setCurrMuid(long j) {
                this.bitField0_ |= 8;
                this.currMuid_ = j;
                onChanged();
                return this;
            }

            public Builder clearCurrMuid() {
                this.bitField0_ &= -9;
                this.currMuid_ = 0;
                onChanged();
                return this;
            }

            public boolean hasTargetGgid() {
                return (this.bitField0_ & 16) == 16;
            }

            public String getTargetGgid() {
                Object obj = this.targetGgid_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.targetGgid_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getTargetGgidBytes() {
                Object obj = this.targetGgid_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.targetGgid_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setTargetGgid(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 16;
                this.targetGgid_ = str;
                onChanged();
                return this;
            }

            public Builder clearTargetGgid() {
                this.bitField0_ &= -17;
                this.targetGgid_ = SyncGroupMsgResponse.getDefaultInstance().getTargetGgid();
                onChanged();
                return this;
            }

            public Builder setTargetGgidBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 16;
                this.targetGgid_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasTargetMgid() {
                return (this.bitField0_ & 32) == 32;
            }

            public long getTargetMgid() {
                return this.targetMgid_;
            }

            public Builder setTargetMgid(long j) {
                this.bitField0_ |= 32;
                this.targetMgid_ = j;
                onChanged();
                return this;
            }

            public Builder clearTargetMgid() {
                this.bitField0_ &= -33;
                this.targetMgid_ = 0;
                onChanged();
                return this;
            }

            public boolean hasMaxMsgSeq() {
                return (this.bitField0_ & 64) == 64;
            }

            public long getMaxMsgSeq() {
                return this.maxMsgSeq_;
            }

            public Builder setMaxMsgSeq(long j) {
                this.bitField0_ |= 64;
                this.maxMsgSeq_ = j;
                onChanged();
                return this;
            }

            public Builder clearMaxMsgSeq() {
                this.bitField0_ &= -65;
                this.maxMsgSeq_ = 0;
                onChanged();
                return this;
            }

            private void ensureMsgsIsMutable() {
                if ((this.bitField0_ & 128) != 128) {
                    this.msgs_ = new ArrayList(this.msgs_);
                    this.bitField0_ |= 128;
                }
            }

            public List<Message> getMsgsList() {
                if (this.msgsBuilder_ == null) {
                    return Collections.unmodifiableList(this.msgs_);
                }
                return this.msgsBuilder_.getMessageList();
            }

            public int getMsgsCount() {
                if (this.msgsBuilder_ == null) {
                    return this.msgs_.size();
                }
                return this.msgsBuilder_.getCount();
            }

            public Message getMsgs(int i) {
                if (this.msgsBuilder_ == null) {
                    return (Message) this.msgs_.get(i);
                }
                return (Message) this.msgsBuilder_.getMessage(i);
            }

            public Builder setMsgs(int i, Message message) {
                if (this.msgsBuilder_ != null) {
                    this.msgsBuilder_.setMessage(i, message);
                } else if (message == null) {
                    throw new NullPointerException();
                } else {
                    ensureMsgsIsMutable();
                    this.msgs_.set(i, message);
                    onChanged();
                }
                return this;
            }

            public Builder setMsgs(int i, Builder builder) {
                if (this.msgsBuilder_ == null) {
                    ensureMsgsIsMutable();
                    this.msgs_.set(i, builder.build());
                    onChanged();
                } else {
                    this.msgsBuilder_.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addMsgs(Message message) {
                if (this.msgsBuilder_ != null) {
                    this.msgsBuilder_.addMessage(message);
                } else if (message == null) {
                    throw new NullPointerException();
                } else {
                    ensureMsgsIsMutable();
                    this.msgs_.add(message);
                    onChanged();
                }
                return this;
            }

            public Builder addMsgs(int i, Message message) {
                if (this.msgsBuilder_ != null) {
                    this.msgsBuilder_.addMessage(i, message);
                } else if (message == null) {
                    throw new NullPointerException();
                } else {
                    ensureMsgsIsMutable();
                    this.msgs_.add(i, message);
                    onChanged();
                }
                return this;
            }

            public Builder addMsgs(Builder builder) {
                if (this.msgsBuilder_ == null) {
                    ensureMsgsIsMutable();
                    this.msgs_.add(builder.build());
                    onChanged();
                } else {
                    this.msgsBuilder_.addMessage(builder.build());
                }
                return this;
            }

            public Builder addMsgs(int i, Builder builder) {
                if (this.msgsBuilder_ == null) {
                    ensureMsgsIsMutable();
                    this.msgs_.add(i, builder.build());
                    onChanged();
                } else {
                    this.msgsBuilder_.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllMsgs(Iterable<? extends Message> iterable) {
                if (this.msgsBuilder_ == null) {
                    ensureMsgsIsMutable();
                    com.google.protobuf.AbstractMessageLite.Builder.addAll(iterable, this.msgs_);
                    onChanged();
                } else {
                    this.msgsBuilder_.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearMsgs() {
                if (this.msgsBuilder_ == null) {
                    this.msgs_ = Collections.emptyList();
                    this.bitField0_ &= -129;
                    onChanged();
                } else {
                    this.msgsBuilder_.clear();
                }
                return this;
            }

            public Builder removeMsgs(int i) {
                if (this.msgsBuilder_ == null) {
                    ensureMsgsIsMutable();
                    this.msgs_.remove(i);
                    onChanged();
                } else {
                    this.msgsBuilder_.remove(i);
                }
                return this;
            }

            public Builder getMsgsBuilder(int i) {
                return (Builder) getMsgsFieldBuilder().getBuilder(i);
            }

            public MessageOrBuilder getMsgsOrBuilder(int i) {
                if (this.msgsBuilder_ == null) {
                    return (MessageOrBuilder) this.msgs_.get(i);
                }
                return (MessageOrBuilder) this.msgsBuilder_.getMessageOrBuilder(i);
            }

            public List<? extends MessageOrBuilder> getMsgsOrBuilderList() {
                if (this.msgsBuilder_ != null) {
                    return this.msgsBuilder_.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.msgs_);
            }

            public Builder addMsgsBuilder() {
                return (Builder) getMsgsFieldBuilder().addBuilder(Message.getDefaultInstance());
            }

            public Builder addMsgsBuilder(int i) {
                return (Builder) getMsgsFieldBuilder().addBuilder(i, Message.getDefaultInstance());
            }

            public List<Builder> getMsgsBuilderList() {
                return getMsgsFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<Message, Builder, MessageOrBuilder> getMsgsFieldBuilder() {
                if (this.msgsBuilder_ == null) {
                    this.msgsBuilder_ = new RepeatedFieldBuilder<>(this.msgs_, (this.bitField0_ & 128) == 128, getParentForChildren(), isClean());
                    this.msgs_ = null;
                }
                return this.msgsBuilder_;
            }
        }

        private SyncGroupMsgResponse(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private SyncGroupMsgResponse(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static SyncGroupMsgResponse getDefaultInstance() {
            return defaultInstance;
        }

        public SyncGroupMsgResponse getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private SyncGroupMsgResponse(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.appid_ = codedInputStream.readUInt32();
                            break;
                        case 16:
                            this.bitField0_ |= 2;
                            this.retCode_ = codedInputStream.readUInt32();
                            break;
                        case 26:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 4;
                            this.currGuid_ = readBytes;
                            break;
                        case 32:
                            this.bitField0_ |= 8;
                            this.currMuid_ = codedInputStream.readUInt64();
                            break;
                        case 42:
                            ByteString readBytes2 = codedInputStream.readBytes();
                            this.bitField0_ |= 16;
                            this.targetGgid_ = readBytes2;
                            break;
                        case 48:
                            this.bitField0_ |= 32;
                            this.targetMgid_ = codedInputStream.readUInt64();
                            break;
                        case 56:
                            this.bitField0_ |= 64;
                            this.maxMsgSeq_ = codedInputStream.readUInt64();
                            break;
                        case 66:
                            if (!(z2 & true)) {
                                this.msgs_ = new ArrayList();
                                z2 |= true;
                            }
                            this.msgs_.add(codedInputStream.readMessage(Message.PARSER, extensionRegistryLite));
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
                        this.msgs_ = Collections.unmodifiableList(this.msgs_);
                    }
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            if (z2 & true) {
                this.msgs_ = Collections.unmodifiableList(this.msgs_);
            }
            this.unknownFields = newBuilder.build();
            makeExtensionsImmutable();
        }

        public static final Descriptor getDescriptor() {
            return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_SyncGroupMsgResponse_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_SyncGroupMsgResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(SyncGroupMsgResponse.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<SyncGroupMsgResponse> getParserForType() {
            return PARSER;
        }

        public boolean hasAppid() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getAppid() {
            return this.appid_;
        }

        public boolean hasRetCode() {
            return (this.bitField0_ & 2) == 2;
        }

        public int getRetCode() {
            return this.retCode_;
        }

        public boolean hasCurrGuid() {
            return (this.bitField0_ & 4) == 4;
        }

        public String getCurrGuid() {
            Object obj = this.currGuid_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.currGuid_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getCurrGuidBytes() {
            Object obj = this.currGuid_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.currGuid_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasCurrMuid() {
            return (this.bitField0_ & 8) == 8;
        }

        public long getCurrMuid() {
            return this.currMuid_;
        }

        public boolean hasTargetGgid() {
            return (this.bitField0_ & 16) == 16;
        }

        public String getTargetGgid() {
            Object obj = this.targetGgid_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.targetGgid_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getTargetGgidBytes() {
            Object obj = this.targetGgid_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.targetGgid_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasTargetMgid() {
            return (this.bitField0_ & 32) == 32;
        }

        public long getTargetMgid() {
            return this.targetMgid_;
        }

        public boolean hasMaxMsgSeq() {
            return (this.bitField0_ & 64) == 64;
        }

        public long getMaxMsgSeq() {
            return this.maxMsgSeq_;
        }

        public List<Message> getMsgsList() {
            return this.msgs_;
        }

        public List<? extends MessageOrBuilder> getMsgsOrBuilderList() {
            return this.msgs_;
        }

        public int getMsgsCount() {
            return this.msgs_.size();
        }

        public Message getMsgs(int i) {
            return (Message) this.msgs_.get(i);
        }

        public MessageOrBuilder getMsgsOrBuilder(int i) {
            return (MessageOrBuilder) this.msgs_.get(i);
        }

        private void initFields() {
            this.appid_ = 0;
            this.retCode_ = 0;
            this.currGuid_ = "";
            this.currMuid_ = 0;
            this.targetGgid_ = "";
            this.targetMgid_ = 0;
            this.maxMsgSeq_ = 0;
            this.msgs_ = Collections.emptyList();
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasAppid()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasRetCode()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasCurrGuid()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasTargetGgid()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else {
                for (int i = 0; i < getMsgsCount(); i++) {
                    if (!getMsgs(i).isInitialized()) {
                        this.memoizedIsInitialized = 0;
                        return false;
                    }
                }
                this.memoizedIsInitialized = 1;
                return true;
            }
        }

        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeUInt32(1, this.appid_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeUInt32(2, this.retCode_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBytes(3, getCurrGuidBytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeUInt64(4, this.currMuid_);
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeBytes(5, getTargetGgidBytes());
            }
            if ((this.bitField0_ & 32) == 32) {
                codedOutputStream.writeUInt64(6, this.targetMgid_);
            }
            if ((this.bitField0_ & 64) == 64) {
                codedOutputStream.writeUInt64(7, this.maxMsgSeq_);
            }
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.msgs_.size()) {
                    codedOutputStream.writeMessage(8, (MessageLite) this.msgs_.get(i2));
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
                i = CodedOutputStream.computeUInt32Size(1, this.appid_) + 0;
            } else {
                i = 0;
            }
            if ((this.bitField0_ & 2) == 2) {
                i += CodedOutputStream.computeUInt32Size(2, this.retCode_);
            }
            if ((this.bitField0_ & 4) == 4) {
                i += CodedOutputStream.computeBytesSize(3, getCurrGuidBytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                i += CodedOutputStream.computeUInt64Size(4, this.currMuid_);
            }
            if ((this.bitField0_ & 16) == 16) {
                i += CodedOutputStream.computeBytesSize(5, getTargetGgidBytes());
            }
            if ((this.bitField0_ & 32) == 32) {
                i += CodedOutputStream.computeUInt64Size(6, this.targetMgid_);
            }
            if ((this.bitField0_ & 64) == 64) {
                i += CodedOutputStream.computeUInt64Size(7, this.maxMsgSeq_);
            }
            while (true) {
                int i4 = i;
                if (i2 < this.msgs_.size()) {
                    i = CodedOutputStream.computeMessageSize(8, (MessageLite) this.msgs_.get(i2)) + i4;
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

        public static SyncGroupMsgResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (SyncGroupMsgResponse) PARSER.parseFrom(byteString);
        }

        public static SyncGroupMsgResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SyncGroupMsgResponse) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static SyncGroupMsgResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (SyncGroupMsgResponse) PARSER.parseFrom(bArr);
        }

        public static SyncGroupMsgResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SyncGroupMsgResponse) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static SyncGroupMsgResponse parseFrom(InputStream inputStream) throws IOException {
            return (SyncGroupMsgResponse) PARSER.parseFrom(inputStream);
        }

        public static SyncGroupMsgResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SyncGroupMsgResponse) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static SyncGroupMsgResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (SyncGroupMsgResponse) PARSER.parseDelimitedFrom(inputStream);
        }

        public static SyncGroupMsgResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SyncGroupMsgResponse) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static SyncGroupMsgResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (SyncGroupMsgResponse) PARSER.parseFrom(codedInputStream);
        }

        public static SyncGroupMsgResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SyncGroupMsgResponse) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(SyncGroupMsgResponse syncGroupMsgResponse) {
            return newBuilder().mergeFrom(syncGroupMsgResponse);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface SyncGroupMsgResponseOrBuilder extends com.google.protobuf.MessageOrBuilder {
        int getAppid();

        String getCurrGuid();

        ByteString getCurrGuidBytes();

        long getCurrMuid();

        long getMaxMsgSeq();

        Message getMsgs(int i);

        int getMsgsCount();

        List<Message> getMsgsList();

        MessageOrBuilder getMsgsOrBuilder(int i);

        List<? extends MessageOrBuilder> getMsgsOrBuilderList();

        int getRetCode();

        String getTargetGgid();

        ByteString getTargetGgidBytes();

        long getTargetMgid();

        boolean hasAppid();

        boolean hasCurrGuid();

        boolean hasCurrMuid();

        boolean hasMaxMsgSeq();

        boolean hasRetCode();

        boolean hasTargetGgid();

        boolean hasTargetMgid();
    }

    public static final class SyncUserMsgRequest extends GeneratedMessage implements SyncUserMsgRequestOrBuilder {
        public static final int APPID_FIELD_NUMBER = 1;
        public static final int CURRGUID_FIELD_NUMBER = 2;
        public static final int LIMIT_FIELD_NUMBER = 4;
        public static final int MAXRECVSEQ_FIELD_NUMBER = 3;
        public static Parser<SyncUserMsgRequest> PARSER = new AbstractParser<SyncUserMsgRequest>() {
            public SyncUserMsgRequest parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new SyncUserMsgRequest(codedInputStream, extensionRegistryLite);
            }
        };
        private static final SyncUserMsgRequest defaultInstance = new SyncUserMsgRequest(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int appid_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public Object currGuid_;
        /* access modifiers changed from: private */
        public int limit_;
        /* access modifiers changed from: private */
        public long maxRecvSeq_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements SyncUserMsgRequestOrBuilder {
            private int appid_;
            private int bitField0_;
            private Object currGuid_;
            private int limit_;
            private long maxRecvSeq_;

            public static final Descriptor getDescriptor() {
                return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_SyncUserMsgRequest_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_SyncUserMsgRequest_fieldAccessorTable.ensureFieldAccessorsInitialized(SyncUserMsgRequest.class, Builder.class);
            }

            private Builder() {
                this.currGuid_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.currGuid_ = "";
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (SyncUserMsgRequest.alwaysUseFieldBuilders) {
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.appid_ = 0;
                this.bitField0_ &= -2;
                this.currGuid_ = "";
                this.bitField0_ &= -3;
                this.maxRecvSeq_ = 0;
                this.bitField0_ &= -5;
                this.limit_ = 0;
                this.bitField0_ &= -9;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_SyncUserMsgRequest_descriptor;
            }

            public SyncUserMsgRequest getDefaultInstanceForType() {
                return SyncUserMsgRequest.getDefaultInstance();
            }

            public SyncUserMsgRequest build() {
                SyncUserMsgRequest buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public SyncUserMsgRequest buildPartial() {
                int i = 1;
                SyncUserMsgRequest syncUserMsgRequest = new SyncUserMsgRequest((com.google.protobuf.GeneratedMessage.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                syncUserMsgRequest.appid_ = this.appid_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                syncUserMsgRequest.currGuid_ = this.currGuid_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                syncUserMsgRequest.maxRecvSeq_ = this.maxRecvSeq_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                syncUserMsgRequest.limit_ = this.limit_;
                syncUserMsgRequest.bitField0_ = i;
                onBuilt();
                return syncUserMsgRequest;
            }

            public Builder mergeFrom(com.google.protobuf.Message message) {
                if (message instanceof SyncUserMsgRequest) {
                    return mergeFrom((SyncUserMsgRequest) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(SyncUserMsgRequest syncUserMsgRequest) {
                if (syncUserMsgRequest != SyncUserMsgRequest.getDefaultInstance()) {
                    if (syncUserMsgRequest.hasAppid()) {
                        setAppid(syncUserMsgRequest.getAppid());
                    }
                    if (syncUserMsgRequest.hasCurrGuid()) {
                        this.bitField0_ |= 2;
                        this.currGuid_ = syncUserMsgRequest.currGuid_;
                        onChanged();
                    }
                    if (syncUserMsgRequest.hasMaxRecvSeq()) {
                        setMaxRecvSeq(syncUserMsgRequest.getMaxRecvSeq());
                    }
                    if (syncUserMsgRequest.hasLimit()) {
                        setLimit(syncUserMsgRequest.getLimit());
                    }
                    mergeUnknownFields(syncUserMsgRequest.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasAppid() && hasCurrGuid() && hasMaxRecvSeq()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                SyncUserMsgRequest syncUserMsgRequest;
                SyncUserMsgRequest syncUserMsgRequest2;
                try {
                    SyncUserMsgRequest syncUserMsgRequest3 = (SyncUserMsgRequest) SyncUserMsgRequest.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (syncUserMsgRequest3 != null) {
                        mergeFrom(syncUserMsgRequest3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    syncUserMsgRequest2 = (SyncUserMsgRequest) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    syncUserMsgRequest = syncUserMsgRequest2;
                    th = th2;
                }
                if (syncUserMsgRequest != null) {
                    mergeFrom(syncUserMsgRequest);
                }
                throw th;
            }

            public boolean hasAppid() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getAppid() {
                return this.appid_;
            }

            public Builder setAppid(int i) {
                this.bitField0_ |= 1;
                this.appid_ = i;
                onChanged();
                return this;
            }

            public Builder clearAppid() {
                this.bitField0_ &= -2;
                this.appid_ = 0;
                onChanged();
                return this;
            }

            public boolean hasCurrGuid() {
                return (this.bitField0_ & 2) == 2;
            }

            public String getCurrGuid() {
                Object obj = this.currGuid_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.currGuid_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getCurrGuidBytes() {
                Object obj = this.currGuid_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.currGuid_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setCurrGuid(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.currGuid_ = str;
                onChanged();
                return this;
            }

            public Builder clearCurrGuid() {
                this.bitField0_ &= -3;
                this.currGuid_ = SyncUserMsgRequest.getDefaultInstance().getCurrGuid();
                onChanged();
                return this;
            }

            public Builder setCurrGuidBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.currGuid_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasMaxRecvSeq() {
                return (this.bitField0_ & 4) == 4;
            }

            public long getMaxRecvSeq() {
                return this.maxRecvSeq_;
            }

            public Builder setMaxRecvSeq(long j) {
                this.bitField0_ |= 4;
                this.maxRecvSeq_ = j;
                onChanged();
                return this;
            }

            public Builder clearMaxRecvSeq() {
                this.bitField0_ &= -5;
                this.maxRecvSeq_ = 0;
                onChanged();
                return this;
            }

            public boolean hasLimit() {
                return (this.bitField0_ & 8) == 8;
            }

            public int getLimit() {
                return this.limit_;
            }

            public Builder setLimit(int i) {
                this.bitField0_ |= 8;
                this.limit_ = i;
                onChanged();
                return this;
            }

            public Builder clearLimit() {
                this.bitField0_ &= -9;
                this.limit_ = 0;
                onChanged();
                return this;
            }
        }

        private SyncUserMsgRequest(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private SyncUserMsgRequest(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static SyncUserMsgRequest getDefaultInstance() {
            return defaultInstance;
        }

        public SyncUserMsgRequest getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private SyncUserMsgRequest(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.appid_ = codedInputStream.readUInt32();
                            break;
                        case 18:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 2;
                            this.currGuid_ = readBytes;
                            break;
                        case 24:
                            this.bitField0_ |= 4;
                            this.maxRecvSeq_ = codedInputStream.readUInt64();
                            break;
                        case 32:
                            this.bitField0_ |= 8;
                            this.limit_ = codedInputStream.readUInt32();
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
            return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_SyncUserMsgRequest_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_SyncUserMsgRequest_fieldAccessorTable.ensureFieldAccessorsInitialized(SyncUserMsgRequest.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<SyncUserMsgRequest> getParserForType() {
            return PARSER;
        }

        public boolean hasAppid() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getAppid() {
            return this.appid_;
        }

        public boolean hasCurrGuid() {
            return (this.bitField0_ & 2) == 2;
        }

        public String getCurrGuid() {
            Object obj = this.currGuid_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.currGuid_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getCurrGuidBytes() {
            Object obj = this.currGuid_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.currGuid_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasMaxRecvSeq() {
            return (this.bitField0_ & 4) == 4;
        }

        public long getMaxRecvSeq() {
            return this.maxRecvSeq_;
        }

        public boolean hasLimit() {
            return (this.bitField0_ & 8) == 8;
        }

        public int getLimit() {
            return this.limit_;
        }

        private void initFields() {
            this.appid_ = 0;
            this.currGuid_ = "";
            this.maxRecvSeq_ = 0;
            this.limit_ = 0;
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasAppid()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasCurrGuid()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasMaxRecvSeq()) {
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
                codedOutputStream.writeUInt32(1, this.appid_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeBytes(2, getCurrGuidBytes());
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeUInt64(3, this.maxRecvSeq_);
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeUInt32(4, this.limit_);
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
                i2 = 0 + CodedOutputStream.computeUInt32Size(1, this.appid_);
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeBytesSize(2, getCurrGuidBytes());
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeUInt64Size(3, this.maxRecvSeq_);
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeUInt32Size(4, this.limit_);
            }
            int serializedSize = i2 + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static SyncUserMsgRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (SyncUserMsgRequest) PARSER.parseFrom(byteString);
        }

        public static SyncUserMsgRequest parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SyncUserMsgRequest) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static SyncUserMsgRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (SyncUserMsgRequest) PARSER.parseFrom(bArr);
        }

        public static SyncUserMsgRequest parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SyncUserMsgRequest) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static SyncUserMsgRequest parseFrom(InputStream inputStream) throws IOException {
            return (SyncUserMsgRequest) PARSER.parseFrom(inputStream);
        }

        public static SyncUserMsgRequest parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SyncUserMsgRequest) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static SyncUserMsgRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (SyncUserMsgRequest) PARSER.parseDelimitedFrom(inputStream);
        }

        public static SyncUserMsgRequest parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SyncUserMsgRequest) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static SyncUserMsgRequest parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (SyncUserMsgRequest) PARSER.parseFrom(codedInputStream);
        }

        public static SyncUserMsgRequest parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SyncUserMsgRequest) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(SyncUserMsgRequest syncUserMsgRequest) {
            return newBuilder().mergeFrom(syncUserMsgRequest);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface SyncUserMsgRequestOrBuilder extends com.google.protobuf.MessageOrBuilder {
        int getAppid();

        String getCurrGuid();

        ByteString getCurrGuidBytes();

        int getLimit();

        long getMaxRecvSeq();

        boolean hasAppid();

        boolean hasCurrGuid();

        boolean hasLimit();

        boolean hasMaxRecvSeq();
    }

    public static final class SyncUserMsgResponse extends GeneratedMessage implements SyncUserMsgResponseOrBuilder {
        public static final int APPID_FIELD_NUMBER = 1;
        public static final int CURRGUID_FIELD_NUMBER = 3;
        public static final int CURRMUID_FIELD_NUMBER = 4;
        public static final int MAXMSGSEQ_FIELD_NUMBER = 5;
        public static final int MSGS_FIELD_NUMBER = 6;
        public static Parser<SyncUserMsgResponse> PARSER = new AbstractParser<SyncUserMsgResponse>() {
            public SyncUserMsgResponse parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new SyncUserMsgResponse(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int RETCODE_FIELD_NUMBER = 2;
        private static final SyncUserMsgResponse defaultInstance = new SyncUserMsgResponse(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int appid_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public Object currGuid_;
        /* access modifiers changed from: private */
        public long currMuid_;
        /* access modifiers changed from: private */
        public long maxMsgSeq_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public List<Message> msgs_;
        /* access modifiers changed from: private */
        public int retCode_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements SyncUserMsgResponseOrBuilder {
            private int appid_;
            private int bitField0_;
            private Object currGuid_;
            private long currMuid_;
            private long maxMsgSeq_;
            private RepeatedFieldBuilder<Message, Builder, MessageOrBuilder> msgsBuilder_;
            private List<Message> msgs_;
            private int retCode_;

            public static final Descriptor getDescriptor() {
                return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_SyncUserMsgResponse_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_SyncUserMsgResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(SyncUserMsgResponse.class, Builder.class);
            }

            private Builder() {
                this.currGuid_ = "";
                this.msgs_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.currGuid_ = "";
                this.msgs_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (SyncUserMsgResponse.alwaysUseFieldBuilders) {
                    getMsgsFieldBuilder();
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.appid_ = 0;
                this.bitField0_ &= -2;
                this.retCode_ = 0;
                this.bitField0_ &= -3;
                this.currGuid_ = "";
                this.bitField0_ &= -5;
                this.currMuid_ = 0;
                this.bitField0_ &= -9;
                this.maxMsgSeq_ = 0;
                this.bitField0_ &= -17;
                if (this.msgsBuilder_ == null) {
                    this.msgs_ = Collections.emptyList();
                    this.bitField0_ &= -33;
                } else {
                    this.msgsBuilder_.clear();
                }
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_SyncUserMsgResponse_descriptor;
            }

            public SyncUserMsgResponse getDefaultInstanceForType() {
                return SyncUserMsgResponse.getDefaultInstance();
            }

            public SyncUserMsgResponse build() {
                SyncUserMsgResponse buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public SyncUserMsgResponse buildPartial() {
                int i = 1;
                SyncUserMsgResponse syncUserMsgResponse = new SyncUserMsgResponse((com.google.protobuf.GeneratedMessage.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                syncUserMsgResponse.appid_ = this.appid_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                syncUserMsgResponse.retCode_ = this.retCode_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                syncUserMsgResponse.currGuid_ = this.currGuid_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                syncUserMsgResponse.currMuid_ = this.currMuid_;
                if ((i2 & 16) == 16) {
                    i |= 16;
                }
                syncUserMsgResponse.maxMsgSeq_ = this.maxMsgSeq_;
                if (this.msgsBuilder_ == null) {
                    if ((this.bitField0_ & 32) == 32) {
                        this.msgs_ = Collections.unmodifiableList(this.msgs_);
                        this.bitField0_ &= -33;
                    }
                    syncUserMsgResponse.msgs_ = this.msgs_;
                } else {
                    syncUserMsgResponse.msgs_ = this.msgsBuilder_.build();
                }
                syncUserMsgResponse.bitField0_ = i;
                onBuilt();
                return syncUserMsgResponse;
            }

            public Builder mergeFrom(com.google.protobuf.Message message) {
                if (message instanceof SyncUserMsgResponse) {
                    return mergeFrom((SyncUserMsgResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(SyncUserMsgResponse syncUserMsgResponse) {
                RepeatedFieldBuilder<Message, Builder, MessageOrBuilder> repeatedFieldBuilder = null;
                if (syncUserMsgResponse != SyncUserMsgResponse.getDefaultInstance()) {
                    if (syncUserMsgResponse.hasAppid()) {
                        setAppid(syncUserMsgResponse.getAppid());
                    }
                    if (syncUserMsgResponse.hasRetCode()) {
                        setRetCode(syncUserMsgResponse.getRetCode());
                    }
                    if (syncUserMsgResponse.hasCurrGuid()) {
                        this.bitField0_ |= 4;
                        this.currGuid_ = syncUserMsgResponse.currGuid_;
                        onChanged();
                    }
                    if (syncUserMsgResponse.hasCurrMuid()) {
                        setCurrMuid(syncUserMsgResponse.getCurrMuid());
                    }
                    if (syncUserMsgResponse.hasMaxMsgSeq()) {
                        setMaxMsgSeq(syncUserMsgResponse.getMaxMsgSeq());
                    }
                    if (this.msgsBuilder_ == null) {
                        if (!syncUserMsgResponse.msgs_.isEmpty()) {
                            if (this.msgs_.isEmpty()) {
                                this.msgs_ = syncUserMsgResponse.msgs_;
                                this.bitField0_ &= -33;
                            } else {
                                ensureMsgsIsMutable();
                                this.msgs_.addAll(syncUserMsgResponse.msgs_);
                            }
                            onChanged();
                        }
                    } else if (!syncUserMsgResponse.msgs_.isEmpty()) {
                        if (this.msgsBuilder_.isEmpty()) {
                            this.msgsBuilder_.dispose();
                            this.msgsBuilder_ = null;
                            this.msgs_ = syncUserMsgResponse.msgs_;
                            this.bitField0_ &= -33;
                            if (SyncUserMsgResponse.alwaysUseFieldBuilders) {
                                repeatedFieldBuilder = getMsgsFieldBuilder();
                            }
                            this.msgsBuilder_ = repeatedFieldBuilder;
                        } else {
                            this.msgsBuilder_.addAllMessages(syncUserMsgResponse.msgs_);
                        }
                    }
                    mergeUnknownFields(syncUserMsgResponse.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                if (!hasAppid() || !hasRetCode() || !hasCurrGuid()) {
                    return false;
                }
                for (int i = 0; i < getMsgsCount(); i++) {
                    if (!getMsgs(i).isInitialized()) {
                        return false;
                    }
                }
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                SyncUserMsgResponse syncUserMsgResponse;
                SyncUserMsgResponse syncUserMsgResponse2;
                try {
                    SyncUserMsgResponse syncUserMsgResponse3 = (SyncUserMsgResponse) SyncUserMsgResponse.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (syncUserMsgResponse3 != null) {
                        mergeFrom(syncUserMsgResponse3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    syncUserMsgResponse2 = (SyncUserMsgResponse) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    syncUserMsgResponse = syncUserMsgResponse2;
                    th = th2;
                }
                if (syncUserMsgResponse != null) {
                    mergeFrom(syncUserMsgResponse);
                }
                throw th;
            }

            public boolean hasAppid() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getAppid() {
                return this.appid_;
            }

            public Builder setAppid(int i) {
                this.bitField0_ |= 1;
                this.appid_ = i;
                onChanged();
                return this;
            }

            public Builder clearAppid() {
                this.bitField0_ &= -2;
                this.appid_ = 0;
                onChanged();
                return this;
            }

            public boolean hasRetCode() {
                return (this.bitField0_ & 2) == 2;
            }

            public int getRetCode() {
                return this.retCode_;
            }

            public Builder setRetCode(int i) {
                this.bitField0_ |= 2;
                this.retCode_ = i;
                onChanged();
                return this;
            }

            public Builder clearRetCode() {
                this.bitField0_ &= -3;
                this.retCode_ = 0;
                onChanged();
                return this;
            }

            public boolean hasCurrGuid() {
                return (this.bitField0_ & 4) == 4;
            }

            public String getCurrGuid() {
                Object obj = this.currGuid_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.currGuid_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getCurrGuidBytes() {
                Object obj = this.currGuid_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.currGuid_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setCurrGuid(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.currGuid_ = str;
                onChanged();
                return this;
            }

            public Builder clearCurrGuid() {
                this.bitField0_ &= -5;
                this.currGuid_ = SyncUserMsgResponse.getDefaultInstance().getCurrGuid();
                onChanged();
                return this;
            }

            public Builder setCurrGuidBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.currGuid_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasCurrMuid() {
                return (this.bitField0_ & 8) == 8;
            }

            public long getCurrMuid() {
                return this.currMuid_;
            }

            public Builder setCurrMuid(long j) {
                this.bitField0_ |= 8;
                this.currMuid_ = j;
                onChanged();
                return this;
            }

            public Builder clearCurrMuid() {
                this.bitField0_ &= -9;
                this.currMuid_ = 0;
                onChanged();
                return this;
            }

            public boolean hasMaxMsgSeq() {
                return (this.bitField0_ & 16) == 16;
            }

            public long getMaxMsgSeq() {
                return this.maxMsgSeq_;
            }

            public Builder setMaxMsgSeq(long j) {
                this.bitField0_ |= 16;
                this.maxMsgSeq_ = j;
                onChanged();
                return this;
            }

            public Builder clearMaxMsgSeq() {
                this.bitField0_ &= -17;
                this.maxMsgSeq_ = 0;
                onChanged();
                return this;
            }

            private void ensureMsgsIsMutable() {
                if ((this.bitField0_ & 32) != 32) {
                    this.msgs_ = new ArrayList(this.msgs_);
                    this.bitField0_ |= 32;
                }
            }

            public List<Message> getMsgsList() {
                if (this.msgsBuilder_ == null) {
                    return Collections.unmodifiableList(this.msgs_);
                }
                return this.msgsBuilder_.getMessageList();
            }

            public int getMsgsCount() {
                if (this.msgsBuilder_ == null) {
                    return this.msgs_.size();
                }
                return this.msgsBuilder_.getCount();
            }

            public Message getMsgs(int i) {
                if (this.msgsBuilder_ == null) {
                    return (Message) this.msgs_.get(i);
                }
                return (Message) this.msgsBuilder_.getMessage(i);
            }

            public Builder setMsgs(int i, Message message) {
                if (this.msgsBuilder_ != null) {
                    this.msgsBuilder_.setMessage(i, message);
                } else if (message == null) {
                    throw new NullPointerException();
                } else {
                    ensureMsgsIsMutable();
                    this.msgs_.set(i, message);
                    onChanged();
                }
                return this;
            }

            public Builder setMsgs(int i, Builder builder) {
                if (this.msgsBuilder_ == null) {
                    ensureMsgsIsMutable();
                    this.msgs_.set(i, builder.build());
                    onChanged();
                } else {
                    this.msgsBuilder_.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addMsgs(Message message) {
                if (this.msgsBuilder_ != null) {
                    this.msgsBuilder_.addMessage(message);
                } else if (message == null) {
                    throw new NullPointerException();
                } else {
                    ensureMsgsIsMutable();
                    this.msgs_.add(message);
                    onChanged();
                }
                return this;
            }

            public Builder addMsgs(int i, Message message) {
                if (this.msgsBuilder_ != null) {
                    this.msgsBuilder_.addMessage(i, message);
                } else if (message == null) {
                    throw new NullPointerException();
                } else {
                    ensureMsgsIsMutable();
                    this.msgs_.add(i, message);
                    onChanged();
                }
                return this;
            }

            public Builder addMsgs(Builder builder) {
                if (this.msgsBuilder_ == null) {
                    ensureMsgsIsMutable();
                    this.msgs_.add(builder.build());
                    onChanged();
                } else {
                    this.msgsBuilder_.addMessage(builder.build());
                }
                return this;
            }

            public Builder addMsgs(int i, Builder builder) {
                if (this.msgsBuilder_ == null) {
                    ensureMsgsIsMutable();
                    this.msgs_.add(i, builder.build());
                    onChanged();
                } else {
                    this.msgsBuilder_.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllMsgs(Iterable<? extends Message> iterable) {
                if (this.msgsBuilder_ == null) {
                    ensureMsgsIsMutable();
                    com.google.protobuf.AbstractMessageLite.Builder.addAll(iterable, this.msgs_);
                    onChanged();
                } else {
                    this.msgsBuilder_.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearMsgs() {
                if (this.msgsBuilder_ == null) {
                    this.msgs_ = Collections.emptyList();
                    this.bitField0_ &= -33;
                    onChanged();
                } else {
                    this.msgsBuilder_.clear();
                }
                return this;
            }

            public Builder removeMsgs(int i) {
                if (this.msgsBuilder_ == null) {
                    ensureMsgsIsMutable();
                    this.msgs_.remove(i);
                    onChanged();
                } else {
                    this.msgsBuilder_.remove(i);
                }
                return this;
            }

            public Builder getMsgsBuilder(int i) {
                return (Builder) getMsgsFieldBuilder().getBuilder(i);
            }

            public MessageOrBuilder getMsgsOrBuilder(int i) {
                if (this.msgsBuilder_ == null) {
                    return (MessageOrBuilder) this.msgs_.get(i);
                }
                return (MessageOrBuilder) this.msgsBuilder_.getMessageOrBuilder(i);
            }

            public List<? extends MessageOrBuilder> getMsgsOrBuilderList() {
                if (this.msgsBuilder_ != null) {
                    return this.msgsBuilder_.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.msgs_);
            }

            public Builder addMsgsBuilder() {
                return (Builder) getMsgsFieldBuilder().addBuilder(Message.getDefaultInstance());
            }

            public Builder addMsgsBuilder(int i) {
                return (Builder) getMsgsFieldBuilder().addBuilder(i, Message.getDefaultInstance());
            }

            public List<Builder> getMsgsBuilderList() {
                return getMsgsFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<Message, Builder, MessageOrBuilder> getMsgsFieldBuilder() {
                if (this.msgsBuilder_ == null) {
                    this.msgsBuilder_ = new RepeatedFieldBuilder<>(this.msgs_, (this.bitField0_ & 32) == 32, getParentForChildren(), isClean());
                    this.msgs_ = null;
                }
                return this.msgsBuilder_;
            }
        }

        private SyncUserMsgResponse(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private SyncUserMsgResponse(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static SyncUserMsgResponse getDefaultInstance() {
            return defaultInstance;
        }

        public SyncUserMsgResponse getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private SyncUserMsgResponse(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.appid_ = codedInputStream.readUInt32();
                            break;
                        case 16:
                            this.bitField0_ |= 2;
                            this.retCode_ = codedInputStream.readUInt32();
                            break;
                        case 26:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 4;
                            this.currGuid_ = readBytes;
                            break;
                        case 32:
                            this.bitField0_ |= 8;
                            this.currMuid_ = codedInputStream.readUInt64();
                            break;
                        case 40:
                            this.bitField0_ |= 16;
                            this.maxMsgSeq_ = codedInputStream.readUInt64();
                            break;
                        case 50:
                            if (!(z2 & true)) {
                                this.msgs_ = new ArrayList();
                                z2 |= true;
                            }
                            this.msgs_.add(codedInputStream.readMessage(Message.PARSER, extensionRegistryLite));
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
                        this.msgs_ = Collections.unmodifiableList(this.msgs_);
                    }
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            if (z2 & true) {
                this.msgs_ = Collections.unmodifiableList(this.msgs_);
            }
            this.unknownFields = newBuilder.build();
            makeExtensionsImmutable();
        }

        public static final Descriptor getDescriptor() {
            return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_SyncUserMsgResponse_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return MiMsgProto.internal_static_com_mi_mimsgsdk_proto_SyncUserMsgResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(SyncUserMsgResponse.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<SyncUserMsgResponse> getParserForType() {
            return PARSER;
        }

        public boolean hasAppid() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getAppid() {
            return this.appid_;
        }

        public boolean hasRetCode() {
            return (this.bitField0_ & 2) == 2;
        }

        public int getRetCode() {
            return this.retCode_;
        }

        public boolean hasCurrGuid() {
            return (this.bitField0_ & 4) == 4;
        }

        public String getCurrGuid() {
            Object obj = this.currGuid_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.currGuid_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getCurrGuidBytes() {
            Object obj = this.currGuid_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.currGuid_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasCurrMuid() {
            return (this.bitField0_ & 8) == 8;
        }

        public long getCurrMuid() {
            return this.currMuid_;
        }

        public boolean hasMaxMsgSeq() {
            return (this.bitField0_ & 16) == 16;
        }

        public long getMaxMsgSeq() {
            return this.maxMsgSeq_;
        }

        public List<Message> getMsgsList() {
            return this.msgs_;
        }

        public List<? extends MessageOrBuilder> getMsgsOrBuilderList() {
            return this.msgs_;
        }

        public int getMsgsCount() {
            return this.msgs_.size();
        }

        public Message getMsgs(int i) {
            return (Message) this.msgs_.get(i);
        }

        public MessageOrBuilder getMsgsOrBuilder(int i) {
            return (MessageOrBuilder) this.msgs_.get(i);
        }

        private void initFields() {
            this.appid_ = 0;
            this.retCode_ = 0;
            this.currGuid_ = "";
            this.currMuid_ = 0;
            this.maxMsgSeq_ = 0;
            this.msgs_ = Collections.emptyList();
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasAppid()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasRetCode()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasCurrGuid()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else {
                for (int i = 0; i < getMsgsCount(); i++) {
                    if (!getMsgs(i).isInitialized()) {
                        this.memoizedIsInitialized = 0;
                        return false;
                    }
                }
                this.memoizedIsInitialized = 1;
                return true;
            }
        }

        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeUInt32(1, this.appid_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeUInt32(2, this.retCode_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBytes(3, getCurrGuidBytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeUInt64(4, this.currMuid_);
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeUInt64(5, this.maxMsgSeq_);
            }
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.msgs_.size()) {
                    codedOutputStream.writeMessage(6, (MessageLite) this.msgs_.get(i2));
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
                i = CodedOutputStream.computeUInt32Size(1, this.appid_) + 0;
            } else {
                i = 0;
            }
            if ((this.bitField0_ & 2) == 2) {
                i += CodedOutputStream.computeUInt32Size(2, this.retCode_);
            }
            if ((this.bitField0_ & 4) == 4) {
                i += CodedOutputStream.computeBytesSize(3, getCurrGuidBytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                i += CodedOutputStream.computeUInt64Size(4, this.currMuid_);
            }
            if ((this.bitField0_ & 16) == 16) {
                i += CodedOutputStream.computeUInt64Size(5, this.maxMsgSeq_);
            }
            while (true) {
                int i4 = i;
                if (i2 < this.msgs_.size()) {
                    i = CodedOutputStream.computeMessageSize(6, (MessageLite) this.msgs_.get(i2)) + i4;
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

        public static SyncUserMsgResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (SyncUserMsgResponse) PARSER.parseFrom(byteString);
        }

        public static SyncUserMsgResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SyncUserMsgResponse) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static SyncUserMsgResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (SyncUserMsgResponse) PARSER.parseFrom(bArr);
        }

        public static SyncUserMsgResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SyncUserMsgResponse) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static SyncUserMsgResponse parseFrom(InputStream inputStream) throws IOException {
            return (SyncUserMsgResponse) PARSER.parseFrom(inputStream);
        }

        public static SyncUserMsgResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SyncUserMsgResponse) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static SyncUserMsgResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (SyncUserMsgResponse) PARSER.parseDelimitedFrom(inputStream);
        }

        public static SyncUserMsgResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SyncUserMsgResponse) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static SyncUserMsgResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (SyncUserMsgResponse) PARSER.parseFrom(codedInputStream);
        }

        public static SyncUserMsgResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SyncUserMsgResponse) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(SyncUserMsgResponse syncUserMsgResponse) {
            return newBuilder().mergeFrom(syncUserMsgResponse);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface SyncUserMsgResponseOrBuilder extends com.google.protobuf.MessageOrBuilder {
        int getAppid();

        String getCurrGuid();

        ByteString getCurrGuidBytes();

        long getCurrMuid();

        long getMaxMsgSeq();

        Message getMsgs(int i);

        int getMsgsCount();

        List<Message> getMsgsList();

        MessageOrBuilder getMsgsOrBuilder(int i);

        List<? extends MessageOrBuilder> getMsgsOrBuilderList();

        int getRetCode();

        boolean hasAppid();

        boolean hasCurrGuid();

        boolean hasCurrMuid();

        boolean hasMaxMsgSeq();

        boolean hasRetCode();
    }

    private MiMsgProto() {
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
    }

    public static FileDescriptor getDescriptor() {
        return descriptor;
    }

    static {
        FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\u0010MiMsgProto.proto\u0012\u0015com.mi.mimsgsdk.proto\"~\n\u0007Message\u0012\u0010\n\bfromGuid\u0018\u0001 \u0002(\t\u0012\u0010\n\btargetId\u0018\u0002 \u0002(\t\u0012\u000e\n\u0006msgSeq\u0018\u0003 \u0002(\u0004\u0012\r\n\u0005msgId\u0018\u0004 \u0001(\u0004\u0012\u0010\n\bsentTime\u0018\u0005 \u0002(\r\u0012\f\n\u0004body\u0018\u0006 \u0002(\f\u0012\u0010\n\bbodyType\u0018\u0007 \u0001(\r\"\u0001\n\u0012SendUserMsgRequest\u0012\r\n\u0005appid\u0018\u0001 \u0002(\r\u0012\u000e\n\u0006toGuid\u0018\u0002 \u0003(\t\u0012\u0010\n\bfromGuid\u0018\u0003 \u0002(\t\u0012\u0010\n\bfromMuid\u0018\u0004 \u0001(\u0004\u0012\r\n\u0005msgId\u0018\u0005 \u0001(\u0004\u0012\f\n\u0004body\u0018\u0006 \u0002(\f\u0012\u0010\n\bbodyType\u0018\u0007 \u0001(\r\"\u0001\n\u0013SendUserMsgResponse\u0012\r\n\u0005appid\u0018\u0001 \u0002(\r\u0012\u000f\n\u0007retCode\u0018\u0002 \u0002(\r\u0012\u0010\n\bfromGuid\u0018\u0003 \u0002(\t\u0012\u0010\n\bfromMuid\u0018\u0004 \u0001(\u0004\u0012\r", "\n\u0005msgId\u0018\u0005 \u0001(\u0004\u0012\u000e\n\u0006msgSeq\u0018\u0006 \u0001(\u0004\u0012\u0010\n\bsentTime\u0018\u0007 \u0001(\r\"k\n\u000bPushUserMsg\u0012\r\n\u0005appid\u0018\u0001 \u0002(\r\u0012\u0010\n\bfromMuid\u0018\u0002 \u0001(\u0004\u0012\u000e\n\u0006toMuid\u0018\u0003 \u0002(\u0004\u0012+\n\u0003msg\u0018\u0004 \u0002(\u000b2\u001e.com.mi.mimsgsdk.proto.Message\"X\n\u0012SyncUserMsgRequest\u0012\r\n\u0005appid\u0018\u0001 \u0002(\r\u0012\u0010\n\bcurrGuid\u0018\u0002 \u0002(\t\u0012\u0012\n\nmaxRecvSeq\u0018\u0003 \u0002(\u0004\u0012\r\n\u0005limit\u0018\u0004 \u0001(\r\"\u0001\n\u0013SyncUserMsgResponse\u0012\r\n\u0005appid\u0018\u0001 \u0002(\r\u0012\u000f\n\u0007retCode\u0018\u0002 \u0002(\r\u0012\u0010\n\bcurrGuid\u0018\u0003 \u0002(\t\u0012\u0010\n\bcurrMuid\u0018\u0004 \u0001(\u0004\u0012\u0011\n\tmaxMsgSeq\u0018\u0005 \u0001(\u0004\u0012,\n\u0004msgs\u0018\u0006 \u0003(\u000b2\u001e.com.mi.mimsgsdk.proto.Mess", "age\"\\\n\u0015PullOldUserMsgRequest\u0012\r\n\u0005appid\u0018\u0001 \u0002(\r\u0012\u0010\n\bcurrGuid\u0018\u0002 \u0002(\t\u0012\u0013\n\u000bstartMsgSeq\u0018\u0003 \u0002(\u0004\u0012\r\n\u0005limit\u0018\u0004 \u0001(\r\"\u0001\n\u0016PullOldUserMsgResponse\u0012\r\n\u0005appid\u0018\u0001 \u0002(\r\u0012\u000f\n\u0007retCode\u0018\u0002 \u0002(\r\u0012\u0010\n\bcurrGuid\u0018\u0003 \u0002(\t\u0012\u0010\n\bcurrMuid\u0018\u0004 \u0001(\u0004\u0012,\n\u0004msgs\u0018\u0005 \u0003(\u000b2\u001e.com.mi.mimsgsdk.proto.Message\"\u0001\n\u0013SendGroupMsgRequest\u0012\r\n\u0005appid\u0018\u0001 \u0002(\r\u0012\u000e\n\u0006toGgid\u0018\u0002 \u0002(\t\u0012\u0010\n\bfromGuid\u0018\u0003 \u0002(\t\u0012\u0010\n\bfromMuid\u0018\u0004 \u0001(\u0004\u0012\r\n\u0005msgId\u0018\u0005 \u0001(\u0004\u0012\f\n\u0004body\u0018\u0006 \u0002(\f\u0012\u0010\n\bbodyType\u0018\u0007 \u0001(\r\"³\u0001\n\u0014SendGroupMsgRespons", "e\u0012\r\n\u0005appid\u0018\u0001 \u0002(\r\u0012\u000f\n\u0007retCode\u0018\u0002 \u0002(\r\u0012\u0010\n\bfromGuid\u0018\u0003 \u0002(\t\u0012\u0010\n\bfromMuid\u0018\u0004 \u0001(\u0004\u0012\u0012\n\ntargetGgid\u0018\u0005 \u0002(\t\u0012\u0012\n\ntargetMgid\u0018\u0006 \u0001(\u0004\u0012\r\n\u0005msgId\u0018\u0007 \u0001(\u0004\u0012\u000e\n\u0006msgSeq\u0018\b \u0001(\u0004\u0012\u0010\n\bsentTime\u0018\t \u0001(\r\"|\n\fPushGroupMsg\u0012\r\n\u0005appid\u0018\u0001 \u0002(\r\u0012\u0010\n\bfromMuid\u0018\u0002 \u0001(\u0004\u0012\u000e\n\u0006toMuid\u0018\u0003 \u0002(\u0004\u0012\u000e\n\u0006toMgid\u0018\u0004 \u0001(\u0004\u0012+\n\u0003msg\u0018\u0005 \u0002(\u000b2\u001e.com.mi.mimsgsdk.proto.Message\"\n\u0013SyncGroupMsgRequest\u0012\r\n\u0005appid\u0018\u0001 \u0002(\r\u0012\u0010\n\bcurrGuid\u0018\u0002 \u0002(\t\u0012\u0010\n\bcurrMuid\u0018\u0003 \u0001(\u0004\u0012\u0012\n\ntargetGgid\u0018\u0004 \u0002(\t\u0012\u0012\n\nmaxRecvSeq\u0018\u0005 \u0002(\u0004\u0012\r", "\n\u0005limit\u0018\u0006 \u0001(\r\"Ã\u0001\n\u0014SyncGroupMsgResponse\u0012\r\n\u0005appid\u0018\u0001 \u0002(\r\u0012\u000f\n\u0007retCode\u0018\u0002 \u0002(\r\u0012\u0010\n\bcurrGuid\u0018\u0003 \u0002(\t\u0012\u0010\n\bcurrMuid\u0018\u0004 \u0001(\u0004\u0012\u0012\n\ntargetGgid\u0018\u0005 \u0002(\t\u0012\u0012\n\ntargetMgid\u0018\u0006 \u0001(\u0004\u0012\u0011\n\tmaxMsgSeq\u0018\u0007 \u0001(\u0004\u0012,\n\u0004msgs\u0018\b \u0003(\u000b2\u001e.com.mi.mimsgsdk.proto.Message\"\u0001\n\u0016PullOldGroupMsgRequest\u0012\r\n\u0005appid\u0018\u0001 \u0002(\r\u0012\u0010\n\bcurrGuid\u0018\u0002 \u0002(\t\u0012\u0010\n\bcurrMuid\u0018\u0003 \u0001(\u0004\u0012\u0012\n\ntargetGgid\u0018\u0004 \u0002(\t\u0012\u0013\n\u000bstartMsgSeq\u0018\u0005 \u0002(\u0004\u0012\r\n\u0005limit\u0018\u0006 \u0001(\r\"³\u0001\n\u0017PullOldGroupMsgResponse\u0012\r\n\u0005appid\u0018\u0001 \u0002(\r\u0012\u000f\n\u0007retCode\u0018", "\u0002 \u0002(\r\u0012\u0010\n\bcurrGuid\u0018\u0003 \u0002(\t\u0012\u0010\n\bcurrMuid\u0018\u0004 \u0001(\u0004\u0012\u0012\n\ntargetGgid\u0018\u0005 \u0002(\t\u0012\u0012\n\ntargetMgid\u0018\u0006 \u0001(\u0004\u0012,\n\u0004msgs\u0018\u0007 \u0003(\u000b2\u001e.com.mi.mimsgsdk.proto.Message\"\u0001\n\u0012SendRoomMsgRequest\u0012\r\n\u0005appid\u0018\u0001 \u0002(\r\u0012\u000e\n\u0006toGrid\u0018\u0002 \u0002(\t\u0012\u0010\n\bfromGuid\u0018\u0003 \u0002(\t\u0012\u0010\n\bfromMuid\u0018\u0004 \u0001(\u0004\u0012\r\n\u0005msgId\u0018\u0005 \u0001(\u0004\u0012\f\n\u0004body\u0018\u0006 \u0002(\f\u0012\u0010\n\bbodyType\u0018\u0007 \u0001(\r\"²\u0001\n\u0013SendRoomMsgResponse\u0012\r\n\u0005appid\u0018\u0001 \u0002(\r\u0012\u000f\n\u0007retCode\u0018\u0002 \u0002(\r\u0012\u0010\n\bfromGuid\u0018\u0003 \u0002(\t\u0012\u0010\n\bfromMuid\u0018\u0004 \u0001(\u0004\u0012\u0012\n\ntargetGrid\u0018\u0005 \u0002(\t\u0012\u0012\n\ntargetMrid\u0018\u0006 \u0001(\u0004\u0012\r\n\u0005", "msgId\u0018\u0007 \u0001(\u0004\u0012\u000e\n\u0006msgSeq\u0018\b \u0001(\u0004\u0012\u0010\n\bsentTime\u0018\t \u0001(\r\"y\n\u000bPushRoomMsg\u0012\r\n\u0005appid\u0018\u0001 \u0002(\r\u0012\u0010\n\bfromMuid\u0018\u0002 \u0001(\u0004\u0012\u000e\n\u0006toMuid\u0018\u0003 \u0002(\u0004\u0012\f\n\u0004mrid\u0018\u0004 \u0001(\u0004\u0012+\n\u0003msg\u0018\u0005 \u0002(\u000b2\u001e.com.mi.mimsgsdk.proto.Message"}, new FileDescriptor[0], new InternalDescriptorAssigner() {
            public ExtensionRegistry assignDescriptors(FileDescriptor fileDescriptor) {
                MiMsgProto.descriptor = fileDescriptor;
                return null;
            }
        });
    }
}
