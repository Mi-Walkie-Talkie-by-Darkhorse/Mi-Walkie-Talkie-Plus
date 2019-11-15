package com.google.protobuf;

import com.google.protobuf.FieldSet.FieldDescriptorLite;
import com.google.protobuf.Internal.EnumLite;
import com.google.protobuf.Internal.EnumLiteMap;
import com.google.protobuf.MessageLite.Builder;
import com.google.protobuf.WireFormat.FieldType;
import com.google.protobuf.WireFormat.JavaType;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

final class FieldSet<FieldDescriptorType extends FieldDescriptorLite<FieldDescriptorType>> {
    private static final FieldSet DEFAULT_INSTANCE = new FieldSet(true);
    private final SmallSortedMap<FieldDescriptorType, Object> fields = SmallSortedMap.newFieldMap(16);
    private boolean hasLazyField = false;
    private boolean isImmutable;

    public interface FieldDescriptorLite<T extends FieldDescriptorLite<T>> extends Comparable<T> {
        EnumLiteMap<?> getEnumType();

        JavaType getLiteJavaType();

        FieldType getLiteType();

        int getNumber();

        Builder internalMergeFrom(Builder builder, MessageLite messageLite);

        boolean isPacked();

        boolean isRepeated();
    }

    private FieldSet() {
    }

    private FieldSet(boolean z) {
        makeImmutable();
    }

    public static <T extends FieldDescriptorLite<T>> FieldSet<T> newFieldSet() {
        return new FieldSet<>();
    }

    public static <T extends FieldDescriptorLite<T>> FieldSet<T> emptySet() {
        return DEFAULT_INSTANCE;
    }

    public void makeImmutable() {
        if (!this.isImmutable) {
            this.fields.makeImmutable();
            this.isImmutable = true;
        }
    }

    public boolean isImmutable() {
        return this.isImmutable;
    }

    public FieldSet<FieldDescriptorType> clone() {
        FieldSet<FieldDescriptorType> newFieldSet = newFieldSet();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.fields.getNumArrayEntries()) {
                break;
            }
            Entry arrayEntryAt = this.fields.getArrayEntryAt(i2);
            newFieldSet.setField((FieldDescriptorLite) arrayEntryAt.getKey(), arrayEntryAt.getValue());
            i = i2 + 1;
        }
        for (Entry entry : this.fields.getOverflowEntries()) {
            newFieldSet.setField((FieldDescriptorLite) entry.getKey(), entry.getValue());
        }
        newFieldSet.hasLazyField = this.hasLazyField;
        return newFieldSet;
    }

    public void clear() {
        this.fields.clear();
        this.hasLazyField = false;
    }

    public Map<FieldDescriptorType, Object> getAllFields() {
        if (!this.hasLazyField) {
            return this.fields.isImmutable() ? this.fields : Collections.unmodifiableMap(this.fields);
        }
        SmallSortedMap newFieldMap = SmallSortedMap.newFieldMap(16);
        for (int i = 0; i < this.fields.getNumArrayEntries(); i++) {
            cloneFieldEntry(newFieldMap, this.fields.getArrayEntryAt(i));
        }
        for (Entry cloneFieldEntry : this.fields.getOverflowEntries()) {
            cloneFieldEntry(newFieldMap, cloneFieldEntry);
        }
        if (this.fields.isImmutable()) {
            newFieldMap.makeImmutable();
        }
        return newFieldMap;
    }

    private void cloneFieldEntry(Map<FieldDescriptorType, Object> map, Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorLite fieldDescriptorLite = (FieldDescriptorLite) entry.getKey();
        Object value = entry.getValue();
        if (value instanceof LazyField) {
            map.put(fieldDescriptorLite, ((LazyField) value).getValue());
        } else {
            map.put(fieldDescriptorLite, value);
        }
    }

    public Iterator<Entry<FieldDescriptorType, Object>> iterator() {
        if (this.hasLazyField) {
            return new LazyIterator(this.fields.entrySet().iterator());
        }
        return this.fields.entrySet().iterator();
    }

    public boolean hasField(FieldDescriptorType fielddescriptortype) {
        if (!fielddescriptortype.isRepeated()) {
            return this.fields.get(fielddescriptortype) != null;
        }
        throw new IllegalArgumentException("hasField() can only be called on non-repeated fields.");
    }

    public Object getField(FieldDescriptorType fielddescriptortype) {
        Object obj = this.fields.get(fielddescriptortype);
        if (obj instanceof LazyField) {
            return ((LazyField) obj).getValue();
        }
        return obj;
    }

    public void setField(FieldDescriptorType fielddescriptortype, Object obj) {
        if (!fielddescriptortype.isRepeated()) {
            verifyType(fielddescriptortype.getLiteType(), obj);
            r6 = obj;
        } else if (!(obj instanceof List)) {
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        } else {
            List<Object> arrayList = new ArrayList<>();
            arrayList.addAll((List) obj);
            for (Object verifyType : arrayList) {
                verifyType(fielddescriptortype.getLiteType(), verifyType);
            }
            r6 = arrayList;
        }
        if (r6 instanceof LazyField) {
            this.hasLazyField = true;
        }
        this.fields.put(fielddescriptortype, r6);
    }

    public void clearField(FieldDescriptorType fielddescriptortype) {
        this.fields.remove(fielddescriptortype);
        if (this.fields.isEmpty()) {
            this.hasLazyField = false;
        }
    }

    public int getRepeatedFieldCount(FieldDescriptorType fielddescriptortype) {
        if (!fielddescriptortype.isRepeated()) {
            throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
        }
        Object field = getField(fielddescriptortype);
        if (field == null) {
            return 0;
        }
        return ((List) field).size();
    }

    public Object getRepeatedField(FieldDescriptorType fielddescriptortype, int i) {
        if (!fielddescriptortype.isRepeated()) {
            throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
        }
        Object field = getField(fielddescriptortype);
        if (field != null) {
            return ((List) field).get(i);
        }
        throw new IndexOutOfBoundsException();
    }

    public void setRepeatedField(FieldDescriptorType fielddescriptortype, int i, Object obj) {
        if (!fielddescriptortype.isRepeated()) {
            throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
        }
        Object field = getField(fielddescriptortype);
        if (field == null) {
            throw new IndexOutOfBoundsException();
        }
        verifyType(fielddescriptortype.getLiteType(), obj);
        ((List) field).set(i, obj);
    }

    public void addRepeatedField(FieldDescriptorType fielddescriptortype, Object obj) {
        List list;
        if (!fielddescriptortype.isRepeated()) {
            throw new IllegalArgumentException("addRepeatedField() can only be called on repeated fields.");
        }
        verifyType(fielddescriptortype.getLiteType(), obj);
        Object field = getField(fielddescriptortype);
        if (field == null) {
            list = new ArrayList();
            this.fields.put(fielddescriptortype, list);
        } else {
            list = (List) field;
        }
        list.add(obj);
    }

    private static void verifyType(FieldType fieldType, Object obj) {
        boolean z = false;
        if (obj == null) {
            throw new NullPointerException();
        }
        switch (fieldType.getJavaType()) {
            case INT:
                z = obj instanceof Integer;
                break;
            case LONG:
                z = obj instanceof Long;
                break;
            case FLOAT:
                z = obj instanceof Float;
                break;
            case DOUBLE:
                z = obj instanceof Double;
                break;
            case BOOLEAN:
                z = obj instanceof Boolean;
                break;
            case STRING:
                z = obj instanceof String;
                break;
            case BYTE_STRING:
                if ((obj instanceof ByteString) || (obj instanceof byte[])) {
                    z = true;
                    break;
                }
            case ENUM:
                if ((obj instanceof Integer) || (obj instanceof EnumLite)) {
                    z = true;
                    break;
                }
            case MESSAGE:
                if ((obj instanceof MessageLite) || (obj instanceof LazyField)) {
                    z = true;
                    break;
                }
        }
        if (!z) {
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        }
    }

    public boolean isInitialized() {
        for (int i = 0; i < this.fields.getNumArrayEntries(); i++) {
            if (!isInitialized(this.fields.getArrayEntryAt(i))) {
                return false;
            }
        }
        for (Entry isInitialized : this.fields.getOverflowEntries()) {
            if (!isInitialized(isInitialized)) {
                return false;
            }
        }
        return true;
    }

    private boolean isInitialized(Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorLite fieldDescriptorLite = (FieldDescriptorLite) entry.getKey();
        if (fieldDescriptorLite.getLiteJavaType() == JavaType.MESSAGE) {
            if (fieldDescriptorLite.isRepeated()) {
                for (MessageLite isInitialized : (List) entry.getValue()) {
                    if (!isInitialized.isInitialized()) {
                        return false;
                    }
                }
            } else {
                Object value = entry.getValue();
                if (value instanceof MessageLite) {
                    if (!((MessageLite) value).isInitialized()) {
                        return false;
                    }
                } else if (value instanceof LazyField) {
                    return true;
                } else {
                    throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
                }
            }
        }
        return true;
    }

    static int getWireFormatForFieldType(FieldType fieldType, boolean z) {
        if (z) {
            return 2;
        }
        return fieldType.getWireType();
    }

    public void mergeFrom(FieldSet<FieldDescriptorType> fieldSet) {
        for (int i = 0; i < fieldSet.fields.getNumArrayEntries(); i++) {
            mergeFromField(fieldSet.fields.getArrayEntryAt(i));
        }
        for (Entry mergeFromField : fieldSet.fields.getOverflowEntries()) {
            mergeFromField(mergeFromField);
        }
    }

    private Object cloneIfMutable(Object obj) {
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    private void mergeFromField(Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorLite fieldDescriptorLite = (FieldDescriptorLite) entry.getKey();
        Object value = entry.getValue();
        if (value instanceof LazyField) {
            value = ((LazyField) value).getValue();
        }
        if (fieldDescriptorLite.isRepeated()) {
            Object field = getField(fieldDescriptorLite);
            if (field == null) {
                field = new ArrayList();
            }
            for (Object cloneIfMutable : (List) value) {
                ((List) field).add(cloneIfMutable(cloneIfMutable));
            }
            this.fields.put(fieldDescriptorLite, field);
        } else if (fieldDescriptorLite.getLiteJavaType() == JavaType.MESSAGE) {
            Object field2 = getField(fieldDescriptorLite);
            if (field2 == null) {
                this.fields.put(fieldDescriptorLite, cloneIfMutable(value));
                return;
            }
            this.fields.put(fieldDescriptorLite, fieldDescriptorLite.internalMergeFrom(((MessageLite) field2).toBuilder(), (MessageLite) value).build());
        } else {
            this.fields.put(fieldDescriptorLite, cloneIfMutable(value));
        }
    }

    public static Object readPrimitiveField(CodedInputStream codedInputStream, FieldType fieldType, boolean z) throws IOException {
        switch (fieldType) {
            case DOUBLE:
                return Double.valueOf(codedInputStream.readDouble());
            case FLOAT:
                return Float.valueOf(codedInputStream.readFloat());
            case INT64:
                return Long.valueOf(codedInputStream.readInt64());
            case UINT64:
                return Long.valueOf(codedInputStream.readUInt64());
            case INT32:
                return Integer.valueOf(codedInputStream.readInt32());
            case FIXED64:
                return Long.valueOf(codedInputStream.readFixed64());
            case FIXED32:
                return Integer.valueOf(codedInputStream.readFixed32());
            case BOOL:
                return Boolean.valueOf(codedInputStream.readBool());
            case STRING:
                if (z) {
                    return codedInputStream.readStringRequireUtf8();
                }
                return codedInputStream.readString();
            case BYTES:
                return codedInputStream.readBytes();
            case UINT32:
                return Integer.valueOf(codedInputStream.readUInt32());
            case SFIXED32:
                return Integer.valueOf(codedInputStream.readSFixed32());
            case SFIXED64:
                return Long.valueOf(codedInputStream.readSFixed64());
            case SINT32:
                return Integer.valueOf(codedInputStream.readSInt32());
            case SINT64:
                return Long.valueOf(codedInputStream.readSInt64());
            case GROUP:
                throw new IllegalArgumentException("readPrimitiveField() cannot handle nested groups.");
            case MESSAGE:
                throw new IllegalArgumentException("readPrimitiveField() cannot handle embedded messages.");
            case ENUM:
                throw new IllegalArgumentException("readPrimitiveField() cannot handle enums.");
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.fields.getNumArrayEntries()) {
                break;
            }
            Entry arrayEntryAt = this.fields.getArrayEntryAt(i2);
            writeField((FieldDescriptorLite) arrayEntryAt.getKey(), arrayEntryAt.getValue(), codedOutputStream);
            i = i2 + 1;
        }
        for (Entry entry : this.fields.getOverflowEntries()) {
            writeField((FieldDescriptorLite) entry.getKey(), entry.getValue(), codedOutputStream);
        }
    }

    public void writeMessageSetTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i = 0; i < this.fields.getNumArrayEntries(); i++) {
            writeMessageSetTo(this.fields.getArrayEntryAt(i), codedOutputStream);
        }
        for (Entry writeMessageSetTo : this.fields.getOverflowEntries()) {
            writeMessageSetTo(writeMessageSetTo, codedOutputStream);
        }
    }

    private void writeMessageSetTo(Entry<FieldDescriptorType, Object> entry, CodedOutputStream codedOutputStream) throws IOException {
        Object obj;
        FieldDescriptorLite fieldDescriptorLite = (FieldDescriptorLite) entry.getKey();
        if (fieldDescriptorLite.getLiteJavaType() != JavaType.MESSAGE || fieldDescriptorLite.isRepeated() || fieldDescriptorLite.isPacked()) {
            writeField(fieldDescriptorLite, entry.getValue(), codedOutputStream);
            return;
        }
        Object value = entry.getValue();
        if (value instanceof LazyField) {
            obj = ((LazyField) value).getValue();
        } else {
            obj = value;
        }
        codedOutputStream.writeMessageSetExtension(((FieldDescriptorLite) entry.getKey()).getNumber(), (MessageLite) obj);
    }

    private static void writeElement(CodedOutputStream codedOutputStream, FieldType fieldType, int i, Object obj) throws IOException {
        if (fieldType == FieldType.GROUP) {
            codedOutputStream.writeGroup(i, (MessageLite) obj);
            return;
        }
        codedOutputStream.writeTag(i, getWireFormatForFieldType(fieldType, false));
        writeElementNoTag(codedOutputStream, fieldType, obj);
    }

    private static void writeElementNoTag(CodedOutputStream codedOutputStream, FieldType fieldType, Object obj) throws IOException {
        switch (fieldType) {
            case DOUBLE:
                codedOutputStream.writeDoubleNoTag(((Double) obj).doubleValue());
                return;
            case FLOAT:
                codedOutputStream.writeFloatNoTag(((Float) obj).floatValue());
                return;
            case INT64:
                codedOutputStream.writeInt64NoTag(((Long) obj).longValue());
                return;
            case UINT64:
                codedOutputStream.writeUInt64NoTag(((Long) obj).longValue());
                return;
            case INT32:
                codedOutputStream.writeInt32NoTag(((Integer) obj).intValue());
                return;
            case FIXED64:
                codedOutputStream.writeFixed64NoTag(((Long) obj).longValue());
                return;
            case FIXED32:
                codedOutputStream.writeFixed32NoTag(((Integer) obj).intValue());
                return;
            case BOOL:
                codedOutputStream.writeBoolNoTag(((Boolean) obj).booleanValue());
                return;
            case STRING:
                codedOutputStream.writeStringNoTag((String) obj);
                return;
            case BYTES:
                if (obj instanceof ByteString) {
                    codedOutputStream.writeBytesNoTag((ByteString) obj);
                    return;
                } else {
                    codedOutputStream.writeByteArrayNoTag((byte[]) obj);
                    return;
                }
            case UINT32:
                codedOutputStream.writeUInt32NoTag(((Integer) obj).intValue());
                return;
            case SFIXED32:
                codedOutputStream.writeSFixed32NoTag(((Integer) obj).intValue());
                return;
            case SFIXED64:
                codedOutputStream.writeSFixed64NoTag(((Long) obj).longValue());
                return;
            case SINT32:
                codedOutputStream.writeSInt32NoTag(((Integer) obj).intValue());
                return;
            case SINT64:
                codedOutputStream.writeSInt64NoTag(((Long) obj).longValue());
                return;
            case GROUP:
                codedOutputStream.writeGroupNoTag((MessageLite) obj);
                return;
            case MESSAGE:
                codedOutputStream.writeMessageNoTag((MessageLite) obj);
                return;
            case ENUM:
                if (obj instanceof EnumLite) {
                    codedOutputStream.writeEnumNoTag(((EnumLite) obj).getNumber());
                    return;
                } else {
                    codedOutputStream.writeEnumNoTag(((Integer) obj).intValue());
                    return;
                }
            default:
                return;
        }
    }

    public static void writeField(FieldDescriptorLite<?> fieldDescriptorLite, Object obj, CodedOutputStream codedOutputStream) throws IOException {
        FieldType liteType = fieldDescriptorLite.getLiteType();
        int number = fieldDescriptorLite.getNumber();
        if (fieldDescriptorLite.isRepeated()) {
            List<Object> list = (List) obj;
            if (fieldDescriptorLite.isPacked()) {
                codedOutputStream.writeTag(number, 2);
                int i = 0;
                for (Object computeElementSizeNoTag : list) {
                    i += computeElementSizeNoTag(liteType, computeElementSizeNoTag);
                }
                codedOutputStream.writeRawVarint32(i);
                for (Object writeElementNoTag : list) {
                    writeElementNoTag(codedOutputStream, liteType, writeElementNoTag);
                }
                return;
            }
            for (Object writeElement : list) {
                writeElement(codedOutputStream, liteType, number, writeElement);
            }
        } else if (obj instanceof LazyField) {
            writeElement(codedOutputStream, liteType, number, ((LazyField) obj).getValue());
        } else {
            writeElement(codedOutputStream, liteType, number, obj);
        }
    }

    public int getSerializedSize() {
        int i = 0;
        for (int i2 = 0; i2 < this.fields.getNumArrayEntries(); i2++) {
            Entry arrayEntryAt = this.fields.getArrayEntryAt(i2);
            i += computeFieldSize((FieldDescriptorLite) arrayEntryAt.getKey(), arrayEntryAt.getValue());
        }
        for (Entry entry : this.fields.getOverflowEntries()) {
            i += computeFieldSize((FieldDescriptorLite) entry.getKey(), entry.getValue());
        }
        return i;
    }

    public int getMessageSetSerializedSize() {
        int i = 0;
        for (int i2 = 0; i2 < this.fields.getNumArrayEntries(); i2++) {
            i += getMessageSetSerializedSize(this.fields.getArrayEntryAt(i2));
        }
        for (Entry messageSetSerializedSize : this.fields.getOverflowEntries()) {
            i += getMessageSetSerializedSize(messageSetSerializedSize);
        }
        return i;
    }

    private int getMessageSetSerializedSize(Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorLite fieldDescriptorLite = (FieldDescriptorLite) entry.getKey();
        Object value = entry.getValue();
        if (fieldDescriptorLite.getLiteJavaType() != JavaType.MESSAGE || fieldDescriptorLite.isRepeated() || fieldDescriptorLite.isPacked()) {
            return computeFieldSize(fieldDescriptorLite, value);
        }
        if (value instanceof LazyField) {
            return CodedOutputStream.computeLazyFieldMessageSetExtensionSize(((FieldDescriptorLite) entry.getKey()).getNumber(), (LazyField) value);
        }
        return CodedOutputStream.computeMessageSetExtensionSize(((FieldDescriptorLite) entry.getKey()).getNumber(), (MessageLite) value);
    }

    private static int computeElementSize(FieldType fieldType, int i, Object obj) {
        int computeTagSize = CodedOutputStream.computeTagSize(i);
        if (fieldType == FieldType.GROUP) {
            computeTagSize *= 2;
        }
        return computeTagSize + computeElementSizeNoTag(fieldType, obj);
    }

    private static int computeElementSizeNoTag(FieldType fieldType, Object obj) {
        switch (fieldType) {
            case DOUBLE:
                return CodedOutputStream.computeDoubleSizeNoTag(((Double) obj).doubleValue());
            case FLOAT:
                return CodedOutputStream.computeFloatSizeNoTag(((Float) obj).floatValue());
            case INT64:
                return CodedOutputStream.computeInt64SizeNoTag(((Long) obj).longValue());
            case UINT64:
                return CodedOutputStream.computeUInt64SizeNoTag(((Long) obj).longValue());
            case INT32:
                return CodedOutputStream.computeInt32SizeNoTag(((Integer) obj).intValue());
            case FIXED64:
                return CodedOutputStream.computeFixed64SizeNoTag(((Long) obj).longValue());
            case FIXED32:
                return CodedOutputStream.computeFixed32SizeNoTag(((Integer) obj).intValue());
            case BOOL:
                return CodedOutputStream.computeBoolSizeNoTag(((Boolean) obj).booleanValue());
            case STRING:
                return CodedOutputStream.computeStringSizeNoTag((String) obj);
            case BYTES:
                if (obj instanceof ByteString) {
                    return CodedOutputStream.computeBytesSizeNoTag((ByteString) obj);
                }
                return CodedOutputStream.computeByteArraySizeNoTag((byte[]) obj);
            case UINT32:
                return CodedOutputStream.computeUInt32SizeNoTag(((Integer) obj).intValue());
            case SFIXED32:
                return CodedOutputStream.computeSFixed32SizeNoTag(((Integer) obj).intValue());
            case SFIXED64:
                return CodedOutputStream.computeSFixed64SizeNoTag(((Long) obj).longValue());
            case SINT32:
                return CodedOutputStream.computeSInt32SizeNoTag(((Integer) obj).intValue());
            case SINT64:
                return CodedOutputStream.computeSInt64SizeNoTag(((Long) obj).longValue());
            case GROUP:
                return CodedOutputStream.computeGroupSizeNoTag((MessageLite) obj);
            case MESSAGE:
                if (obj instanceof LazyField) {
                    return CodedOutputStream.computeLazyFieldSizeNoTag((LazyField) obj);
                }
                return CodedOutputStream.computeMessageSizeNoTag((MessageLite) obj);
            case ENUM:
                if (obj instanceof EnumLite) {
                    return CodedOutputStream.computeEnumSizeNoTag(((EnumLite) obj).getNumber());
                }
                return CodedOutputStream.computeEnumSizeNoTag(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    public static int computeFieldSize(FieldDescriptorLite<?> fieldDescriptorLite, Object obj) {
        int i = 0;
        FieldType liteType = fieldDescriptorLite.getLiteType();
        int number = fieldDescriptorLite.getNumber();
        if (!fieldDescriptorLite.isRepeated()) {
            return computeElementSize(liteType, number, obj);
        }
        if (fieldDescriptorLite.isPacked()) {
            for (Object computeElementSizeNoTag : (List) obj) {
                i += computeElementSizeNoTag(liteType, computeElementSizeNoTag);
            }
            return CodedOutputStream.computeRawVarint32Size(i) + CodedOutputStream.computeTagSize(number) + i;
        }
        for (Object computeElementSize : (List) obj) {
            i += computeElementSize(liteType, number, computeElementSize);
        }
        return i;
    }
}
