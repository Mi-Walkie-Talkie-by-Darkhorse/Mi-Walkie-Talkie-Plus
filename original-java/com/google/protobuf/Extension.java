package com.google.protobuf;

import com.google.protobuf.Descriptors.FieldDescriptor;
import com.google.protobuf.MessageLite;
import com.google.protobuf.WireFormat.FieldType;

public abstract class Extension<ContainingType extends MessageLite, Type> {

    protected enum ExtensionType {
        IMMUTABLE,
        MUTABLE,
        PROTO1
    }

    public enum MessageType {
        PROTO1,
        PROTO2
    }

    /* access modifiers changed from: protected */
    public abstract Object fromReflectionType(Object obj);

    public abstract Type getDefaultValue();

    public abstract FieldDescriptor getDescriptor();

    public abstract FieldType getLiteType();

    public abstract MessageLite getMessageDefaultInstance();

    public abstract int getNumber();

    public abstract boolean isRepeated();

    /* access modifiers changed from: protected */
    public abstract Object singularFromReflectionType(Object obj);

    /* access modifiers changed from: protected */
    public abstract Object singularToReflectionType(Object obj);

    /* access modifiers changed from: protected */
    public abstract Object toReflectionType(Object obj);

    /* access modifiers changed from: protected */
    public ExtensionType getExtensionType() {
        return ExtensionType.IMMUTABLE;
    }

    public MessageType getMessageType() {
        return MessageType.PROTO2;
    }
}
