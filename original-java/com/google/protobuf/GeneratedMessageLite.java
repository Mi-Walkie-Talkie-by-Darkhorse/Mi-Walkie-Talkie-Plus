package com.google.protobuf;

import com.google.protobuf.FieldSet.FieldDescriptorLite;
import com.google.protobuf.Internal.EnumLite;
import com.google.protobuf.Internal.EnumLiteMap;
import com.google.protobuf.WireFormat.FieldType;
import com.google.protobuf.WireFormat.JavaType;
import java.io.IOException;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;

public abstract class GeneratedMessageLite extends AbstractMessageLite implements Serializable {
    private static final long serialVersionUID = 1;

    public static abstract class Builder<MessageType extends GeneratedMessageLite, BuilderType extends Builder> extends com.google.protobuf.AbstractMessageLite.Builder<BuilderType> {
        private ByteString unknownFields = ByteString.EMPTY;

        public abstract MessageType getDefaultInstanceForType();

        public abstract BuilderType mergeFrom(MessageType messagetype);

        protected Builder() {
        }

        public BuilderType clear() {
            this.unknownFields = ByteString.EMPTY;
            return this;
        }

        public BuilderType clone() {
            throw new UnsupportedOperationException("This is supposed to be overridden by subclasses.");
        }

        /* access modifiers changed from: protected */
        public boolean parseUnknownField(CodedInputStream codedInputStream, CodedOutputStream codedOutputStream, ExtensionRegistryLite extensionRegistryLite, int i) throws IOException {
            return codedInputStream.skipField(i, codedOutputStream);
        }

        public final ByteString getUnknownFields() {
            return this.unknownFields;
        }

        public final BuilderType setUnknownFields(ByteString byteString) {
            this.unknownFields = byteString;
            return this;
        }
    }

    public static abstract class ExtendableBuilder<MessageType extends ExtendableMessage<MessageType>, BuilderType extends ExtendableBuilder<MessageType, BuilderType>> extends Builder<MessageType, BuilderType> implements ExtendableMessageOrBuilder<MessageType> {
        private FieldSet<ExtensionDescriptor> extensions = FieldSet.emptySet();
        private boolean extensionsIsMutable;

        protected ExtendableBuilder() {
        }

        /* access modifiers changed from: 0000 */
        public void internalSetExtensionSet(FieldSet<ExtensionDescriptor> fieldSet) {
            this.extensions = fieldSet;
        }

        public BuilderType clear() {
            this.extensions.clear();
            this.extensionsIsMutable = false;
            return (ExtendableBuilder) super.clear();
        }

        private void ensureExtensionsIsMutable() {
            if (!this.extensionsIsMutable) {
                this.extensions = this.extensions.clone();
                this.extensionsIsMutable = true;
            }
        }

        /* access modifiers changed from: private */
        public FieldSet<ExtensionDescriptor> buildExtensions() {
            this.extensions.makeImmutable();
            this.extensionsIsMutable = false;
            return this.extensions;
        }

        private void verifyExtensionContainingType(GeneratedExtension<MessageType, ?> generatedExtension) {
            if (generatedExtension.getContainingTypeDefaultInstance() != getDefaultInstanceForType()) {
                throw new IllegalArgumentException("This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings.");
            }
        }

        public final <Type> boolean hasExtension(GeneratedExtension<MessageType, Type> generatedExtension) {
            verifyExtensionContainingType(generatedExtension);
            return this.extensions.hasField(generatedExtension.descriptor);
        }

        public final <Type> int getExtensionCount(GeneratedExtension<MessageType, List<Type>> generatedExtension) {
            verifyExtensionContainingType(generatedExtension);
            return this.extensions.getRepeatedFieldCount(generatedExtension.descriptor);
        }

        public final <Type> Type getExtension(GeneratedExtension<MessageType, Type> generatedExtension) {
            verifyExtensionContainingType(generatedExtension);
            Object field = this.extensions.getField(generatedExtension.descriptor);
            if (field == null) {
                return generatedExtension.defaultValue;
            }
            return generatedExtension.fromFieldSetType(field);
        }

        public final <Type> Type getExtension(GeneratedExtension<MessageType, List<Type>> generatedExtension, int i) {
            verifyExtensionContainingType(generatedExtension);
            return generatedExtension.singularFromFieldSetType(this.extensions.getRepeatedField(generatedExtension.descriptor, i));
        }

        public BuilderType clone() {
            throw new UnsupportedOperationException("This is supposed to be overridden by subclasses.");
        }

        public final <Type> BuilderType setExtension(GeneratedExtension<MessageType, Type> generatedExtension, Type type) {
            verifyExtensionContainingType(generatedExtension);
            ensureExtensionsIsMutable();
            this.extensions.setField(generatedExtension.descriptor, generatedExtension.toFieldSetType(type));
            return this;
        }

        public final <Type> BuilderType setExtension(GeneratedExtension<MessageType, List<Type>> generatedExtension, int i, Type type) {
            verifyExtensionContainingType(generatedExtension);
            ensureExtensionsIsMutable();
            this.extensions.setRepeatedField(generatedExtension.descriptor, i, generatedExtension.singularToFieldSetType(type));
            return this;
        }

        public final <Type> BuilderType addExtension(GeneratedExtension<MessageType, List<Type>> generatedExtension, Type type) {
            verifyExtensionContainingType(generatedExtension);
            ensureExtensionsIsMutable();
            this.extensions.addRepeatedField(generatedExtension.descriptor, generatedExtension.singularToFieldSetType(type));
            return this;
        }

        public final <Type> BuilderType clearExtension(GeneratedExtension<MessageType, ?> generatedExtension) {
            verifyExtensionContainingType(generatedExtension);
            ensureExtensionsIsMutable();
            this.extensions.clearField(generatedExtension.descriptor);
            return this;
        }

        /* access modifiers changed from: protected */
        public boolean extensionsAreInitialized() {
            return this.extensions.isInitialized();
        }

        /* access modifiers changed from: protected */
        public boolean parseUnknownField(CodedInputStream codedInputStream, CodedOutputStream codedOutputStream, ExtensionRegistryLite extensionRegistryLite, int i) throws IOException {
            ensureExtensionsIsMutable();
            return GeneratedMessageLite.parseUnknownField(this.extensions, getDefaultInstanceForType(), codedInputStream, codedOutputStream, extensionRegistryLite, i);
        }

        /* access modifiers changed from: protected */
        public final void mergeExtensionFields(MessageType messagetype) {
            ensureExtensionsIsMutable();
            this.extensions.mergeFrom(messagetype.extensions);
        }
    }

    public static abstract class ExtendableMessage<MessageType extends ExtendableMessage<MessageType>> extends GeneratedMessageLite implements ExtendableMessageOrBuilder<MessageType> {
        /* access modifiers changed from: private */
        public final FieldSet<ExtensionDescriptor> extensions;

        protected class ExtensionWriter {
            private final Iterator<Entry<ExtensionDescriptor, Object>> iter;
            private final boolean messageSetWireFormat;
            private Entry<ExtensionDescriptor, Object> next;

            private ExtensionWriter(boolean z) {
                this.iter = ExtendableMessage.this.extensions.iterator();
                if (this.iter.hasNext()) {
                    this.next = (Entry) this.iter.next();
                }
                this.messageSetWireFormat = z;
            }

            public void writeUntil(int i, CodedOutputStream codedOutputStream) throws IOException {
                while (this.next != null && ((ExtensionDescriptor) this.next.getKey()).getNumber() < i) {
                    ExtensionDescriptor extensionDescriptor = (ExtensionDescriptor) this.next.getKey();
                    if (!this.messageSetWireFormat || extensionDescriptor.getLiteJavaType() != JavaType.MESSAGE || extensionDescriptor.isRepeated()) {
                        FieldSet.writeField(extensionDescriptor, this.next.getValue(), codedOutputStream);
                    } else {
                        codedOutputStream.writeMessageSetExtension(extensionDescriptor.getNumber(), (MessageLite) this.next.getValue());
                    }
                    if (this.iter.hasNext()) {
                        this.next = (Entry) this.iter.next();
                    } else {
                        this.next = null;
                    }
                }
            }
        }

        protected ExtendableMessage() {
            this.extensions = FieldSet.newFieldSet();
        }

        protected ExtendableMessage(ExtendableBuilder<MessageType, ?> extendableBuilder) {
            this.extensions = extendableBuilder.buildExtensions();
        }

        private void verifyExtensionContainingType(GeneratedExtension<MessageType, ?> generatedExtension) {
            if (generatedExtension.getContainingTypeDefaultInstance() != getDefaultInstanceForType()) {
                throw new IllegalArgumentException("This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings.");
            }
        }

        public final <Type> boolean hasExtension(GeneratedExtension<MessageType, Type> generatedExtension) {
            verifyExtensionContainingType(generatedExtension);
            return this.extensions.hasField(generatedExtension.descriptor);
        }

        public final <Type> int getExtensionCount(GeneratedExtension<MessageType, List<Type>> generatedExtension) {
            verifyExtensionContainingType(generatedExtension);
            return this.extensions.getRepeatedFieldCount(generatedExtension.descriptor);
        }

        public final <Type> Type getExtension(GeneratedExtension<MessageType, Type> generatedExtension) {
            verifyExtensionContainingType(generatedExtension);
            Object field = this.extensions.getField(generatedExtension.descriptor);
            if (field == null) {
                return generatedExtension.defaultValue;
            }
            return generatedExtension.fromFieldSetType(field);
        }

        public final <Type> Type getExtension(GeneratedExtension<MessageType, List<Type>> generatedExtension, int i) {
            verifyExtensionContainingType(generatedExtension);
            return generatedExtension.singularFromFieldSetType(this.extensions.getRepeatedField(generatedExtension.descriptor, i));
        }

        /* access modifiers changed from: protected */
        public boolean extensionsAreInitialized() {
            return this.extensions.isInitialized();
        }

        /* access modifiers changed from: protected */
        public boolean parseUnknownField(CodedInputStream codedInputStream, CodedOutputStream codedOutputStream, ExtensionRegistryLite extensionRegistryLite, int i) throws IOException {
            return GeneratedMessageLite.parseUnknownField(this.extensions, getDefaultInstanceForType(), codedInputStream, codedOutputStream, extensionRegistryLite, i);
        }

        /* access modifiers changed from: protected */
        public void makeExtensionsImmutable() {
            this.extensions.makeImmutable();
        }

        /* access modifiers changed from: protected */
        public ExtensionWriter newExtensionWriter() {
            return new ExtensionWriter<>(false);
        }

        /* access modifiers changed from: protected */
        public ExtensionWriter newMessageSetExtensionWriter() {
            return new ExtensionWriter<>(true);
        }

        /* access modifiers changed from: protected */
        public int extensionsSerializedSize() {
            return this.extensions.getSerializedSize();
        }

        /* access modifiers changed from: protected */
        public int extensionsSerializedSizeAsMessageSet() {
            return this.extensions.getMessageSetSerializedSize();
        }
    }

    public interface ExtendableMessageOrBuilder<MessageType extends ExtendableMessage> extends MessageLiteOrBuilder {
        <Type> Type getExtension(GeneratedExtension<MessageType, Type> generatedExtension);

        <Type> Type getExtension(GeneratedExtension<MessageType, List<Type>> generatedExtension, int i);

        <Type> int getExtensionCount(GeneratedExtension<MessageType, List<Type>> generatedExtension);

        <Type> boolean hasExtension(GeneratedExtension<MessageType, Type> generatedExtension);
    }

    static final class ExtensionDescriptor implements FieldDescriptorLite<ExtensionDescriptor> {
        final EnumLiteMap<?> enumTypeMap;
        final boolean isPacked;
        final boolean isRepeated;
        final int number;
        final FieldType type;

        ExtensionDescriptor(EnumLiteMap<?> enumLiteMap, int i, FieldType fieldType, boolean z, boolean z2) {
            this.enumTypeMap = enumLiteMap;
            this.number = i;
            this.type = fieldType;
            this.isRepeated = z;
            this.isPacked = z2;
        }

        public int getNumber() {
            return this.number;
        }

        public FieldType getLiteType() {
            return this.type;
        }

        public JavaType getLiteJavaType() {
            return this.type.getJavaType();
        }

        public boolean isRepeated() {
            return this.isRepeated;
        }

        public boolean isPacked() {
            return this.isPacked;
        }

        public EnumLiteMap<?> getEnumType() {
            return this.enumTypeMap;
        }

        public com.google.protobuf.MessageLite.Builder internalMergeFrom(com.google.protobuf.MessageLite.Builder builder, MessageLite messageLite) {
            return ((Builder) builder).mergeFrom((GeneratedMessageLite) messageLite);
        }

        public int compareTo(ExtensionDescriptor extensionDescriptor) {
            return this.number - extensionDescriptor.number;
        }
    }

    public static class GeneratedExtension<ContainingType extends MessageLite, Type> {
        final ContainingType containingTypeDefaultInstance;
        final Type defaultValue;
        final ExtensionDescriptor descriptor;
        final Method enumValueOf;
        final MessageLite messageDefaultInstance;
        final Class singularType;

        GeneratedExtension(ContainingType containingtype, Type type, MessageLite messageLite, ExtensionDescriptor extensionDescriptor, Class cls) {
            if (containingtype == null) {
                throw new IllegalArgumentException("Null containingTypeDefaultInstance");
            } else if (extensionDescriptor.getLiteType() == FieldType.MESSAGE && messageLite == null) {
                throw new IllegalArgumentException("Null messageDefaultInstance");
            } else {
                this.containingTypeDefaultInstance = containingtype;
                this.defaultValue = type;
                this.messageDefaultInstance = messageLite;
                this.descriptor = extensionDescriptor;
                this.singularType = cls;
                if (EnumLite.class.isAssignableFrom(cls)) {
                    this.enumValueOf = GeneratedMessageLite.getMethodOrDie(cls, "valueOf", Integer.TYPE);
                    return;
                }
                this.enumValueOf = null;
            }
        }

        public ContainingType getContainingTypeDefaultInstance() {
            return this.containingTypeDefaultInstance;
        }

        public int getNumber() {
            return this.descriptor.getNumber();
        }

        public MessageLite getMessageDefaultInstance() {
            return this.messageDefaultInstance;
        }

        /* access modifiers changed from: 0000 */
        public Object fromFieldSetType(Object obj) {
            if (!this.descriptor.isRepeated()) {
                return singularFromFieldSetType(obj);
            }
            if (this.descriptor.getLiteJavaType() != JavaType.ENUM) {
                return obj;
            }
            ArrayList arrayList = new ArrayList();
            for (Object singularFromFieldSetType : (List) obj) {
                arrayList.add(singularFromFieldSetType(singularFromFieldSetType));
            }
            return arrayList;
        }

        /* access modifiers changed from: 0000 */
        public Object singularFromFieldSetType(Object obj) {
            if (this.descriptor.getLiteJavaType() != JavaType.ENUM) {
                return obj;
            }
            return GeneratedMessageLite.invokeOrDie(this.enumValueOf, null, (Integer) obj);
        }

        /* access modifiers changed from: 0000 */
        public Object toFieldSetType(Object obj) {
            if (!this.descriptor.isRepeated()) {
                return singularToFieldSetType(obj);
            }
            if (this.descriptor.getLiteJavaType() != JavaType.ENUM) {
                return obj;
            }
            ArrayList arrayList = new ArrayList();
            for (Object singularToFieldSetType : (List) obj) {
                arrayList.add(singularToFieldSetType(singularToFieldSetType));
            }
            return arrayList;
        }

        /* access modifiers changed from: 0000 */
        public Object singularToFieldSetType(Object obj) {
            if (this.descriptor.getLiteJavaType() == JavaType.ENUM) {
                return Integer.valueOf(((EnumLite) obj).getNumber());
            }
            return obj;
        }
    }

    static final class SerializedForm implements Serializable {
        private static final long serialVersionUID = 0;
        private byte[] asBytes;
        private String messageClassName;

        SerializedForm(MessageLite messageLite) {
            this.messageClassName = messageLite.getClass().getName();
            this.asBytes = messageLite.toByteArray();
        }

        /* access modifiers changed from: protected */
        public Object readResolve() throws ObjectStreamException {
            try {
                com.google.protobuf.MessageLite.Builder builder = (com.google.protobuf.MessageLite.Builder) Class.forName(this.messageClassName).getMethod("newBuilder", new Class[0]).invoke(null, new Object[0]);
                builder.mergeFrom(this.asBytes);
                return builder.buildPartial();
            } catch (ClassNotFoundException e) {
                throw new RuntimeException("Unable to find proto buffer class", e);
            } catch (NoSuchMethodException e2) {
                throw new RuntimeException("Unable to find newBuilder method", e2);
            } catch (IllegalAccessException e3) {
                throw new RuntimeException("Unable to call newBuilder method", e3);
            } catch (InvocationTargetException e4) {
                throw new RuntimeException("Error calling newBuilder", e4.getCause());
            } catch (InvalidProtocolBufferException e5) {
                throw new RuntimeException("Unable to understand proto buffer", e5);
            }
        }
    }

    protected GeneratedMessageLite() {
    }

    protected GeneratedMessageLite(Builder builder) {
    }

    public Parser<? extends MessageLite> getParserForType() {
        throw new UnsupportedOperationException("This is supposed to be overridden by subclasses.");
    }

    /* access modifiers changed from: protected */
    public boolean parseUnknownField(CodedInputStream codedInputStream, CodedOutputStream codedOutputStream, ExtensionRegistryLite extensionRegistryLite, int i) throws IOException {
        return codedInputStream.skipField(i, codedOutputStream);
    }

    /* access modifiers changed from: protected */
    public void makeExtensionsImmutable() {
    }

    /* access modifiers changed from: private */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00e2  */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x00f4  */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x0100  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static <MessageType extends com.google.protobuf.MessageLite> boolean parseUnknownField(com.google.protobuf.FieldSet<com.google.protobuf.GeneratedMessageLite.ExtensionDescriptor> r6, MessageType r7, com.google.protobuf.CodedInputStream r8, com.google.protobuf.CodedOutputStream r9, com.google.protobuf.ExtensionRegistryLite r10, int r11) throws java.io.IOException {
        /*
            r2 = 0
            r1 = 1
            int r0 = com.google.protobuf.WireFormat.getTagWireType(r11)
            int r3 = com.google.protobuf.WireFormat.getTagFieldNumber(r11)
            com.google.protobuf.GeneratedMessageLite$GeneratedExtension r4 = r10.findLiteExtensionByNumber(r7, r3)
            if (r4 != 0) goto L_0x0019
            r0 = r2
            r3 = r1
        L_0x0012:
            if (r3 == 0) goto L_0x004a
            boolean r0 = r8.skipField(r11, r9)
        L_0x0018:
            return r0
        L_0x0019:
            com.google.protobuf.GeneratedMessageLite$ExtensionDescriptor r3 = r4.descriptor
            com.google.protobuf.WireFormat$FieldType r3 = r3.getLiteType()
            int r3 = com.google.protobuf.FieldSet.getWireFormatForFieldType(r3, r2)
            if (r0 != r3) goto L_0x0028
            r0 = r2
            r3 = r2
            goto L_0x0012
        L_0x0028:
            com.google.protobuf.GeneratedMessageLite$ExtensionDescriptor r3 = r4.descriptor
            boolean r3 = r3.isRepeated
            if (r3 == 0) goto L_0x0047
            com.google.protobuf.GeneratedMessageLite$ExtensionDescriptor r3 = r4.descriptor
            com.google.protobuf.WireFormat$FieldType r3 = r3.type
            boolean r3 = r3.isPackable()
            if (r3 == 0) goto L_0x0047
            com.google.protobuf.GeneratedMessageLite$ExtensionDescriptor r3 = r4.descriptor
            com.google.protobuf.WireFormat$FieldType r3 = r3.getLiteType()
            int r3 = com.google.protobuf.FieldSet.getWireFormatForFieldType(r3, r1)
            if (r0 != r3) goto L_0x0047
            r0 = r1
            r3 = r2
            goto L_0x0012
        L_0x0047:
            r0 = r2
            r3 = r1
            goto L_0x0012
        L_0x004a:
            if (r0 == 0) goto L_0x009c
            int r0 = r8.readRawVarint32()
            int r0 = r8.pushLimit(r0)
            com.google.protobuf.GeneratedMessageLite$ExtensionDescriptor r3 = r4.descriptor
            com.google.protobuf.WireFormat$FieldType r3 = r3.getLiteType()
            com.google.protobuf.WireFormat$FieldType r5 = com.google.protobuf.WireFormat.FieldType.ENUM
            if (r3 != r5) goto L_0x0080
        L_0x005e:
            int r2 = r8.getBytesUntilLimit()
            if (r2 <= 0) goto L_0x0096
            int r2 = r8.readEnum()
            com.google.protobuf.GeneratedMessageLite$ExtensionDescriptor r3 = r4.descriptor
            com.google.protobuf.Internal$EnumLiteMap r3 = r3.getEnumType()
            com.google.protobuf.Internal$EnumLite r2 = r3.findValueByNumber(r2)
            if (r2 != 0) goto L_0x0076
            r0 = r1
            goto L_0x0018
        L_0x0076:
            com.google.protobuf.GeneratedMessageLite$ExtensionDescriptor r3 = r4.descriptor
            java.lang.Object r2 = r4.singularToFieldSetType(r2)
            r6.addRepeatedField(r3, r2)
            goto L_0x005e
        L_0x0080:
            int r3 = r8.getBytesUntilLimit()
            if (r3 <= 0) goto L_0x0096
            com.google.protobuf.GeneratedMessageLite$ExtensionDescriptor r3 = r4.descriptor
            com.google.protobuf.WireFormat$FieldType r3 = r3.getLiteType()
            java.lang.Object r3 = com.google.protobuf.FieldSet.readPrimitiveField(r8, r3, r2)
            com.google.protobuf.GeneratedMessageLite$ExtensionDescriptor r5 = r4.descriptor
            r6.addRepeatedField(r5, r3)
            goto L_0x0080
        L_0x0096:
            r8.popLimit(r0)
        L_0x0099:
            r0 = r1
            goto L_0x0018
        L_0x009c:
            int[] r0 = com.google.protobuf.GeneratedMessageLite.AnonymousClass1.$SwitchMap$com$google$protobuf$WireFormat$JavaType
            com.google.protobuf.GeneratedMessageLite$ExtensionDescriptor r3 = r4.descriptor
            com.google.protobuf.WireFormat$JavaType r3 = r3.getLiteJavaType()
            int r3 = r3.ordinal()
            r0 = r0[r3]
            switch(r0) {
                case 1: goto L_0x00c9;
                case 2: goto L_0x0104;
                default: goto L_0x00ad;
            }
        L_0x00ad:
            com.google.protobuf.GeneratedMessageLite$ExtensionDescriptor r0 = r4.descriptor
            com.google.protobuf.WireFormat$FieldType r0 = r0.getLiteType()
            java.lang.Object r0 = com.google.protobuf.FieldSet.readPrimitiveField(r8, r0, r2)
        L_0x00b7:
            com.google.protobuf.GeneratedMessageLite$ExtensionDescriptor r2 = r4.descriptor
            boolean r2 = r2.isRepeated()
            if (r2 == 0) goto L_0x011d
            com.google.protobuf.GeneratedMessageLite$ExtensionDescriptor r2 = r4.descriptor
            java.lang.Object r0 = r4.singularToFieldSetType(r0)
            r6.addRepeatedField(r2, r0)
            goto L_0x0099
        L_0x00c9:
            r2 = 0
            com.google.protobuf.GeneratedMessageLite$ExtensionDescriptor r0 = r4.descriptor
            boolean r0 = r0.isRepeated()
            if (r0 != 0) goto L_0x0128
            com.google.protobuf.GeneratedMessageLite$ExtensionDescriptor r0 = r4.descriptor
            java.lang.Object r0 = r6.getField(r0)
            com.google.protobuf.MessageLite r0 = (com.google.protobuf.MessageLite) r0
            if (r0 == 0) goto L_0x0128
            com.google.protobuf.MessageLite$Builder r0 = r0.toBuilder()
        L_0x00e0:
            if (r0 != 0) goto L_0x00ea
            com.google.protobuf.MessageLite r0 = r4.getMessageDefaultInstance()
            com.google.protobuf.MessageLite$Builder r0 = r0.newBuilderForType()
        L_0x00ea:
            com.google.protobuf.GeneratedMessageLite$ExtensionDescriptor r2 = r4.descriptor
            com.google.protobuf.WireFormat$FieldType r2 = r2.getLiteType()
            com.google.protobuf.WireFormat$FieldType r3 = com.google.protobuf.WireFormat.FieldType.GROUP
            if (r2 != r3) goto L_0x0100
            int r2 = r4.getNumber()
            r8.readGroup(r2, r0, r10)
        L_0x00fb:
            com.google.protobuf.MessageLite r0 = r0.build()
            goto L_0x00b7
        L_0x0100:
            r8.readMessage(r0, r10)
            goto L_0x00fb
        L_0x0104:
            int r2 = r8.readEnum()
            com.google.protobuf.GeneratedMessageLite$ExtensionDescriptor r0 = r4.descriptor
            com.google.protobuf.Internal$EnumLiteMap r0 = r0.getEnumType()
            com.google.protobuf.Internal$EnumLite r0 = r0.findValueByNumber(r2)
            if (r0 != 0) goto L_0x00b7
            r9.writeRawVarint32(r11)
            r9.writeUInt32NoTag(r2)
            r0 = r1
            goto L_0x0018
        L_0x011d:
            com.google.protobuf.GeneratedMessageLite$ExtensionDescriptor r2 = r4.descriptor
            java.lang.Object r0 = r4.singularToFieldSetType(r0)
            r6.setField(r2, r0)
            goto L_0x0099
        L_0x0128:
            r0 = r2
            goto L_0x00e0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.GeneratedMessageLite.parseUnknownField(com.google.protobuf.FieldSet, com.google.protobuf.MessageLite, com.google.protobuf.CodedInputStream, com.google.protobuf.CodedOutputStream, com.google.protobuf.ExtensionRegistryLite, int):boolean");
    }

    public static <ContainingType extends MessageLite, Type> GeneratedExtension<ContainingType, Type> newSingularGeneratedExtension(ContainingType containingtype, Type type, MessageLite messageLite, EnumLiteMap<?> enumLiteMap, int i, FieldType fieldType, Class cls) {
        GeneratedExtension generatedExtension = new GeneratedExtension(containingtype, type, messageLite, new ExtensionDescriptor(enumLiteMap, i, fieldType, false, false), cls);
        return generatedExtension;
    }

    public static <ContainingType extends MessageLite, Type> GeneratedExtension<ContainingType, Type> newRepeatedGeneratedExtension(ContainingType containingtype, MessageLite messageLite, EnumLiteMap<?> enumLiteMap, int i, FieldType fieldType, boolean z, Class cls) {
        GeneratedExtension generatedExtension = new GeneratedExtension(containingtype, Collections.emptyList(), messageLite, new ExtensionDescriptor(enumLiteMap, i, fieldType, true, z), cls);
        return generatedExtension;
    }

    static Method getMethodOrDie(Class cls, String str, Class... clsArr) {
        try {
            return cls.getMethod(str, clsArr);
        } catch (NoSuchMethodException e) {
            String valueOf = String.valueOf(String.valueOf(cls.getName()));
            String valueOf2 = String.valueOf(String.valueOf(str));
            throw new RuntimeException(new StringBuilder(valueOf.length() + 45 + valueOf2.length()).append("Generated message class \"").append(valueOf).append("\" missing method \"").append(valueOf2).append("\".").toString(), e);
        }
    }

    static Object invokeOrDie(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e);
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            } else if (cause instanceof Error) {
                throw ((Error) cause);
            } else {
                throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
            }
        }
    }

    /* access modifiers changed from: protected */
    public Object writeReplace() throws ObjectStreamException {
        return new SerializedForm(this);
    }
}
