package com.google.protobuf;

import com.google.protobuf.Descriptors.Descriptor;
import com.google.protobuf.Descriptors.FieldDescriptor;
import com.google.protobuf.Descriptors.OneofDescriptor;
import java.util.List;
import java.util.Map;

public interface MessageOrBuilder extends MessageLiteOrBuilder {
    List<String> findInitializationErrors();

    Map<FieldDescriptor, Object> getAllFields();

    Message getDefaultInstanceForType();

    Descriptor getDescriptorForType();

    Object getField(FieldDescriptor fieldDescriptor);

    String getInitializationErrorString();

    FieldDescriptor getOneofFieldDescriptor(OneofDescriptor oneofDescriptor);

    Object getRepeatedField(FieldDescriptor fieldDescriptor, int i);

    int getRepeatedFieldCount(FieldDescriptor fieldDescriptor);

    UnknownFieldSet getUnknownFields();

    boolean hasField(FieldDescriptor fieldDescriptor);

    boolean hasOneof(OneofDescriptor oneofDescriptor);
}
