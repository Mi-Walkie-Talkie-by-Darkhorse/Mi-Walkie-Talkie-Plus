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

public final class BodyDefine {
    /* access modifiers changed from: private */
    public static FileDescriptor descriptor;
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_mimsgsdk_proto_AudioBody_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(0));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_mimsgsdk_proto_AudioBody_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_mimsgsdk_proto_AudioBody_descriptor, new String[]{"ServerURL", "Duration", "Content"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_mimsgsdk_proto_DefaultBody_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(3));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_mimsgsdk_proto_DefaultBody_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_mimsgsdk_proto_DefaultBody_descriptor, new String[]{"Tips", "Content"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_mimsgsdk_proto_TextBody_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(1));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_mimsgsdk_proto_TextBody_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_mimsgsdk_proto_TextBody_descriptor, new String[]{"Text", "Content"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_mimsgsdk_proto_VideoBody_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(2));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_mimsgsdk_proto_VideoBody_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_mimsgsdk_proto_VideoBody_descriptor, new String[]{"ServerURL", "Duration", "Size", "Content", "ThumbnailURL"});

    public static final class AudioBody extends GeneratedMessage implements AudioBodyOrBuilder {
        public static final int CONTENT_FIELD_NUMBER = 3;
        public static final int DURATION_FIELD_NUMBER = 2;
        public static Parser<AudioBody> PARSER = new AbstractParser<AudioBody>() {
            public AudioBody parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new AudioBody(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int SERVERURL_FIELD_NUMBER = 1;
        private static final AudioBody defaultInstance = new AudioBody(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public ByteString content_;
        /* access modifiers changed from: private */
        public int duration_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public Object serverURL_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements AudioBodyOrBuilder {
            private int bitField0_;
            private ByteString content_;
            private int duration_;
            private Object serverURL_;

            public static final Descriptor getDescriptor() {
                return BodyDefine.internal_static_com_mi_mimsgsdk_proto_AudioBody_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return BodyDefine.internal_static_com_mi_mimsgsdk_proto_AudioBody_fieldAccessorTable.ensureFieldAccessorsInitialized(AudioBody.class, Builder.class);
            }

            private Builder() {
                this.serverURL_ = "";
                this.content_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.serverURL_ = "";
                this.content_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (AudioBody.alwaysUseFieldBuilders) {
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.serverURL_ = "";
                this.bitField0_ &= -2;
                this.duration_ = 0;
                this.bitField0_ &= -3;
                this.content_ = ByteString.EMPTY;
                this.bitField0_ &= -5;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return BodyDefine.internal_static_com_mi_mimsgsdk_proto_AudioBody_descriptor;
            }

            public AudioBody getDefaultInstanceForType() {
                return AudioBody.getDefaultInstance();
            }

            public AudioBody build() {
                AudioBody buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public AudioBody buildPartial() {
                int i = 1;
                AudioBody audioBody = new AudioBody((com.google.protobuf.GeneratedMessage.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                audioBody.serverURL_ = this.serverURL_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                audioBody.duration_ = this.duration_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                audioBody.content_ = this.content_;
                audioBody.bitField0_ = i;
                onBuilt();
                return audioBody;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof AudioBody) {
                    return mergeFrom((AudioBody) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(AudioBody audioBody) {
                if (audioBody != AudioBody.getDefaultInstance()) {
                    if (audioBody.hasServerURL()) {
                        this.bitField0_ |= 1;
                        this.serverURL_ = audioBody.serverURL_;
                        onChanged();
                    }
                    if (audioBody.hasDuration()) {
                        setDuration(audioBody.getDuration());
                    }
                    if (audioBody.hasContent()) {
                        setContent(audioBody.getContent());
                    }
                    mergeUnknownFields(audioBody.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasServerURL() && hasDuration()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                AudioBody audioBody;
                AudioBody audioBody2;
                try {
                    AudioBody audioBody3 = (AudioBody) AudioBody.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (audioBody3 != null) {
                        mergeFrom(audioBody3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    audioBody2 = (AudioBody) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    audioBody = audioBody2;
                    th = th2;
                }
                if (audioBody != null) {
                    mergeFrom(audioBody);
                }
                throw th;
            }

            public boolean hasServerURL() {
                return (this.bitField0_ & 1) == 1;
            }

            public String getServerURL() {
                Object obj = this.serverURL_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.serverURL_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getServerURLBytes() {
                Object obj = this.serverURL_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.serverURL_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setServerURL(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.serverURL_ = str;
                onChanged();
                return this;
            }

            public Builder clearServerURL() {
                this.bitField0_ &= -2;
                this.serverURL_ = AudioBody.getDefaultInstance().getServerURL();
                onChanged();
                return this;
            }

            public Builder setServerURLBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.serverURL_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasDuration() {
                return (this.bitField0_ & 2) == 2;
            }

            public int getDuration() {
                return this.duration_;
            }

            public Builder setDuration(int i) {
                this.bitField0_ |= 2;
                this.duration_ = i;
                onChanged();
                return this;
            }

            public Builder clearDuration() {
                this.bitField0_ &= -3;
                this.duration_ = 0;
                onChanged();
                return this;
            }

            public boolean hasContent() {
                return (this.bitField0_ & 4) == 4;
            }

            public ByteString getContent() {
                return this.content_;
            }

            public Builder setContent(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.content_ = byteString;
                onChanged();
                return this;
            }

            public Builder clearContent() {
                this.bitField0_ &= -5;
                this.content_ = AudioBody.getDefaultInstance().getContent();
                onChanged();
                return this;
            }
        }

        private AudioBody(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private AudioBody(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static AudioBody getDefaultInstance() {
            return defaultInstance;
        }

        public AudioBody getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private AudioBody(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.serverURL_ = readBytes;
                            break;
                        case 16:
                            this.bitField0_ |= 2;
                            this.duration_ = codedInputStream.readUInt32();
                            break;
                        case 26:
                            this.bitField0_ |= 4;
                            this.content_ = codedInputStream.readBytes();
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
            return BodyDefine.internal_static_com_mi_mimsgsdk_proto_AudioBody_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return BodyDefine.internal_static_com_mi_mimsgsdk_proto_AudioBody_fieldAccessorTable.ensureFieldAccessorsInitialized(AudioBody.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<AudioBody> getParserForType() {
            return PARSER;
        }

        public boolean hasServerURL() {
            return (this.bitField0_ & 1) == 1;
        }

        public String getServerURL() {
            Object obj = this.serverURL_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.serverURL_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getServerURLBytes() {
            Object obj = this.serverURL_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.serverURL_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasDuration() {
            return (this.bitField0_ & 2) == 2;
        }

        public int getDuration() {
            return this.duration_;
        }

        public boolean hasContent() {
            return (this.bitField0_ & 4) == 4;
        }

        public ByteString getContent() {
            return this.content_;
        }

        private void initFields() {
            this.serverURL_ = "";
            this.duration_ = 0;
            this.content_ = ByteString.EMPTY;
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasServerURL()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasDuration()) {
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
                codedOutputStream.writeBytes(1, getServerURLBytes());
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeUInt32(2, this.duration_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBytes(3, this.content_);
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
                i2 = 0 + CodedOutputStream.computeBytesSize(1, getServerURLBytes());
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeUInt32Size(2, this.duration_);
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeBytesSize(3, this.content_);
            }
            int serializedSize = i2 + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static AudioBody parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (AudioBody) PARSER.parseFrom(byteString);
        }

        public static AudioBody parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (AudioBody) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static AudioBody parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (AudioBody) PARSER.parseFrom(bArr);
        }

        public static AudioBody parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (AudioBody) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static AudioBody parseFrom(InputStream inputStream) throws IOException {
            return (AudioBody) PARSER.parseFrom(inputStream);
        }

        public static AudioBody parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (AudioBody) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static AudioBody parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (AudioBody) PARSER.parseDelimitedFrom(inputStream);
        }

        public static AudioBody parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (AudioBody) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static AudioBody parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (AudioBody) PARSER.parseFrom(codedInputStream);
        }

        public static AudioBody parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (AudioBody) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(AudioBody audioBody) {
            return newBuilder().mergeFrom(audioBody);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface AudioBodyOrBuilder extends MessageOrBuilder {
        ByteString getContent();

        int getDuration();

        String getServerURL();

        ByteString getServerURLBytes();

        boolean hasContent();

        boolean hasDuration();

        boolean hasServerURL();
    }

    public static final class DefaultBody extends GeneratedMessage implements DefaultBodyOrBuilder {
        public static final int CONTENT_FIELD_NUMBER = 2;
        public static Parser<DefaultBody> PARSER = new AbstractParser<DefaultBody>() {
            public DefaultBody parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new DefaultBody(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int TIPS_FIELD_NUMBER = 1;
        private static final DefaultBody defaultInstance = new DefaultBody(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public ByteString content_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public Object tips_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements DefaultBodyOrBuilder {
            private int bitField0_;
            private ByteString content_;
            private Object tips_;

            public static final Descriptor getDescriptor() {
                return BodyDefine.internal_static_com_mi_mimsgsdk_proto_DefaultBody_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return BodyDefine.internal_static_com_mi_mimsgsdk_proto_DefaultBody_fieldAccessorTable.ensureFieldAccessorsInitialized(DefaultBody.class, Builder.class);
            }

            private Builder() {
                this.tips_ = "";
                this.content_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.tips_ = "";
                this.content_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (DefaultBody.alwaysUseFieldBuilders) {
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.tips_ = "";
                this.bitField0_ &= -2;
                this.content_ = ByteString.EMPTY;
                this.bitField0_ &= -3;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return BodyDefine.internal_static_com_mi_mimsgsdk_proto_DefaultBody_descriptor;
            }

            public DefaultBody getDefaultInstanceForType() {
                return DefaultBody.getDefaultInstance();
            }

            public DefaultBody build() {
                DefaultBody buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public DefaultBody buildPartial() {
                int i = 1;
                DefaultBody defaultBody = new DefaultBody((com.google.protobuf.GeneratedMessage.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                defaultBody.tips_ = this.tips_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                defaultBody.content_ = this.content_;
                defaultBody.bitField0_ = i;
                onBuilt();
                return defaultBody;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof DefaultBody) {
                    return mergeFrom((DefaultBody) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(DefaultBody defaultBody) {
                if (defaultBody != DefaultBody.getDefaultInstance()) {
                    if (defaultBody.hasTips()) {
                        this.bitField0_ |= 1;
                        this.tips_ = defaultBody.tips_;
                        onChanged();
                    }
                    if (defaultBody.hasContent()) {
                        setContent(defaultBody.getContent());
                    }
                    mergeUnknownFields(defaultBody.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                if (!hasTips()) {
                    return false;
                }
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                DefaultBody defaultBody;
                DefaultBody defaultBody2;
                try {
                    DefaultBody defaultBody3 = (DefaultBody) DefaultBody.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (defaultBody3 != null) {
                        mergeFrom(defaultBody3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    defaultBody2 = (DefaultBody) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    defaultBody = defaultBody2;
                    th = th2;
                }
                if (defaultBody != null) {
                    mergeFrom(defaultBody);
                }
                throw th;
            }

            public boolean hasTips() {
                return (this.bitField0_ & 1) == 1;
            }

            public String getTips() {
                Object obj = this.tips_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.tips_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getTipsBytes() {
                Object obj = this.tips_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.tips_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setTips(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.tips_ = str;
                onChanged();
                return this;
            }

            public Builder clearTips() {
                this.bitField0_ &= -2;
                this.tips_ = DefaultBody.getDefaultInstance().getTips();
                onChanged();
                return this;
            }

            public Builder setTipsBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.tips_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasContent() {
                return (this.bitField0_ & 2) == 2;
            }

            public ByteString getContent() {
                return this.content_;
            }

            public Builder setContent(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.content_ = byteString;
                onChanged();
                return this;
            }

            public Builder clearContent() {
                this.bitField0_ &= -3;
                this.content_ = DefaultBody.getDefaultInstance().getContent();
                onChanged();
                return this;
            }
        }

        private DefaultBody(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private DefaultBody(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static DefaultBody getDefaultInstance() {
            return defaultInstance;
        }

        public DefaultBody getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private DefaultBody(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.tips_ = readBytes;
                            break;
                        case 18:
                            this.bitField0_ |= 2;
                            this.content_ = codedInputStream.readBytes();
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
            return BodyDefine.internal_static_com_mi_mimsgsdk_proto_DefaultBody_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return BodyDefine.internal_static_com_mi_mimsgsdk_proto_DefaultBody_fieldAccessorTable.ensureFieldAccessorsInitialized(DefaultBody.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<DefaultBody> getParserForType() {
            return PARSER;
        }

        public boolean hasTips() {
            return (this.bitField0_ & 1) == 1;
        }

        public String getTips() {
            Object obj = this.tips_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.tips_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getTipsBytes() {
            Object obj = this.tips_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.tips_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasContent() {
            return (this.bitField0_ & 2) == 2;
        }

        public ByteString getContent() {
            return this.content_;
        }

        private void initFields() {
            this.tips_ = "";
            this.content_ = ByteString.EMPTY;
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasTips()) {
                this.memoizedIsInitialized = 0;
                return false;
            }
            this.memoizedIsInitialized = 1;
            return true;
        }

        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeBytes(1, getTipsBytes());
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeBytes(2, this.content_);
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
                i2 = 0 + CodedOutputStream.computeBytesSize(1, getTipsBytes());
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeBytesSize(2, this.content_);
            }
            int serializedSize = i2 + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static DefaultBody parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (DefaultBody) PARSER.parseFrom(byteString);
        }

        public static DefaultBody parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (DefaultBody) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static DefaultBody parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (DefaultBody) PARSER.parseFrom(bArr);
        }

        public static DefaultBody parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (DefaultBody) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static DefaultBody parseFrom(InputStream inputStream) throws IOException {
            return (DefaultBody) PARSER.parseFrom(inputStream);
        }

        public static DefaultBody parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (DefaultBody) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static DefaultBody parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (DefaultBody) PARSER.parseDelimitedFrom(inputStream);
        }

        public static DefaultBody parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (DefaultBody) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static DefaultBody parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (DefaultBody) PARSER.parseFrom(codedInputStream);
        }

        public static DefaultBody parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (DefaultBody) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(DefaultBody defaultBody) {
            return newBuilder().mergeFrom(defaultBody);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface DefaultBodyOrBuilder extends MessageOrBuilder {
        ByteString getContent();

        String getTips();

        ByteString getTipsBytes();

        boolean hasContent();

        boolean hasTips();
    }

    public static final class TextBody extends GeneratedMessage implements TextBodyOrBuilder {
        public static final int CONTENT_FIELD_NUMBER = 2;
        public static Parser<TextBody> PARSER = new AbstractParser<TextBody>() {
            public TextBody parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new TextBody(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int TEXT_FIELD_NUMBER = 1;
        private static final TextBody defaultInstance = new TextBody(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public ByteString content_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public Object text_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements TextBodyOrBuilder {
            private int bitField0_;
            private ByteString content_;
            private Object text_;

            public static final Descriptor getDescriptor() {
                return BodyDefine.internal_static_com_mi_mimsgsdk_proto_TextBody_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return BodyDefine.internal_static_com_mi_mimsgsdk_proto_TextBody_fieldAccessorTable.ensureFieldAccessorsInitialized(TextBody.class, Builder.class);
            }

            private Builder() {
                this.text_ = "";
                this.content_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.text_ = "";
                this.content_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (TextBody.alwaysUseFieldBuilders) {
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.text_ = "";
                this.bitField0_ &= -2;
                this.content_ = ByteString.EMPTY;
                this.bitField0_ &= -3;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return BodyDefine.internal_static_com_mi_mimsgsdk_proto_TextBody_descriptor;
            }

            public TextBody getDefaultInstanceForType() {
                return TextBody.getDefaultInstance();
            }

            public TextBody build() {
                TextBody buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public TextBody buildPartial() {
                int i = 1;
                TextBody textBody = new TextBody((com.google.protobuf.GeneratedMessage.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                textBody.text_ = this.text_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                textBody.content_ = this.content_;
                textBody.bitField0_ = i;
                onBuilt();
                return textBody;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof TextBody) {
                    return mergeFrom((TextBody) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(TextBody textBody) {
                if (textBody != TextBody.getDefaultInstance()) {
                    if (textBody.hasText()) {
                        this.bitField0_ |= 1;
                        this.text_ = textBody.text_;
                        onChanged();
                    }
                    if (textBody.hasContent()) {
                        setContent(textBody.getContent());
                    }
                    mergeUnknownFields(textBody.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                if (!hasText()) {
                    return false;
                }
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                TextBody textBody;
                TextBody textBody2;
                try {
                    TextBody textBody3 = (TextBody) TextBody.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (textBody3 != null) {
                        mergeFrom(textBody3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    textBody2 = (TextBody) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    textBody = textBody2;
                    th = th2;
                }
                if (textBody != null) {
                    mergeFrom(textBody);
                }
                throw th;
            }

            public boolean hasText() {
                return (this.bitField0_ & 1) == 1;
            }

            public String getText() {
                Object obj = this.text_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.text_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getTextBytes() {
                Object obj = this.text_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.text_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setText(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.text_ = str;
                onChanged();
                return this;
            }

            public Builder clearText() {
                this.bitField0_ &= -2;
                this.text_ = TextBody.getDefaultInstance().getText();
                onChanged();
                return this;
            }

            public Builder setTextBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.text_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasContent() {
                return (this.bitField0_ & 2) == 2;
            }

            public ByteString getContent() {
                return this.content_;
            }

            public Builder setContent(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.content_ = byteString;
                onChanged();
                return this;
            }

            public Builder clearContent() {
                this.bitField0_ &= -3;
                this.content_ = TextBody.getDefaultInstance().getContent();
                onChanged();
                return this;
            }
        }

        private TextBody(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private TextBody(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static TextBody getDefaultInstance() {
            return defaultInstance;
        }

        public TextBody getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private TextBody(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.text_ = readBytes;
                            break;
                        case 18:
                            this.bitField0_ |= 2;
                            this.content_ = codedInputStream.readBytes();
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
            return BodyDefine.internal_static_com_mi_mimsgsdk_proto_TextBody_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return BodyDefine.internal_static_com_mi_mimsgsdk_proto_TextBody_fieldAccessorTable.ensureFieldAccessorsInitialized(TextBody.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<TextBody> getParserForType() {
            return PARSER;
        }

        public boolean hasText() {
            return (this.bitField0_ & 1) == 1;
        }

        public String getText() {
            Object obj = this.text_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.text_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getTextBytes() {
            Object obj = this.text_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.text_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasContent() {
            return (this.bitField0_ & 2) == 2;
        }

        public ByteString getContent() {
            return this.content_;
        }

        private void initFields() {
            this.text_ = "";
            this.content_ = ByteString.EMPTY;
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasText()) {
                this.memoizedIsInitialized = 0;
                return false;
            }
            this.memoizedIsInitialized = 1;
            return true;
        }

        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeBytes(1, getTextBytes());
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeBytes(2, this.content_);
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
                i2 = 0 + CodedOutputStream.computeBytesSize(1, getTextBytes());
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeBytesSize(2, this.content_);
            }
            int serializedSize = i2 + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static TextBody parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (TextBody) PARSER.parseFrom(byteString);
        }

        public static TextBody parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (TextBody) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static TextBody parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (TextBody) PARSER.parseFrom(bArr);
        }

        public static TextBody parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (TextBody) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static TextBody parseFrom(InputStream inputStream) throws IOException {
            return (TextBody) PARSER.parseFrom(inputStream);
        }

        public static TextBody parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (TextBody) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static TextBody parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (TextBody) PARSER.parseDelimitedFrom(inputStream);
        }

        public static TextBody parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (TextBody) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static TextBody parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (TextBody) PARSER.parseFrom(codedInputStream);
        }

        public static TextBody parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (TextBody) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(TextBody textBody) {
            return newBuilder().mergeFrom(textBody);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface TextBodyOrBuilder extends MessageOrBuilder {
        ByteString getContent();

        String getText();

        ByteString getTextBytes();

        boolean hasContent();

        boolean hasText();
    }

    public static final class VideoBody extends GeneratedMessage implements VideoBodyOrBuilder {
        public static final int CONTENT_FIELD_NUMBER = 4;
        public static final int DURATION_FIELD_NUMBER = 2;
        public static Parser<VideoBody> PARSER = new AbstractParser<VideoBody>() {
            public VideoBody parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new VideoBody(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int SERVERURL_FIELD_NUMBER = 1;
        public static final int SIZE_FIELD_NUMBER = 3;
        public static final int THUMBNAILURL_FIELD_NUMBER = 5;
        private static final VideoBody defaultInstance = new VideoBody(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public ByteString content_;
        /* access modifiers changed from: private */
        public int duration_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public Object serverURL_;
        /* access modifiers changed from: private */
        public int size_;
        /* access modifiers changed from: private */
        public Object thumbnailURL_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements VideoBodyOrBuilder {
            private int bitField0_;
            private ByteString content_;
            private int duration_;
            private Object serverURL_;
            private int size_;
            private Object thumbnailURL_;

            public static final Descriptor getDescriptor() {
                return BodyDefine.internal_static_com_mi_mimsgsdk_proto_VideoBody_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return BodyDefine.internal_static_com_mi_mimsgsdk_proto_VideoBody_fieldAccessorTable.ensureFieldAccessorsInitialized(VideoBody.class, Builder.class);
            }

            private Builder() {
                this.serverURL_ = "";
                this.content_ = ByteString.EMPTY;
                this.thumbnailURL_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.serverURL_ = "";
                this.content_ = ByteString.EMPTY;
                this.thumbnailURL_ = "";
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (VideoBody.alwaysUseFieldBuilders) {
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.serverURL_ = "";
                this.bitField0_ &= -2;
                this.duration_ = 0;
                this.bitField0_ &= -3;
                this.size_ = 0;
                this.bitField0_ &= -5;
                this.content_ = ByteString.EMPTY;
                this.bitField0_ &= -9;
                this.thumbnailURL_ = "";
                this.bitField0_ &= -17;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return BodyDefine.internal_static_com_mi_mimsgsdk_proto_VideoBody_descriptor;
            }

            public VideoBody getDefaultInstanceForType() {
                return VideoBody.getDefaultInstance();
            }

            public VideoBody build() {
                VideoBody buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public VideoBody buildPartial() {
                int i = 1;
                VideoBody videoBody = new VideoBody((com.google.protobuf.GeneratedMessage.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                videoBody.serverURL_ = this.serverURL_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                videoBody.duration_ = this.duration_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                videoBody.size_ = this.size_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                videoBody.content_ = this.content_;
                if ((i2 & 16) == 16) {
                    i |= 16;
                }
                videoBody.thumbnailURL_ = this.thumbnailURL_;
                videoBody.bitField0_ = i;
                onBuilt();
                return videoBody;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof VideoBody) {
                    return mergeFrom((VideoBody) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(VideoBody videoBody) {
                if (videoBody != VideoBody.getDefaultInstance()) {
                    if (videoBody.hasServerURL()) {
                        this.bitField0_ |= 1;
                        this.serverURL_ = videoBody.serverURL_;
                        onChanged();
                    }
                    if (videoBody.hasDuration()) {
                        setDuration(videoBody.getDuration());
                    }
                    if (videoBody.hasSize()) {
                        setSize(videoBody.getSize());
                    }
                    if (videoBody.hasContent()) {
                        setContent(videoBody.getContent());
                    }
                    if (videoBody.hasThumbnailURL()) {
                        this.bitField0_ |= 16;
                        this.thumbnailURL_ = videoBody.thumbnailURL_;
                        onChanged();
                    }
                    mergeUnknownFields(videoBody.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasServerURL() && hasDuration() && hasSize()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                VideoBody videoBody;
                VideoBody videoBody2;
                try {
                    VideoBody videoBody3 = (VideoBody) VideoBody.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (videoBody3 != null) {
                        mergeFrom(videoBody3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    videoBody2 = (VideoBody) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    videoBody = videoBody2;
                    th = th2;
                }
                if (videoBody != null) {
                    mergeFrom(videoBody);
                }
                throw th;
            }

            public boolean hasServerURL() {
                return (this.bitField0_ & 1) == 1;
            }

            public String getServerURL() {
                Object obj = this.serverURL_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.serverURL_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getServerURLBytes() {
                Object obj = this.serverURL_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.serverURL_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setServerURL(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.serverURL_ = str;
                onChanged();
                return this;
            }

            public Builder clearServerURL() {
                this.bitField0_ &= -2;
                this.serverURL_ = VideoBody.getDefaultInstance().getServerURL();
                onChanged();
                return this;
            }

            public Builder setServerURLBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.serverURL_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasDuration() {
                return (this.bitField0_ & 2) == 2;
            }

            public int getDuration() {
                return this.duration_;
            }

            public Builder setDuration(int i) {
                this.bitField0_ |= 2;
                this.duration_ = i;
                onChanged();
                return this;
            }

            public Builder clearDuration() {
                this.bitField0_ &= -3;
                this.duration_ = 0;
                onChanged();
                return this;
            }

            public boolean hasSize() {
                return (this.bitField0_ & 4) == 4;
            }

            public int getSize() {
                return this.size_;
            }

            public Builder setSize(int i) {
                this.bitField0_ |= 4;
                this.size_ = i;
                onChanged();
                return this;
            }

            public Builder clearSize() {
                this.bitField0_ &= -5;
                this.size_ = 0;
                onChanged();
                return this;
            }

            public boolean hasContent() {
                return (this.bitField0_ & 8) == 8;
            }

            public ByteString getContent() {
                return this.content_;
            }

            public Builder setContent(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.content_ = byteString;
                onChanged();
                return this;
            }

            public Builder clearContent() {
                this.bitField0_ &= -9;
                this.content_ = VideoBody.getDefaultInstance().getContent();
                onChanged();
                return this;
            }

            public boolean hasThumbnailURL() {
                return (this.bitField0_ & 16) == 16;
            }

            public String getThumbnailURL() {
                Object obj = this.thumbnailURL_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.thumbnailURL_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getThumbnailURLBytes() {
                Object obj = this.thumbnailURL_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.thumbnailURL_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setThumbnailURL(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 16;
                this.thumbnailURL_ = str;
                onChanged();
                return this;
            }

            public Builder clearThumbnailURL() {
                this.bitField0_ &= -17;
                this.thumbnailURL_ = VideoBody.getDefaultInstance().getThumbnailURL();
                onChanged();
                return this;
            }

            public Builder setThumbnailURLBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 16;
                this.thumbnailURL_ = byteString;
                onChanged();
                return this;
            }
        }

        private VideoBody(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private VideoBody(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static VideoBody getDefaultInstance() {
            return defaultInstance;
        }

        public VideoBody getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private VideoBody(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.serverURL_ = readBytes;
                            break;
                        case 16:
                            this.bitField0_ |= 2;
                            this.duration_ = codedInputStream.readUInt32();
                            break;
                        case 24:
                            this.bitField0_ |= 4;
                            this.size_ = codedInputStream.readUInt32();
                            break;
                        case 34:
                            this.bitField0_ |= 8;
                            this.content_ = codedInputStream.readBytes();
                            break;
                        case 42:
                            ByteString readBytes2 = codedInputStream.readBytes();
                            this.bitField0_ |= 16;
                            this.thumbnailURL_ = readBytes2;
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
            return BodyDefine.internal_static_com_mi_mimsgsdk_proto_VideoBody_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return BodyDefine.internal_static_com_mi_mimsgsdk_proto_VideoBody_fieldAccessorTable.ensureFieldAccessorsInitialized(VideoBody.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<VideoBody> getParserForType() {
            return PARSER;
        }

        public boolean hasServerURL() {
            return (this.bitField0_ & 1) == 1;
        }

        public String getServerURL() {
            Object obj = this.serverURL_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.serverURL_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getServerURLBytes() {
            Object obj = this.serverURL_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.serverURL_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasDuration() {
            return (this.bitField0_ & 2) == 2;
        }

        public int getDuration() {
            return this.duration_;
        }

        public boolean hasSize() {
            return (this.bitField0_ & 4) == 4;
        }

        public int getSize() {
            return this.size_;
        }

        public boolean hasContent() {
            return (this.bitField0_ & 8) == 8;
        }

        public ByteString getContent() {
            return this.content_;
        }

        public boolean hasThumbnailURL() {
            return (this.bitField0_ & 16) == 16;
        }

        public String getThumbnailURL() {
            Object obj = this.thumbnailURL_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.thumbnailURL_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getThumbnailURLBytes() {
            Object obj = this.thumbnailURL_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.thumbnailURL_ = copyFromUtf8;
            return copyFromUtf8;
        }

        private void initFields() {
            this.serverURL_ = "";
            this.duration_ = 0;
            this.size_ = 0;
            this.content_ = ByteString.EMPTY;
            this.thumbnailURL_ = "";
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasServerURL()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasDuration()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasSize()) {
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
                codedOutputStream.writeBytes(1, getServerURLBytes());
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeUInt32(2, this.duration_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeUInt32(3, this.size_);
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeBytes(4, this.content_);
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeBytes(5, getThumbnailURLBytes());
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
                i2 = 0 + CodedOutputStream.computeBytesSize(1, getServerURLBytes());
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeUInt32Size(2, this.duration_);
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeUInt32Size(3, this.size_);
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeBytesSize(4, this.content_);
            }
            if ((this.bitField0_ & 16) == 16) {
                i2 += CodedOutputStream.computeBytesSize(5, getThumbnailURLBytes());
            }
            int serializedSize = i2 + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static VideoBody parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (VideoBody) PARSER.parseFrom(byteString);
        }

        public static VideoBody parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (VideoBody) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static VideoBody parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (VideoBody) PARSER.parseFrom(bArr);
        }

        public static VideoBody parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (VideoBody) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static VideoBody parseFrom(InputStream inputStream) throws IOException {
            return (VideoBody) PARSER.parseFrom(inputStream);
        }

        public static VideoBody parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (VideoBody) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static VideoBody parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (VideoBody) PARSER.parseDelimitedFrom(inputStream);
        }

        public static VideoBody parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (VideoBody) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static VideoBody parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (VideoBody) PARSER.parseFrom(codedInputStream);
        }

        public static VideoBody parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (VideoBody) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(VideoBody videoBody) {
            return newBuilder().mergeFrom(videoBody);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface VideoBodyOrBuilder extends MessageOrBuilder {
        ByteString getContent();

        int getDuration();

        String getServerURL();

        ByteString getServerURLBytes();

        int getSize();

        String getThumbnailURL();

        ByteString getThumbnailURLBytes();

        boolean hasContent();

        boolean hasDuration();

        boolean hasServerURL();

        boolean hasSize();

        boolean hasThumbnailURL();
    }

    private BodyDefine() {
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
    }

    public static FileDescriptor getDescriptor() {
        return descriptor;
    }

    static {
        FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\u0010BodyDefine.proto\u0012\u0015com.mi.mimsgsdk.proto\"A\n\tAudioBody\u0012\u0011\n\tserverURL\u0018\u0001 \u0002(\t\u0012\u0010\n\bduration\u0018\u0002 \u0002(\r\u0012\u000f\n\u0007content\u0018\u0003 \u0001(\f\")\n\bTextBody\u0012\f\n\u0004text\u0018\u0001 \u0002(\t\u0012\u000f\n\u0007content\u0018\u0002 \u0001(\f\"e\n\tVideoBody\u0012\u0011\n\tserverURL\u0018\u0001 \u0002(\t\u0012\u0010\n\bduration\u0018\u0002 \u0002(\r\u0012\f\n\u0004size\u0018\u0003 \u0002(\r\u0012\u000f\n\u0007content\u0018\u0004 \u0001(\f\u0012\u0014\n\fthumbnailURL\u0018\u0005 \u0001(\t\",\n\u000bDefaultBody\u0012\f\n\u0004tips\u0018\u0001 \u0002(\t\u0012\u000f\n\u0007content\u0018\u0002 \u0001(\f"}, new FileDescriptor[0], new InternalDescriptorAssigner() {
            public ExtensionRegistry assignDescriptors(FileDescriptor fileDescriptor) {
                BodyDefine.descriptor = fileDescriptor;
                return null;
            }
        });
    }
}
