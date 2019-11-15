package com.google.protobuf;

import com.google.protobuf.Descriptors.Descriptor;
import com.google.protobuf.Descriptors.EnumValueDescriptor;
import com.google.protobuf.Descriptors.FieldDescriptor;
import com.google.protobuf.Descriptors.FieldDescriptor.JavaType;
import com.google.protobuf.Descriptors.FieldDescriptor.Type;
import com.google.protobuf.Descriptors.OneofDescriptor;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;

public final class DynamicMessage extends AbstractMessage {
    /* access modifiers changed from: private */
    public final FieldSet<FieldDescriptor> fields;
    private int memoizedSize = -1;
    /* access modifiers changed from: private */
    public final FieldDescriptor[] oneofCases;
    /* access modifiers changed from: private */
    public final Descriptor type;
    /* access modifiers changed from: private */
    public final UnknownFieldSet unknownFields;

    public static final class Builder extends com.google.protobuf.AbstractMessage.Builder<Builder> {
        private FieldSet<FieldDescriptor> fields;
        private final FieldDescriptor[] oneofCases;
        private final Descriptor type;
        private UnknownFieldSet unknownFields;

        private Builder(Descriptor descriptor) {
            this.type = descriptor;
            this.fields = FieldSet.newFieldSet();
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
            this.oneofCases = new FieldDescriptor[descriptor.toProto().getOneofDeclCount()];
        }

        public Builder clear() {
            if (this.fields.isImmutable()) {
                this.fields = FieldSet.newFieldSet();
            } else {
                this.fields.clear();
            }
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
            return this;
        }

        public Builder mergeFrom(Message message) {
            if (!(message instanceof DynamicMessage)) {
                return (Builder) super.mergeFrom(message);
            }
            DynamicMessage dynamicMessage = (DynamicMessage) message;
            if (dynamicMessage.type != this.type) {
                throw new IllegalArgumentException("mergeFrom(Message) can only merge messages of the same type.");
            }
            ensureIsMutable();
            this.fields.mergeFrom(dynamicMessage.fields);
            mergeUnknownFields(dynamicMessage.unknownFields);
            for (int i = 0; i < this.oneofCases.length; i++) {
                if (this.oneofCases[i] == null) {
                    this.oneofCases[i] = dynamicMessage.oneofCases[i];
                } else if (!(dynamicMessage.oneofCases[i] == null || this.oneofCases[i] == dynamicMessage.oneofCases[i])) {
                    this.fields.clearField(this.oneofCases[i]);
                    this.oneofCases[i] = dynamicMessage.oneofCases[i];
                }
            }
            return this;
        }

        public DynamicMessage build() {
            if (isInitialized()) {
                return buildPartial();
            }
            throw newUninitializedMessageException(new DynamicMessage(this.type, this.fields, (FieldDescriptor[]) Arrays.copyOf(this.oneofCases, this.oneofCases.length), this.unknownFields));
        }

        /* access modifiers changed from: private */
        public DynamicMessage buildParsed() throws InvalidProtocolBufferException {
            if (isInitialized()) {
                return buildPartial();
            }
            throw newUninitializedMessageException(new DynamicMessage(this.type, this.fields, (FieldDescriptor[]) Arrays.copyOf(this.oneofCases, this.oneofCases.length), this.unknownFields)).asInvalidProtocolBufferException();
        }

        public DynamicMessage buildPartial() {
            this.fields.makeImmutable();
            return new DynamicMessage(this.type, this.fields, (FieldDescriptor[]) Arrays.copyOf(this.oneofCases, this.oneofCases.length), this.unknownFields);
        }

        public Builder clone() {
            Builder builder = new Builder(this.type);
            builder.fields.mergeFrom(this.fields);
            builder.mergeUnknownFields(this.unknownFields);
            System.arraycopy(this.oneofCases, 0, builder.oneofCases, 0, this.oneofCases.length);
            return builder;
        }

        public boolean isInitialized() {
            return DynamicMessage.isInitialized(this.type, this.fields);
        }

        public Descriptor getDescriptorForType() {
            return this.type;
        }

        public DynamicMessage getDefaultInstanceForType() {
            return DynamicMessage.getDefaultInstance(this.type);
        }

        public Map<FieldDescriptor, Object> getAllFields() {
            return this.fields.getAllFields();
        }

        public Builder newBuilderForField(FieldDescriptor fieldDescriptor) {
            verifyContainingType(fieldDescriptor);
            if (fieldDescriptor.getJavaType() == JavaType.MESSAGE) {
                return new Builder(fieldDescriptor.getMessageType());
            }
            throw new IllegalArgumentException("newBuilderForField is only valid for fields with message type.");
        }

        public boolean hasOneof(OneofDescriptor oneofDescriptor) {
            verifyOneofContainingType(oneofDescriptor);
            if (this.oneofCases[oneofDescriptor.getIndex()] == null) {
                return false;
            }
            return true;
        }

        public FieldDescriptor getOneofFieldDescriptor(OneofDescriptor oneofDescriptor) {
            verifyOneofContainingType(oneofDescriptor);
            return this.oneofCases[oneofDescriptor.getIndex()];
        }

        public Builder clearOneof(OneofDescriptor oneofDescriptor) {
            verifyOneofContainingType(oneofDescriptor);
            FieldDescriptor fieldDescriptor = this.oneofCases[oneofDescriptor.getIndex()];
            if (fieldDescriptor != null) {
                clearField(fieldDescriptor);
            }
            return this;
        }

        public boolean hasField(FieldDescriptor fieldDescriptor) {
            verifyContainingType(fieldDescriptor);
            return this.fields.hasField(fieldDescriptor);
        }

        public Object getField(FieldDescriptor fieldDescriptor) {
            verifyContainingType(fieldDescriptor);
            Object field = this.fields.getField(fieldDescriptor);
            if (field != null) {
                return field;
            }
            if (fieldDescriptor.isRepeated()) {
                return Collections.emptyList();
            }
            if (fieldDescriptor.getJavaType() == JavaType.MESSAGE) {
                return DynamicMessage.getDefaultInstance(fieldDescriptor.getMessageType());
            }
            return fieldDescriptor.getDefaultValue();
        }

        public Builder setField(FieldDescriptor fieldDescriptor, Object obj) {
            verifyContainingType(fieldDescriptor);
            ensureIsMutable();
            if (fieldDescriptor.getType() == Type.ENUM) {
                ensureEnumValueDescriptor(fieldDescriptor, obj);
            }
            OneofDescriptor containingOneof = fieldDescriptor.getContainingOneof();
            if (containingOneof != null) {
                int index = containingOneof.getIndex();
                FieldDescriptor fieldDescriptor2 = this.oneofCases[index];
                if (!(fieldDescriptor2 == null || fieldDescriptor2 == fieldDescriptor)) {
                    this.fields.clearField(fieldDescriptor2);
                }
                this.oneofCases[index] = fieldDescriptor;
            }
            this.fields.setField(fieldDescriptor, obj);
            return this;
        }

        public Builder clearField(FieldDescriptor fieldDescriptor) {
            verifyContainingType(fieldDescriptor);
            ensureIsMutable();
            OneofDescriptor containingOneof = fieldDescriptor.getContainingOneof();
            if (containingOneof != null) {
                int index = containingOneof.getIndex();
                if (this.oneofCases[index] == fieldDescriptor) {
                    this.oneofCases[index] = null;
                }
            }
            this.fields.clearField(fieldDescriptor);
            return this;
        }

        public int getRepeatedFieldCount(FieldDescriptor fieldDescriptor) {
            verifyContainingType(fieldDescriptor);
            return this.fields.getRepeatedFieldCount(fieldDescriptor);
        }

        public Object getRepeatedField(FieldDescriptor fieldDescriptor, int i) {
            verifyContainingType(fieldDescriptor);
            return this.fields.getRepeatedField(fieldDescriptor, i);
        }

        public Builder setRepeatedField(FieldDescriptor fieldDescriptor, int i, Object obj) {
            verifyContainingType(fieldDescriptor);
            ensureIsMutable();
            this.fields.setRepeatedField(fieldDescriptor, i, obj);
            return this;
        }

        public Builder addRepeatedField(FieldDescriptor fieldDescriptor, Object obj) {
            verifyContainingType(fieldDescriptor);
            ensureIsMutable();
            this.fields.addRepeatedField(fieldDescriptor, obj);
            return this;
        }

        public UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        public Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
            this.unknownFields = unknownFieldSet;
            return this;
        }

        public Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
            this.unknownFields = UnknownFieldSet.newBuilder(this.unknownFields).mergeFrom(unknownFieldSet).build();
            return this;
        }

        private void verifyContainingType(FieldDescriptor fieldDescriptor) {
            if (fieldDescriptor.getContainingType() != this.type) {
                throw new IllegalArgumentException("FieldDescriptor does not match message type.");
            }
        }

        private void verifyOneofContainingType(OneofDescriptor oneofDescriptor) {
            if (oneofDescriptor.getContainingType() != this.type) {
                throw new IllegalArgumentException("OneofDescriptor does not match message type.");
            }
        }

        private void ensureSingularEnumValueDescriptor(FieldDescriptor fieldDescriptor, Object obj) {
            if (obj == null) {
                throw new NullPointerException();
            } else if (!(obj instanceof EnumValueDescriptor)) {
                throw new IllegalArgumentException("DynamicMessage should use EnumValueDescriptor to set Enum Value.");
            } else if (fieldDescriptor.getEnumType() != ((EnumValueDescriptor) obj).getType()) {
                throw new IllegalArgumentException("EnumValueDescriptor doesn't much Enum Field.");
            }
        }

        private void ensureEnumValueDescriptor(FieldDescriptor fieldDescriptor, Object obj) {
            if (fieldDescriptor.isRepeated()) {
                for (Object ensureSingularEnumValueDescriptor : (List) obj) {
                    ensureSingularEnumValueDescriptor(fieldDescriptor, ensureSingularEnumValueDescriptor);
                }
                return;
            }
            ensureSingularEnumValueDescriptor(fieldDescriptor, obj);
        }

        private void ensureIsMutable() {
            if (this.fields.isImmutable()) {
                this.fields = this.fields.clone();
            }
        }

        public com.google.protobuf.Message.Builder getFieldBuilder(FieldDescriptor fieldDescriptor) {
            throw new UnsupportedOperationException("getFieldBuilder() called on a dynamic message type.");
        }
    }

    DynamicMessage(Descriptor descriptor, FieldSet<FieldDescriptor> fieldSet, FieldDescriptor[] fieldDescriptorArr, UnknownFieldSet unknownFieldSet) {
        this.type = descriptor;
        this.fields = fieldSet;
        this.oneofCases = fieldDescriptorArr;
        this.unknownFields = unknownFieldSet;
    }

    public static DynamicMessage getDefaultInstance(Descriptor descriptor) {
        return new DynamicMessage(descriptor, FieldSet.emptySet(), new FieldDescriptor[descriptor.toProto().getOneofDeclCount()], UnknownFieldSet.getDefaultInstance());
    }

    public static DynamicMessage parseFrom(Descriptor descriptor, CodedInputStream codedInputStream) throws IOException {
        return ((Builder) newBuilder(descriptor).mergeFrom(codedInputStream)).buildParsed();
    }

    public static DynamicMessage parseFrom(Descriptor descriptor, CodedInputStream codedInputStream, ExtensionRegistry extensionRegistry) throws IOException {
        return ((Builder) newBuilder(descriptor).mergeFrom(codedInputStream, (ExtensionRegistryLite) extensionRegistry)).buildParsed();
    }

    public static DynamicMessage parseFrom(Descriptor descriptor, ByteString byteString) throws InvalidProtocolBufferException {
        return ((Builder) newBuilder(descriptor).mergeFrom(byteString)).buildParsed();
    }

    public static DynamicMessage parseFrom(Descriptor descriptor, ByteString byteString, ExtensionRegistry extensionRegistry) throws InvalidProtocolBufferException {
        return ((Builder) newBuilder(descriptor).mergeFrom(byteString, (ExtensionRegistryLite) extensionRegistry)).buildParsed();
    }

    public static DynamicMessage parseFrom(Descriptor descriptor, byte[] bArr) throws InvalidProtocolBufferException {
        return ((Builder) newBuilder(descriptor).mergeFrom(bArr)).buildParsed();
    }

    public static DynamicMessage parseFrom(Descriptor descriptor, byte[] bArr, ExtensionRegistry extensionRegistry) throws InvalidProtocolBufferException {
        return ((Builder) newBuilder(descriptor).mergeFrom(bArr, (ExtensionRegistryLite) extensionRegistry)).buildParsed();
    }

    public static DynamicMessage parseFrom(Descriptor descriptor, InputStream inputStream) throws IOException {
        return ((Builder) newBuilder(descriptor).mergeFrom(inputStream)).buildParsed();
    }

    public static DynamicMessage parseFrom(Descriptor descriptor, InputStream inputStream, ExtensionRegistry extensionRegistry) throws IOException {
        return ((Builder) newBuilder(descriptor).mergeFrom(inputStream, (ExtensionRegistryLite) extensionRegistry)).buildParsed();
    }

    public static Builder newBuilder(Descriptor descriptor) {
        return new Builder(descriptor);
    }

    public static Builder newBuilder(Message message) {
        return new Builder(message.getDescriptorForType()).mergeFrom(message);
    }

    public Descriptor getDescriptorForType() {
        return this.type;
    }

    public DynamicMessage getDefaultInstanceForType() {
        return getDefaultInstance(this.type);
    }

    public Map<FieldDescriptor, Object> getAllFields() {
        return this.fields.getAllFields();
    }

    public boolean hasOneof(OneofDescriptor oneofDescriptor) {
        verifyOneofContainingType(oneofDescriptor);
        if (this.oneofCases[oneofDescriptor.getIndex()] == null) {
            return false;
        }
        return true;
    }

    public FieldDescriptor getOneofFieldDescriptor(OneofDescriptor oneofDescriptor) {
        verifyOneofContainingType(oneofDescriptor);
        return this.oneofCases[oneofDescriptor.getIndex()];
    }

    public boolean hasField(FieldDescriptor fieldDescriptor) {
        verifyContainingType(fieldDescriptor);
        return this.fields.hasField(fieldDescriptor);
    }

    public Object getField(FieldDescriptor fieldDescriptor) {
        verifyContainingType(fieldDescriptor);
        Object field = this.fields.getField(fieldDescriptor);
        if (field != null) {
            return field;
        }
        if (fieldDescriptor.isRepeated()) {
            return Collections.emptyList();
        }
        if (fieldDescriptor.getJavaType() == JavaType.MESSAGE) {
            return getDefaultInstance(fieldDescriptor.getMessageType());
        }
        return fieldDescriptor.getDefaultValue();
    }

    public int getRepeatedFieldCount(FieldDescriptor fieldDescriptor) {
        verifyContainingType(fieldDescriptor);
        return this.fields.getRepeatedFieldCount(fieldDescriptor);
    }

    public Object getRepeatedField(FieldDescriptor fieldDescriptor, int i) {
        verifyContainingType(fieldDescriptor);
        return this.fields.getRepeatedField(fieldDescriptor, i);
    }

    public UnknownFieldSet getUnknownFields() {
        return this.unknownFields;
    }

    static boolean isInitialized(Descriptor descriptor, FieldSet<FieldDescriptor> fieldSet) {
        for (FieldDescriptor fieldDescriptor : descriptor.getFields()) {
            if (fieldDescriptor.isRequired() && !fieldSet.hasField(fieldDescriptor)) {
                return false;
            }
        }
        return fieldSet.isInitialized();
    }

    public boolean isInitialized() {
        return isInitialized(this.type, this.fields);
    }

    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.type.getOptions().getMessageSetWireFormat()) {
            this.fields.writeMessageSetTo(codedOutputStream);
            this.unknownFields.writeAsMessageSetTo(codedOutputStream);
            return;
        }
        this.fields.writeTo(codedOutputStream);
        this.unknownFields.writeTo(codedOutputStream);
    }

    public int getSerializedSize() {
        int i = this.memoizedSize;
        if (i == -1) {
            if (this.type.getOptions().getMessageSetWireFormat()) {
                i = this.fields.getMessageSetSerializedSize() + this.unknownFields.getSerializedSizeAsMessageSet();
            } else {
                i = this.fields.getSerializedSize() + this.unknownFields.getSerializedSize();
            }
            this.memoizedSize = i;
        }
        return i;
    }

    public Builder newBuilderForType() {
        return new Builder(this.type);
    }

    public Builder toBuilder() {
        return newBuilderForType().mergeFrom((Message) this);
    }

    public Parser<DynamicMessage> getParserForType() {
        return new AbstractParser<DynamicMessage>() {
            public DynamicMessage parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = DynamicMessage.newBuilder(DynamicMessage.this.type);
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
    }

    private void verifyContainingType(FieldDescriptor fieldDescriptor) {
        if (fieldDescriptor.getContainingType() != this.type) {
            throw new IllegalArgumentException("FieldDescriptor does not match message type.");
        }
    }

    private void verifyOneofContainingType(OneofDescriptor oneofDescriptor) {
        if (oneofDescriptor.getContainingType() != this.type) {
            throw new IllegalArgumentException("OneofDescriptor does not match message type.");
        }
    }
}
