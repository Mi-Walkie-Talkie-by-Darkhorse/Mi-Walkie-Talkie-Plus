package com.google.protobuf;

import com.google.protobuf.Descriptors.Descriptor;
import com.google.protobuf.Descriptors.FieldDescriptor;
import com.google.protobuf.Descriptors.FieldDescriptor.JavaType;
import com.google.protobuf.Descriptors.FieldDescriptor.Type;
import com.google.protobuf.Descriptors.OneofDescriptor;
import com.google.protobuf.ExtensionRegistry.ExtensionInfo;
import com.google.protobuf.Message.Builder;
import com.google.protobuf.UnknownFieldSet.Field;
import com.google.protobuf.WireFormat.FieldType;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.TreeMap;

class MessageReflection {

    static class BuilderAdapter implements MergeTarget {
        private final Builder builder;

        public Descriptor getDescriptorForType() {
            return this.builder.getDescriptorForType();
        }

        public BuilderAdapter(Builder builder2) {
            this.builder = builder2;
        }

        public Object getField(FieldDescriptor fieldDescriptor) {
            return this.builder.getField(fieldDescriptor);
        }

        public boolean hasField(FieldDescriptor fieldDescriptor) {
            return this.builder.hasField(fieldDescriptor);
        }

        public MergeTarget setField(FieldDescriptor fieldDescriptor, Object obj) {
            this.builder.setField(fieldDescriptor, obj);
            return this;
        }

        public MergeTarget clearField(FieldDescriptor fieldDescriptor) {
            this.builder.clearField(fieldDescriptor);
            return this;
        }

        public MergeTarget setRepeatedField(FieldDescriptor fieldDescriptor, int i, Object obj) {
            this.builder.setRepeatedField(fieldDescriptor, i, obj);
            return this;
        }

        public MergeTarget addRepeatedField(FieldDescriptor fieldDescriptor, Object obj) {
            this.builder.addRepeatedField(fieldDescriptor, obj);
            return this;
        }

        public boolean hasOneof(OneofDescriptor oneofDescriptor) {
            return this.builder.hasOneof(oneofDescriptor);
        }

        public MergeTarget clearOneof(OneofDescriptor oneofDescriptor) {
            this.builder.clearOneof(oneofDescriptor);
            return this;
        }

        public FieldDescriptor getOneofFieldDescriptor(OneofDescriptor oneofDescriptor) {
            return this.builder.getOneofFieldDescriptor(oneofDescriptor);
        }

        public ContainerType getContainerType() {
            return ContainerType.MESSAGE;
        }

        public ExtensionInfo findExtensionByName(ExtensionRegistry extensionRegistry, String str) {
            return extensionRegistry.findImmutableExtensionByName(str);
        }

        public ExtensionInfo findExtensionByNumber(ExtensionRegistry extensionRegistry, Descriptor descriptor, int i) {
            return extensionRegistry.findImmutableExtensionByNumber(descriptor, i);
        }

        public Object parseGroup(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, FieldDescriptor fieldDescriptor, Message message) throws IOException {
            Builder newBuilderForField;
            if (message != null) {
                newBuilderForField = message.newBuilderForType();
            } else {
                newBuilderForField = this.builder.newBuilderForField(fieldDescriptor);
            }
            if (!fieldDescriptor.isRepeated()) {
                Message message2 = (Message) getField(fieldDescriptor);
                if (message2 != null) {
                    newBuilderForField.mergeFrom(message2);
                }
            }
            codedInputStream.readGroup(fieldDescriptor.getNumber(), (MessageLite.Builder) newBuilderForField, extensionRegistryLite);
            return newBuilderForField.buildPartial();
        }

        public Object parseMessage(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, FieldDescriptor fieldDescriptor, Message message) throws IOException {
            Builder newBuilderForField;
            if (message != null) {
                newBuilderForField = message.newBuilderForType();
            } else {
                newBuilderForField = this.builder.newBuilderForField(fieldDescriptor);
            }
            if (!fieldDescriptor.isRepeated()) {
                Message message2 = (Message) getField(fieldDescriptor);
                if (message2 != null) {
                    newBuilderForField.mergeFrom(message2);
                }
            }
            codedInputStream.readMessage((MessageLite.Builder) newBuilderForField, extensionRegistryLite);
            return newBuilderForField.buildPartial();
        }

        public Object parseMessageFromBytes(ByteString byteString, ExtensionRegistryLite extensionRegistryLite, FieldDescriptor fieldDescriptor, Message message) throws IOException {
            Builder newBuilderForField;
            if (message != null) {
                newBuilderForField = message.newBuilderForType();
            } else {
                newBuilderForField = this.builder.newBuilderForField(fieldDescriptor);
            }
            if (!fieldDescriptor.isRepeated()) {
                Message message2 = (Message) getField(fieldDescriptor);
                if (message2 != null) {
                    newBuilderForField.mergeFrom(message2);
                }
            }
            newBuilderForField.mergeFrom(byteString, extensionRegistryLite);
            return newBuilderForField.buildPartial();
        }

        public MergeTarget newMergeTargetForField(FieldDescriptor fieldDescriptor, Message message) {
            if (message != null) {
                return new BuilderAdapter(message.newBuilderForType());
            }
            return new BuilderAdapter(this.builder.newBuilderForField(fieldDescriptor));
        }

        public Object readPrimitiveField(CodedInputStream codedInputStream, FieldType fieldType, boolean z) throws IOException {
            return FieldSet.readPrimitiveField(codedInputStream, fieldType, z);
        }

        public Object finish() {
            return this.builder.buildPartial();
        }
    }

    static class ExtensionAdapter implements MergeTarget {
        private final FieldSet<FieldDescriptor> extensions;

        ExtensionAdapter(FieldSet<FieldDescriptor> fieldSet) {
            this.extensions = fieldSet;
        }

        public Descriptor getDescriptorForType() {
            throw new UnsupportedOperationException("getDescriptorForType() called on FieldSet object");
        }

        public Object getField(FieldDescriptor fieldDescriptor) {
            return this.extensions.getField(fieldDescriptor);
        }

        public boolean hasField(FieldDescriptor fieldDescriptor) {
            return this.extensions.hasField(fieldDescriptor);
        }

        public MergeTarget setField(FieldDescriptor fieldDescriptor, Object obj) {
            this.extensions.setField(fieldDescriptor, obj);
            return this;
        }

        public MergeTarget clearField(FieldDescriptor fieldDescriptor) {
            this.extensions.clearField(fieldDescriptor);
            return this;
        }

        public MergeTarget setRepeatedField(FieldDescriptor fieldDescriptor, int i, Object obj) {
            this.extensions.setRepeatedField(fieldDescriptor, i, obj);
            return this;
        }

        public MergeTarget addRepeatedField(FieldDescriptor fieldDescriptor, Object obj) {
            this.extensions.addRepeatedField(fieldDescriptor, obj);
            return this;
        }

        public boolean hasOneof(OneofDescriptor oneofDescriptor) {
            return false;
        }

        public MergeTarget clearOneof(OneofDescriptor oneofDescriptor) {
            return this;
        }

        public FieldDescriptor getOneofFieldDescriptor(OneofDescriptor oneofDescriptor) {
            return null;
        }

        public ContainerType getContainerType() {
            return ContainerType.EXTENSION_SET;
        }

        public ExtensionInfo findExtensionByName(ExtensionRegistry extensionRegistry, String str) {
            return extensionRegistry.findImmutableExtensionByName(str);
        }

        public ExtensionInfo findExtensionByNumber(ExtensionRegistry extensionRegistry, Descriptor descriptor, int i) {
            return extensionRegistry.findImmutableExtensionByNumber(descriptor, i);
        }

        public Object parseGroup(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, FieldDescriptor fieldDescriptor, Message message) throws IOException {
            Builder newBuilderForType = message.newBuilderForType();
            if (!fieldDescriptor.isRepeated()) {
                Message message2 = (Message) getField(fieldDescriptor);
                if (message2 != null) {
                    newBuilderForType.mergeFrom(message2);
                }
            }
            codedInputStream.readGroup(fieldDescriptor.getNumber(), (MessageLite.Builder) newBuilderForType, extensionRegistryLite);
            return newBuilderForType.buildPartial();
        }

        public Object parseMessage(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, FieldDescriptor fieldDescriptor, Message message) throws IOException {
            Builder newBuilderForType = message.newBuilderForType();
            if (!fieldDescriptor.isRepeated()) {
                Message message2 = (Message) getField(fieldDescriptor);
                if (message2 != null) {
                    newBuilderForType.mergeFrom(message2);
                }
            }
            codedInputStream.readMessage((MessageLite.Builder) newBuilderForType, extensionRegistryLite);
            return newBuilderForType.buildPartial();
        }

        public Object parseMessageFromBytes(ByteString byteString, ExtensionRegistryLite extensionRegistryLite, FieldDescriptor fieldDescriptor, Message message) throws IOException {
            Builder newBuilderForType = message.newBuilderForType();
            if (!fieldDescriptor.isRepeated()) {
                Message message2 = (Message) getField(fieldDescriptor);
                if (message2 != null) {
                    newBuilderForType.mergeFrom(message2);
                }
            }
            newBuilderForType.mergeFrom(byteString, extensionRegistryLite);
            return newBuilderForType.buildPartial();
        }

        public MergeTarget newMergeTargetForField(FieldDescriptor fieldDescriptor, Message message) {
            throw new UnsupportedOperationException("newMergeTargetForField() called on FieldSet object");
        }

        public Object readPrimitiveField(CodedInputStream codedInputStream, FieldType fieldType, boolean z) throws IOException {
            return FieldSet.readPrimitiveField(codedInputStream, fieldType, z);
        }

        public Object finish() {
            throw new UnsupportedOperationException("finish() called on FieldSet object");
        }
    }

    interface MergeTarget {

        public enum ContainerType {
            MESSAGE,
            EXTENSION_SET
        }

        MergeTarget addRepeatedField(FieldDescriptor fieldDescriptor, Object obj);

        MergeTarget clearField(FieldDescriptor fieldDescriptor);

        MergeTarget clearOneof(OneofDescriptor oneofDescriptor);

        ExtensionInfo findExtensionByName(ExtensionRegistry extensionRegistry, String str);

        ExtensionInfo findExtensionByNumber(ExtensionRegistry extensionRegistry, Descriptor descriptor, int i);

        Object finish();

        ContainerType getContainerType();

        Descriptor getDescriptorForType();

        Object getField(FieldDescriptor fieldDescriptor);

        FieldDescriptor getOneofFieldDescriptor(OneofDescriptor oneofDescriptor);

        boolean hasField(FieldDescriptor fieldDescriptor);

        boolean hasOneof(OneofDescriptor oneofDescriptor);

        MergeTarget newMergeTargetForField(FieldDescriptor fieldDescriptor, Message message);

        Object parseGroup(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, FieldDescriptor fieldDescriptor, Message message) throws IOException;

        Object parseMessage(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, FieldDescriptor fieldDescriptor, Message message) throws IOException;

        Object parseMessageFromBytes(ByteString byteString, ExtensionRegistryLite extensionRegistryLite, FieldDescriptor fieldDescriptor, Message message) throws IOException;

        Object readPrimitiveField(CodedInputStream codedInputStream, FieldType fieldType, boolean z) throws IOException;

        MergeTarget setField(FieldDescriptor fieldDescriptor, Object obj);

        MergeTarget setRepeatedField(FieldDescriptor fieldDescriptor, int i, Object obj);
    }

    MessageReflection() {
    }

    static void writeMessageTo(Message message, CodedOutputStream codedOutputStream, boolean z) throws IOException {
        boolean messageSetWireFormat = message.getDescriptorForType().getOptions().getMessageSetWireFormat();
        Map allFields = message.getAllFields();
        if (z) {
            Map treeMap = new TreeMap(allFields);
            for (FieldDescriptor fieldDescriptor : message.getDescriptorForType().getFields()) {
                if (fieldDescriptor.isRequired() && !treeMap.containsKey(fieldDescriptor)) {
                    treeMap.put(fieldDescriptor, message.getField(fieldDescriptor));
                }
            }
            allFields = treeMap;
        }
        for (Entry entry : allFields.entrySet()) {
            FieldDescriptor fieldDescriptor2 = (FieldDescriptor) entry.getKey();
            Object value = entry.getValue();
            if (!messageSetWireFormat || !fieldDescriptor2.isExtension() || fieldDescriptor2.getType() != Type.MESSAGE || fieldDescriptor2.isRepeated()) {
                FieldSet.writeField(fieldDescriptor2, value, codedOutputStream);
            } else {
                codedOutputStream.writeMessageSetExtension(fieldDescriptor2.getNumber(), (Message) value);
            }
        }
        UnknownFieldSet unknownFields = message.getUnknownFields();
        if (messageSetWireFormat) {
            unknownFields.writeAsMessageSetTo(codedOutputStream);
        } else {
            unknownFields.writeTo(codedOutputStream);
        }
    }

    static int getSerializedSize(Message message) {
        int i;
        int computeFieldSize;
        int i2 = 0;
        boolean messageSetWireFormat = message.getDescriptorForType().getOptions().getMessageSetWireFormat();
        Iterator it = message.getAllFields().entrySet().iterator();
        while (true) {
            i = i2;
            if (!it.hasNext()) {
                break;
            }
            Entry entry = (Entry) it.next();
            FieldDescriptor fieldDescriptor = (FieldDescriptor) entry.getKey();
            Object value = entry.getValue();
            if (!messageSetWireFormat || !fieldDescriptor.isExtension() || fieldDescriptor.getType() != Type.MESSAGE || fieldDescriptor.isRepeated()) {
                computeFieldSize = FieldSet.computeFieldSize(fieldDescriptor, value);
            } else {
                computeFieldSize = CodedOutputStream.computeMessageSetExtensionSize(fieldDescriptor.getNumber(), (Message) value);
            }
            i2 = computeFieldSize + i;
        }
        UnknownFieldSet unknownFields = message.getUnknownFields();
        if (messageSetWireFormat) {
            return unknownFields.getSerializedSizeAsMessageSet() + i;
        }
        return unknownFields.getSerializedSize() + i;
    }

    static String delimitWithCommas(List<String> list) {
        StringBuilder sb = new StringBuilder();
        for (String str : list) {
            if (sb.length() > 0) {
                sb.append(", ");
            }
            sb.append(str);
        }
        return sb.toString();
    }

    static boolean isInitialized(MessageOrBuilder messageOrBuilder) {
        for (FieldDescriptor fieldDescriptor : messageOrBuilder.getDescriptorForType().getFields()) {
            if (fieldDescriptor.isRequired() && !messageOrBuilder.hasField(fieldDescriptor)) {
                return false;
            }
        }
        for (Entry entry : messageOrBuilder.getAllFields().entrySet()) {
            FieldDescriptor fieldDescriptor2 = (FieldDescriptor) entry.getKey();
            if (fieldDescriptor2.getJavaType() == JavaType.MESSAGE) {
                if (fieldDescriptor2.isRepeated()) {
                    for (Message isInitialized : (List) entry.getValue()) {
                        if (!isInitialized.isInitialized()) {
                            return false;
                        }
                    }
                    continue;
                } else if (!((Message) entry.getValue()).isInitialized()) {
                    return false;
                }
            }
        }
        return true;
    }

    private static String subMessagePrefix(String str, FieldDescriptor fieldDescriptor, int i) {
        StringBuilder sb = new StringBuilder(str);
        if (fieldDescriptor.isExtension()) {
            sb.append('(').append(fieldDescriptor.getFullName()).append(')');
        } else {
            sb.append(fieldDescriptor.getName());
        }
        if (i != -1) {
            sb.append('[').append(i).append(']');
        }
        sb.append('.');
        return sb.toString();
    }

    private static void findMissingFields(MessageOrBuilder messageOrBuilder, String str, List<String> list) {
        for (FieldDescriptor fieldDescriptor : messageOrBuilder.getDescriptorForType().getFields()) {
            if (fieldDescriptor.isRequired() && !messageOrBuilder.hasField(fieldDescriptor)) {
                String valueOf = String.valueOf(str);
                String valueOf2 = String.valueOf(fieldDescriptor.getName());
                list.add(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf));
            }
        }
        for (Entry entry : messageOrBuilder.getAllFields().entrySet()) {
            FieldDescriptor fieldDescriptor2 = (FieldDescriptor) entry.getKey();
            Object value = entry.getValue();
            if (fieldDescriptor2.getJavaType() == JavaType.MESSAGE) {
                if (fieldDescriptor2.isRepeated()) {
                    int i = 0;
                    for (MessageOrBuilder findMissingFields : (List) value) {
                        int i2 = i + 1;
                        findMissingFields(findMissingFields, subMessagePrefix(str, fieldDescriptor2, i), list);
                        i = i2;
                    }
                } else if (messageOrBuilder.hasField(fieldDescriptor2)) {
                    findMissingFields((MessageOrBuilder) value, subMessagePrefix(str, fieldDescriptor2, -1), list);
                }
            }
        }
    }

    static List<String> findMissingFields(MessageOrBuilder messageOrBuilder) {
        ArrayList arrayList = new ArrayList();
        findMissingFields(messageOrBuilder, "", arrayList);
        return arrayList;
    }

    /* JADX WARNING: type inference failed for: r1v0 */
    /* JADX WARNING: type inference failed for: r1v1, types: [com.google.protobuf.Message] */
    /* JADX WARNING: type inference failed for: r0v34, types: [com.google.protobuf.Message] */
    /* JADX WARNING: type inference failed for: r1v14 */
    /* JADX WARNING: type inference failed for: r0v40 */
    /* JADX WARNING: type inference failed for: r1v15 */
    /* JADX WARNING: type inference failed for: r0v41 */
    /* JADX WARNING: type inference failed for: r1v16 */
    /* JADX WARNING: type inference failed for: r1v17 */
    /* JADX WARNING: type inference failed for: r1v18 */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Unknown variable types count: 3 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static boolean mergeFieldFrom(com.google.protobuf.CodedInputStream r8, com.google.protobuf.UnknownFieldSet.Builder r9, com.google.protobuf.ExtensionRegistryLite r10, com.google.protobuf.Descriptors.Descriptor r11, com.google.protobuf.MessageReflection.MergeTarget r12, int r13) throws java.io.IOException {
        /*
            r1 = 0
            r3 = 0
            r2 = 1
            com.google.protobuf.DescriptorProtos$MessageOptions r0 = r11.getOptions()
            boolean r0 = r0.getMessageSetWireFormat()
            if (r0 == 0) goto L_0x0016
            int r0 = com.google.protobuf.WireFormat.MESSAGE_SET_ITEM_TAG
            if (r13 != r0) goto L_0x0016
            mergeMessageSetExtensionFromCodedStream(r8, r9, r10, r11, r12)
            r0 = r2
        L_0x0015:
            return r0
        L_0x0016:
            int r5 = com.google.protobuf.WireFormat.getTagWireType(r13)
            int r6 = com.google.protobuf.WireFormat.getTagFieldNumber(r13)
            boolean r0 = r11.isExtensionNumber(r6)
            if (r0 == 0) goto L_0x006f
            boolean r0 = r10 instanceof com.google.protobuf.ExtensionRegistry
            if (r0 == 0) goto L_0x006d
            r0 = r10
            com.google.protobuf.ExtensionRegistry r0 = (com.google.protobuf.ExtensionRegistry) r0
            com.google.protobuf.ExtensionRegistry$ExtensionInfo r0 = r12.findExtensionByNumber(r0, r11, r6)
            if (r0 != 0) goto L_0x003f
            r0 = r1
        L_0x0032:
            r4 = r1
            r1 = r0
        L_0x0034:
            if (r4 != 0) goto L_0x007f
            r0 = r3
            r3 = r2
        L_0x0038:
            if (r3 == 0) goto L_0x00a0
            boolean r0 = r9.mergeFieldFrom(r13, r8)
            goto L_0x0015
        L_0x003f:
            com.google.protobuf.Descriptors$FieldDescriptor r1 = r0.descriptor
            com.google.protobuf.Message r0 = r0.defaultInstance
            if (r0 != 0) goto L_0x0032
            com.google.protobuf.Descriptors$FieldDescriptor$JavaType r4 = r1.getJavaType()
            com.google.protobuf.Descriptors$FieldDescriptor$JavaType r7 = com.google.protobuf.Descriptors.FieldDescriptor.JavaType.MESSAGE
            if (r4 != r7) goto L_0x0032
            java.lang.IllegalStateException r2 = new java.lang.IllegalStateException
            java.lang.String r3 = "Message-typed extension lacked default instance: "
            java.lang.String r0 = r1.getFullName()
            java.lang.String r0 = java.lang.String.valueOf(r0)
            int r1 = r0.length()
            if (r1 == 0) goto L_0x0067
            java.lang.String r0 = r3.concat(r0)
        L_0x0063:
            r2.<init>(r0)
            throw r2
        L_0x0067:
            java.lang.String r0 = new java.lang.String
            r0.<init>(r3)
            goto L_0x0063
        L_0x006d:
            r4 = r1
            goto L_0x0034
        L_0x006f:
            com.google.protobuf.MessageReflection$MergeTarget$ContainerType r0 = r12.getContainerType()
            com.google.protobuf.MessageReflection$MergeTarget$ContainerType r4 = com.google.protobuf.MessageReflection.MergeTarget.ContainerType.MESSAGE
            if (r0 != r4) goto L_0x007d
            com.google.protobuf.Descriptors$FieldDescriptor r0 = r11.findFieldByNumber(r6)
            r4 = r0
            goto L_0x0034
        L_0x007d:
            r4 = r1
            goto L_0x0034
        L_0x007f:
            com.google.protobuf.WireFormat$FieldType r0 = r4.getLiteType()
            int r0 = com.google.protobuf.FieldSet.getWireFormatForFieldType(r0, r3)
            if (r5 != r0) goto L_0x008b
            r0 = r3
            goto L_0x0038
        L_0x008b:
            boolean r0 = r4.isPackable()
            if (r0 == 0) goto L_0x009d
            com.google.protobuf.WireFormat$FieldType r0 = r4.getLiteType()
            int r0 = com.google.protobuf.FieldSet.getWireFormatForFieldType(r0, r2)
            if (r5 != r0) goto L_0x009d
            r0 = r2
            goto L_0x0038
        L_0x009d:
            r0 = r3
            r3 = r2
            goto L_0x0038
        L_0x00a0:
            if (r0 == 0) goto L_0x00e9
            int r0 = r8.readRawVarint32()
            int r0 = r8.pushLimit(r0)
            com.google.protobuf.WireFormat$FieldType r1 = r4.getLiteType()
            com.google.protobuf.WireFormat$FieldType r3 = com.google.protobuf.WireFormat.FieldType.ENUM
            if (r1 != r3) goto L_0x00cd
        L_0x00b2:
            int r1 = r8.getBytesUntilLimit()
            if (r1 <= 0) goto L_0x00e3
            int r1 = r8.readEnum()
            com.google.protobuf.Descriptors$EnumDescriptor r3 = r4.getEnumType()
            com.google.protobuf.Descriptors$EnumValueDescriptor r1 = r3.findValueByNumber(r1)
            if (r1 != 0) goto L_0x00c9
            r0 = r2
            goto L_0x0015
        L_0x00c9:
            r12.addRepeatedField(r4, r1)
            goto L_0x00b2
        L_0x00cd:
            int r1 = r8.getBytesUntilLimit()
            if (r1 <= 0) goto L_0x00e3
            com.google.protobuf.WireFormat$FieldType r1 = r4.getLiteType()
            boolean r3 = r4.needsUtf8Check()
            java.lang.Object r1 = r12.readPrimitiveField(r8, r1, r3)
            r12.addRepeatedField(r4, r1)
            goto L_0x00cd
        L_0x00e3:
            r8.popLimit(r0)
        L_0x00e6:
            r0 = r2
            goto L_0x0015
        L_0x00e9:
            int[] r0 = com.google.protobuf.MessageReflection.AnonymousClass1.$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type
            com.google.protobuf.Descriptors$FieldDescriptor$Type r3 = r4.getType()
            int r3 = r3.ordinal()
            r0 = r0[r3]
            switch(r0) {
                case 1: goto L_0x010e;
                case 2: goto L_0x0113;
                case 3: goto L_0x0118;
                default: goto L_0x00f8;
            }
        L_0x00f8:
            com.google.protobuf.WireFormat$FieldType r0 = r4.getLiteType()
            boolean r1 = r4.needsUtf8Check()
            java.lang.Object r0 = r12.readPrimitiveField(r8, r0, r1)
        L_0x0104:
            boolean r1 = r4.isRepeated()
            if (r1 == 0) goto L_0x012c
            r12.addRepeatedField(r4, r0)
            goto L_0x00e6
        L_0x010e:
            java.lang.Object r0 = r12.parseGroup(r8, r10, r4, r1)
            goto L_0x0104
        L_0x0113:
            java.lang.Object r0 = r12.parseMessage(r8, r10, r4, r1)
            goto L_0x0104
        L_0x0118:
            int r1 = r8.readEnum()
            com.google.protobuf.Descriptors$EnumDescriptor r0 = r4.getEnumType()
            com.google.protobuf.Descriptors$EnumValueDescriptor r0 = r0.findValueByNumber(r1)
            if (r0 != 0) goto L_0x0104
            r9.mergeVarintField(r6, r1)
            r0 = r2
            goto L_0x0015
        L_0x012c:
            r12.setField(r4, r0)
            goto L_0x00e6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.MessageReflection.mergeFieldFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.UnknownFieldSet$Builder, com.google.protobuf.ExtensionRegistryLite, com.google.protobuf.Descriptors$Descriptor, com.google.protobuf.MessageReflection$MergeTarget, int):boolean");
    }

    private static void mergeMessageSetExtensionFromCodedStream(CodedInputStream codedInputStream, UnknownFieldSet.Builder builder, ExtensionRegistryLite extensionRegistryLite, Descriptor descriptor, MergeTarget mergeTarget) throws IOException {
        int i = 0;
        ExtensionInfo extensionInfo = null;
        ByteString byteString = null;
        while (true) {
            int readTag = codedInputStream.readTag();
            if (readTag == 0) {
                break;
            } else if (readTag == WireFormat.MESSAGE_SET_TYPE_ID_TAG) {
                i = codedInputStream.readUInt32();
                if (i != 0 && (extensionRegistryLite instanceof ExtensionRegistry)) {
                    extensionInfo = mergeTarget.findExtensionByNumber((ExtensionRegistry) extensionRegistryLite, descriptor, i);
                }
            } else if (readTag == WireFormat.MESSAGE_SET_MESSAGE_TAG) {
                if (i == 0 || extensionInfo == null || !ExtensionRegistryLite.isEagerlyParseMessageSets()) {
                    byteString = codedInputStream.readBytes();
                } else {
                    eagerlyMergeMessageSetExtension(codedInputStream, extensionInfo, extensionRegistryLite, mergeTarget);
                    byteString = null;
                }
            } else if (!codedInputStream.skipField(readTag)) {
                break;
            }
        }
        codedInputStream.checkLastTagWas(WireFormat.MESSAGE_SET_ITEM_END_TAG);
        if (byteString != null && i != 0) {
            if (extensionInfo != null) {
                mergeMessageSetExtensionFromBytes(byteString, extensionInfo, extensionRegistryLite, mergeTarget);
            } else if (byteString != null) {
                builder.mergeField(i, Field.newBuilder().addLengthDelimited(byteString).build());
            }
        }
    }

    private static void mergeMessageSetExtensionFromBytes(ByteString byteString, ExtensionInfo extensionInfo, ExtensionRegistryLite extensionRegistryLite, MergeTarget mergeTarget) throws IOException {
        FieldDescriptor fieldDescriptor = extensionInfo.descriptor;
        if (mergeTarget.hasField(fieldDescriptor) || ExtensionRegistryLite.isEagerlyParseMessageSets()) {
            mergeTarget.setField(fieldDescriptor, mergeTarget.parseMessageFromBytes(byteString, extensionRegistryLite, fieldDescriptor, extensionInfo.defaultInstance));
        } else {
            mergeTarget.setField(fieldDescriptor, new LazyField(extensionInfo.defaultInstance, extensionRegistryLite, byteString));
        }
    }

    private static void eagerlyMergeMessageSetExtension(CodedInputStream codedInputStream, ExtensionInfo extensionInfo, ExtensionRegistryLite extensionRegistryLite, MergeTarget mergeTarget) throws IOException {
        FieldDescriptor fieldDescriptor = extensionInfo.descriptor;
        mergeTarget.setField(fieldDescriptor, mergeTarget.parseMessage(codedInputStream, extensionRegistryLite, fieldDescriptor, extensionInfo.defaultInstance));
    }
}
