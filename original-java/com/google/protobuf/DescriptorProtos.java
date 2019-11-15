package com.google.protobuf;

import com.google.protobuf.Descriptors.Descriptor;
import com.google.protobuf.Descriptors.EnumDescriptor;
import com.google.protobuf.Descriptors.EnumValueDescriptor;
import com.google.protobuf.Descriptors.FileDescriptor;
import com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner;
import com.google.protobuf.GeneratedMessage.ExtendableBuilder;
import com.google.protobuf.GeneratedMessage.ExtendableMessage;
import com.google.protobuf.GeneratedMessage.ExtendableMessageOrBuilder;
import com.google.protobuf.GeneratedMessage.FieldAccessorTable;
import com.google.protobuf.Internal.EnumLiteMap;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.crypto.tls.CipherSuite;
import org.jboss.netty.handler.codec.http.HttpHeaders.Names;

public final class DescriptorProtos {
    /* access modifiers changed from: private */
    public static FileDescriptor descriptor;
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_google_protobuf_DescriptorProto_ExtensionRange_descriptor = ((Descriptor) internal_static_google_protobuf_DescriptorProto_descriptor.getNestedTypes().get(0));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_google_protobuf_DescriptorProto_ExtensionRange_fieldAccessorTable = new FieldAccessorTable(internal_static_google_protobuf_DescriptorProto_ExtensionRange_descriptor, new String[]{"Start", "End"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_google_protobuf_DescriptorProto_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(2));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_google_protobuf_DescriptorProto_fieldAccessorTable = new FieldAccessorTable(internal_static_google_protobuf_DescriptorProto_descriptor, new String[]{"Name", "Field", "Extension", "NestedType", "EnumType", "ExtensionRange", "OneofDecl", "Options"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_google_protobuf_EnumDescriptorProto_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(5));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_google_protobuf_EnumDescriptorProto_fieldAccessorTable = new FieldAccessorTable(internal_static_google_protobuf_EnumDescriptorProto_descriptor, new String[]{"Name", "Value", "Options"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_google_protobuf_EnumOptions_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(12));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_google_protobuf_EnumOptions_fieldAccessorTable = new FieldAccessorTable(internal_static_google_protobuf_EnumOptions_descriptor, new String[]{"AllowAlias", "Deprecated", "UninterpretedOption"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_google_protobuf_EnumValueDescriptorProto_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(6));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_google_protobuf_EnumValueDescriptorProto_fieldAccessorTable = new FieldAccessorTable(internal_static_google_protobuf_EnumValueDescriptorProto_descriptor, new String[]{"Name", "Number", "Options"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_google_protobuf_EnumValueOptions_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(13));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_google_protobuf_EnumValueOptions_fieldAccessorTable = new FieldAccessorTable(internal_static_google_protobuf_EnumValueOptions_descriptor, new String[]{"Deprecated", "UninterpretedOption"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_google_protobuf_FieldDescriptorProto_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(3));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_google_protobuf_FieldDescriptorProto_fieldAccessorTable = new FieldAccessorTable(internal_static_google_protobuf_FieldDescriptorProto_descriptor, new String[]{"Name", "Number", "Label", "Type", "TypeName", "Extendee", "DefaultValue", "OneofIndex", "Options"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_google_protobuf_FieldOptions_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(11));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_google_protobuf_FieldOptions_fieldAccessorTable = new FieldAccessorTable(internal_static_google_protobuf_FieldOptions_descriptor, new String[]{"Ctype", "Packed", "Lazy", "Deprecated", "ExperimentalMapKey", "Weak", "UninterpretedOption"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_google_protobuf_FileDescriptorProto_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(1));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_google_protobuf_FileDescriptorProto_fieldAccessorTable = new FieldAccessorTable(internal_static_google_protobuf_FileDescriptorProto_descriptor, new String[]{"Name", "Package", "Dependency", "PublicDependency", "WeakDependency", "MessageType", "EnumType", "Service", "Extension", "Options", "SourceCodeInfo"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_google_protobuf_FileDescriptorSet_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(0));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_google_protobuf_FileDescriptorSet_fieldAccessorTable = new FieldAccessorTable(internal_static_google_protobuf_FileDescriptorSet_descriptor, new String[]{"File"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_google_protobuf_FileOptions_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(9));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_google_protobuf_FileOptions_fieldAccessorTable = new FieldAccessorTable(internal_static_google_protobuf_FileOptions_descriptor, new String[]{"JavaPackage", "JavaOuterClassname", "JavaMultipleFiles", "JavaGenerateEqualsAndHash", "JavaStringCheckUtf8", "OptimizeFor", "GoPackage", "CcGenericServices", "JavaGenericServices", "PyGenericServices", "Deprecated", "UninterpretedOption"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_google_protobuf_MessageOptions_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(10));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_google_protobuf_MessageOptions_fieldAccessorTable = new FieldAccessorTable(internal_static_google_protobuf_MessageOptions_descriptor, new String[]{"MessageSetWireFormat", "NoStandardDescriptorAccessor", "Deprecated", "UninterpretedOption"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_google_protobuf_MethodDescriptorProto_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(8));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_google_protobuf_MethodDescriptorProto_fieldAccessorTable = new FieldAccessorTable(internal_static_google_protobuf_MethodDescriptorProto_descriptor, new String[]{"Name", "InputType", "OutputType", "Options"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_google_protobuf_MethodOptions_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(15));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_google_protobuf_MethodOptions_fieldAccessorTable = new FieldAccessorTable(internal_static_google_protobuf_MethodOptions_descriptor, new String[]{"Deprecated", "UninterpretedOption"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_google_protobuf_OneofDescriptorProto_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(4));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_google_protobuf_OneofDescriptorProto_fieldAccessorTable = new FieldAccessorTable(internal_static_google_protobuf_OneofDescriptorProto_descriptor, new String[]{"Name"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_google_protobuf_ServiceDescriptorProto_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(7));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_google_protobuf_ServiceDescriptorProto_fieldAccessorTable = new FieldAccessorTable(internal_static_google_protobuf_ServiceDescriptorProto_descriptor, new String[]{"Name", "Method", "Options"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_google_protobuf_ServiceOptions_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(14));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_google_protobuf_ServiceOptions_fieldAccessorTable = new FieldAccessorTable(internal_static_google_protobuf_ServiceOptions_descriptor, new String[]{"Deprecated", "UninterpretedOption"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_google_protobuf_SourceCodeInfo_Location_descriptor = ((Descriptor) internal_static_google_protobuf_SourceCodeInfo_descriptor.getNestedTypes().get(0));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_google_protobuf_SourceCodeInfo_Location_fieldAccessorTable = new FieldAccessorTable(internal_static_google_protobuf_SourceCodeInfo_Location_descriptor, new String[]{"Path", "Span", "LeadingComments", "TrailingComments"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_google_protobuf_SourceCodeInfo_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(17));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_google_protobuf_SourceCodeInfo_fieldAccessorTable = new FieldAccessorTable(internal_static_google_protobuf_SourceCodeInfo_descriptor, new String[]{Names.LOCATION});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_google_protobuf_UninterpretedOption_NamePart_descriptor = ((Descriptor) internal_static_google_protobuf_UninterpretedOption_descriptor.getNestedTypes().get(0));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_google_protobuf_UninterpretedOption_NamePart_fieldAccessorTable = new FieldAccessorTable(internal_static_google_protobuf_UninterpretedOption_NamePart_descriptor, new String[]{"NamePart", "IsExtension"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_google_protobuf_UninterpretedOption_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(16));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_google_protobuf_UninterpretedOption_fieldAccessorTable = new FieldAccessorTable(internal_static_google_protobuf_UninterpretedOption_descriptor, new String[]{"Name", "IdentifierValue", "PositiveIntValue", "NegativeIntValue", "DoubleValue", "StringValue", "AggregateValue"});

    public static final class DescriptorProto extends GeneratedMessage implements DescriptorProtoOrBuilder {
        public static final int ENUM_TYPE_FIELD_NUMBER = 4;
        public static final int EXTENSION_FIELD_NUMBER = 6;
        public static final int EXTENSION_RANGE_FIELD_NUMBER = 5;
        public static final int FIELD_FIELD_NUMBER = 2;
        public static final int NAME_FIELD_NUMBER = 1;
        public static final int NESTED_TYPE_FIELD_NUMBER = 3;
        public static final int ONEOF_DECL_FIELD_NUMBER = 8;
        public static final int OPTIONS_FIELD_NUMBER = 7;
        public static Parser<DescriptorProto> PARSER = new AbstractParser<DescriptorProto>() {
            public DescriptorProto parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new DescriptorProto(codedInputStream, extensionRegistryLite);
            }
        };
        private static final DescriptorProto defaultInstance = new DescriptorProto(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public List<EnumDescriptorProto> enumType_;
        /* access modifiers changed from: private */
        public List<ExtensionRange> extensionRange_;
        /* access modifiers changed from: private */
        public List<FieldDescriptorProto> extension_;
        /* access modifiers changed from: private */
        public List<FieldDescriptorProto> field_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public Object name_;
        /* access modifiers changed from: private */
        public List<DescriptorProto> nestedType_;
        /* access modifiers changed from: private */
        public List<OneofDescriptorProto> oneofDecl_;
        /* access modifiers changed from: private */
        public MessageOptions options_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements DescriptorProtoOrBuilder {
            private int bitField0_;
            private RepeatedFieldBuilder<EnumDescriptorProto, Builder, EnumDescriptorProtoOrBuilder> enumTypeBuilder_;
            private List<EnumDescriptorProto> enumType_;
            private RepeatedFieldBuilder<FieldDescriptorProto, Builder, FieldDescriptorProtoOrBuilder> extensionBuilder_;
            private RepeatedFieldBuilder<ExtensionRange, Builder, ExtensionRangeOrBuilder> extensionRangeBuilder_;
            private List<ExtensionRange> extensionRange_;
            private List<FieldDescriptorProto> extension_;
            private RepeatedFieldBuilder<FieldDescriptorProto, Builder, FieldDescriptorProtoOrBuilder> fieldBuilder_;
            private List<FieldDescriptorProto> field_;
            private Object name_;
            private RepeatedFieldBuilder<DescriptorProto, Builder, DescriptorProtoOrBuilder> nestedTypeBuilder_;
            private List<DescriptorProto> nestedType_;
            private RepeatedFieldBuilder<OneofDescriptorProto, Builder, OneofDescriptorProtoOrBuilder> oneofDeclBuilder_;
            private List<OneofDescriptorProto> oneofDecl_;
            private SingleFieldBuilder<MessageOptions, Builder, MessageOptionsOrBuilder> optionsBuilder_;
            private MessageOptions options_;

            public static final Descriptor getDescriptor() {
                return DescriptorProtos.internal_static_google_protobuf_DescriptorProto_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return DescriptorProtos.internal_static_google_protobuf_DescriptorProto_fieldAccessorTable.ensureFieldAccessorsInitialized(DescriptorProto.class, Builder.class);
            }

            private Builder() {
                this.name_ = "";
                this.field_ = Collections.emptyList();
                this.extension_ = Collections.emptyList();
                this.nestedType_ = Collections.emptyList();
                this.enumType_ = Collections.emptyList();
                this.extensionRange_ = Collections.emptyList();
                this.oneofDecl_ = Collections.emptyList();
                this.options_ = MessageOptions.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.name_ = "";
                this.field_ = Collections.emptyList();
                this.extension_ = Collections.emptyList();
                this.nestedType_ = Collections.emptyList();
                this.enumType_ = Collections.emptyList();
                this.extensionRange_ = Collections.emptyList();
                this.oneofDecl_ = Collections.emptyList();
                this.options_ = MessageOptions.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    getFieldFieldBuilder();
                    getExtensionFieldBuilder();
                    getNestedTypeFieldBuilder();
                    getEnumTypeFieldBuilder();
                    getExtensionRangeFieldBuilder();
                    getOneofDeclFieldBuilder();
                    getOptionsFieldBuilder();
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.name_ = "";
                this.bitField0_ &= -2;
                if (this.fieldBuilder_ == null) {
                    this.field_ = Collections.emptyList();
                    this.bitField0_ &= -3;
                } else {
                    this.fieldBuilder_.clear();
                }
                if (this.extensionBuilder_ == null) {
                    this.extension_ = Collections.emptyList();
                    this.bitField0_ &= -5;
                } else {
                    this.extensionBuilder_.clear();
                }
                if (this.nestedTypeBuilder_ == null) {
                    this.nestedType_ = Collections.emptyList();
                    this.bitField0_ &= -9;
                } else {
                    this.nestedTypeBuilder_.clear();
                }
                if (this.enumTypeBuilder_ == null) {
                    this.enumType_ = Collections.emptyList();
                    this.bitField0_ &= -17;
                } else {
                    this.enumTypeBuilder_.clear();
                }
                if (this.extensionRangeBuilder_ == null) {
                    this.extensionRange_ = Collections.emptyList();
                    this.bitField0_ &= -33;
                } else {
                    this.extensionRangeBuilder_.clear();
                }
                if (this.oneofDeclBuilder_ == null) {
                    this.oneofDecl_ = Collections.emptyList();
                    this.bitField0_ &= -65;
                } else {
                    this.oneofDeclBuilder_.clear();
                }
                if (this.optionsBuilder_ == null) {
                    this.options_ = MessageOptions.getDefaultInstance();
                } else {
                    this.optionsBuilder_.clear();
                }
                this.bitField0_ &= -129;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return DescriptorProtos.internal_static_google_protobuf_DescriptorProto_descriptor;
            }

            public DescriptorProto getDefaultInstanceForType() {
                return DescriptorProto.getDefaultInstance();
            }

            public DescriptorProto build() {
                DescriptorProto buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public DescriptorProto buildPartial() {
                int i;
                int i2 = 1;
                DescriptorProto descriptorProto = new DescriptorProto((com.google.protobuf.GeneratedMessage.Builder) this);
                int i3 = this.bitField0_;
                if ((i3 & 1) != 1) {
                    i2 = 0;
                }
                descriptorProto.name_ = this.name_;
                if (this.fieldBuilder_ == null) {
                    if ((this.bitField0_ & 2) == 2) {
                        this.field_ = Collections.unmodifiableList(this.field_);
                        this.bitField0_ &= -3;
                    }
                    descriptorProto.field_ = this.field_;
                } else {
                    descriptorProto.field_ = this.fieldBuilder_.build();
                }
                if (this.extensionBuilder_ == null) {
                    if ((this.bitField0_ & 4) == 4) {
                        this.extension_ = Collections.unmodifiableList(this.extension_);
                        this.bitField0_ &= -5;
                    }
                    descriptorProto.extension_ = this.extension_;
                } else {
                    descriptorProto.extension_ = this.extensionBuilder_.build();
                }
                if (this.nestedTypeBuilder_ == null) {
                    if ((this.bitField0_ & 8) == 8) {
                        this.nestedType_ = Collections.unmodifiableList(this.nestedType_);
                        this.bitField0_ &= -9;
                    }
                    descriptorProto.nestedType_ = this.nestedType_;
                } else {
                    descriptorProto.nestedType_ = this.nestedTypeBuilder_.build();
                }
                if (this.enumTypeBuilder_ == null) {
                    if ((this.bitField0_ & 16) == 16) {
                        this.enumType_ = Collections.unmodifiableList(this.enumType_);
                        this.bitField0_ &= -17;
                    }
                    descriptorProto.enumType_ = this.enumType_;
                } else {
                    descriptorProto.enumType_ = this.enumTypeBuilder_.build();
                }
                if (this.extensionRangeBuilder_ == null) {
                    if ((this.bitField0_ & 32) == 32) {
                        this.extensionRange_ = Collections.unmodifiableList(this.extensionRange_);
                        this.bitField0_ &= -33;
                    }
                    descriptorProto.extensionRange_ = this.extensionRange_;
                } else {
                    descriptorProto.extensionRange_ = this.extensionRangeBuilder_.build();
                }
                if (this.oneofDeclBuilder_ == null) {
                    if ((this.bitField0_ & 64) == 64) {
                        this.oneofDecl_ = Collections.unmodifiableList(this.oneofDecl_);
                        this.bitField0_ &= -65;
                    }
                    descriptorProto.oneofDecl_ = this.oneofDecl_;
                } else {
                    descriptorProto.oneofDecl_ = this.oneofDeclBuilder_.build();
                }
                if ((i3 & 128) == 128) {
                    i = i2 | 2;
                } else {
                    i = i2;
                }
                if (this.optionsBuilder_ == null) {
                    descriptorProto.options_ = this.options_;
                } else {
                    descriptorProto.options_ = (MessageOptions) this.optionsBuilder_.build();
                }
                descriptorProto.bitField0_ = i;
                onBuilt();
                return descriptorProto;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof DescriptorProto) {
                    return mergeFrom((DescriptorProto) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(DescriptorProto descriptorProto) {
                RepeatedFieldBuilder<OneofDescriptorProto, Builder, OneofDescriptorProtoOrBuilder> repeatedFieldBuilder = null;
                if (descriptorProto != DescriptorProto.getDefaultInstance()) {
                    if (descriptorProto.hasName()) {
                        this.bitField0_ |= 1;
                        this.name_ = descriptorProto.name_;
                        onChanged();
                    }
                    if (this.fieldBuilder_ == null) {
                        if (!descriptorProto.field_.isEmpty()) {
                            if (this.field_.isEmpty()) {
                                this.field_ = descriptorProto.field_;
                                this.bitField0_ &= -3;
                            } else {
                                ensureFieldIsMutable();
                                this.field_.addAll(descriptorProto.field_);
                            }
                            onChanged();
                        }
                    } else if (!descriptorProto.field_.isEmpty()) {
                        if (this.fieldBuilder_.isEmpty()) {
                            this.fieldBuilder_.dispose();
                            this.fieldBuilder_ = null;
                            this.field_ = descriptorProto.field_;
                            this.bitField0_ &= -3;
                            this.fieldBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? getFieldFieldBuilder() : null;
                        } else {
                            this.fieldBuilder_.addAllMessages(descriptorProto.field_);
                        }
                    }
                    if (this.extensionBuilder_ == null) {
                        if (!descriptorProto.extension_.isEmpty()) {
                            if (this.extension_.isEmpty()) {
                                this.extension_ = descriptorProto.extension_;
                                this.bitField0_ &= -5;
                            } else {
                                ensureExtensionIsMutable();
                                this.extension_.addAll(descriptorProto.extension_);
                            }
                            onChanged();
                        }
                    } else if (!descriptorProto.extension_.isEmpty()) {
                        if (this.extensionBuilder_.isEmpty()) {
                            this.extensionBuilder_.dispose();
                            this.extensionBuilder_ = null;
                            this.extension_ = descriptorProto.extension_;
                            this.bitField0_ &= -5;
                            this.extensionBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? getExtensionFieldBuilder() : null;
                        } else {
                            this.extensionBuilder_.addAllMessages(descriptorProto.extension_);
                        }
                    }
                    if (this.nestedTypeBuilder_ == null) {
                        if (!descriptorProto.nestedType_.isEmpty()) {
                            if (this.nestedType_.isEmpty()) {
                                this.nestedType_ = descriptorProto.nestedType_;
                                this.bitField0_ &= -9;
                            } else {
                                ensureNestedTypeIsMutable();
                                this.nestedType_.addAll(descriptorProto.nestedType_);
                            }
                            onChanged();
                        }
                    } else if (!descriptorProto.nestedType_.isEmpty()) {
                        if (this.nestedTypeBuilder_.isEmpty()) {
                            this.nestedTypeBuilder_.dispose();
                            this.nestedTypeBuilder_ = null;
                            this.nestedType_ = descriptorProto.nestedType_;
                            this.bitField0_ &= -9;
                            this.nestedTypeBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? getNestedTypeFieldBuilder() : null;
                        } else {
                            this.nestedTypeBuilder_.addAllMessages(descriptorProto.nestedType_);
                        }
                    }
                    if (this.enumTypeBuilder_ == null) {
                        if (!descriptorProto.enumType_.isEmpty()) {
                            if (this.enumType_.isEmpty()) {
                                this.enumType_ = descriptorProto.enumType_;
                                this.bitField0_ &= -17;
                            } else {
                                ensureEnumTypeIsMutable();
                                this.enumType_.addAll(descriptorProto.enumType_);
                            }
                            onChanged();
                        }
                    } else if (!descriptorProto.enumType_.isEmpty()) {
                        if (this.enumTypeBuilder_.isEmpty()) {
                            this.enumTypeBuilder_.dispose();
                            this.enumTypeBuilder_ = null;
                            this.enumType_ = descriptorProto.enumType_;
                            this.bitField0_ &= -17;
                            this.enumTypeBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? getEnumTypeFieldBuilder() : null;
                        } else {
                            this.enumTypeBuilder_.addAllMessages(descriptorProto.enumType_);
                        }
                    }
                    if (this.extensionRangeBuilder_ == null) {
                        if (!descriptorProto.extensionRange_.isEmpty()) {
                            if (this.extensionRange_.isEmpty()) {
                                this.extensionRange_ = descriptorProto.extensionRange_;
                                this.bitField0_ &= -33;
                            } else {
                                ensureExtensionRangeIsMutable();
                                this.extensionRange_.addAll(descriptorProto.extensionRange_);
                            }
                            onChanged();
                        }
                    } else if (!descriptorProto.extensionRange_.isEmpty()) {
                        if (this.extensionRangeBuilder_.isEmpty()) {
                            this.extensionRangeBuilder_.dispose();
                            this.extensionRangeBuilder_ = null;
                            this.extensionRange_ = descriptorProto.extensionRange_;
                            this.bitField0_ &= -33;
                            this.extensionRangeBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? getExtensionRangeFieldBuilder() : null;
                        } else {
                            this.extensionRangeBuilder_.addAllMessages(descriptorProto.extensionRange_);
                        }
                    }
                    if (this.oneofDeclBuilder_ == null) {
                        if (!descriptorProto.oneofDecl_.isEmpty()) {
                            if (this.oneofDecl_.isEmpty()) {
                                this.oneofDecl_ = descriptorProto.oneofDecl_;
                                this.bitField0_ &= -65;
                            } else {
                                ensureOneofDeclIsMutable();
                                this.oneofDecl_.addAll(descriptorProto.oneofDecl_);
                            }
                            onChanged();
                        }
                    } else if (!descriptorProto.oneofDecl_.isEmpty()) {
                        if (this.oneofDeclBuilder_.isEmpty()) {
                            this.oneofDeclBuilder_.dispose();
                            this.oneofDeclBuilder_ = null;
                            this.oneofDecl_ = descriptorProto.oneofDecl_;
                            this.bitField0_ &= -65;
                            if (GeneratedMessage.alwaysUseFieldBuilders) {
                                repeatedFieldBuilder = getOneofDeclFieldBuilder();
                            }
                            this.oneofDeclBuilder_ = repeatedFieldBuilder;
                        } else {
                            this.oneofDeclBuilder_.addAllMessages(descriptorProto.oneofDecl_);
                        }
                    }
                    if (descriptorProto.hasOptions()) {
                        mergeOptions(descriptorProto.getOptions());
                    }
                    mergeUnknownFields(descriptorProto.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                for (int i = 0; i < getFieldCount(); i++) {
                    if (!getField(i).isInitialized()) {
                        return false;
                    }
                }
                for (int i2 = 0; i2 < getExtensionCount(); i2++) {
                    if (!getExtension(i2).isInitialized()) {
                        return false;
                    }
                }
                for (int i3 = 0; i3 < getNestedTypeCount(); i3++) {
                    if (!getNestedType(i3).isInitialized()) {
                        return false;
                    }
                }
                for (int i4 = 0; i4 < getEnumTypeCount(); i4++) {
                    if (!getEnumType(i4).isInitialized()) {
                        return false;
                    }
                }
                if (!hasOptions() || getOptions().isInitialized()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                DescriptorProto descriptorProto;
                DescriptorProto descriptorProto2;
                try {
                    DescriptorProto descriptorProto3 = (DescriptorProto) DescriptorProto.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (descriptorProto3 != null) {
                        mergeFrom(descriptorProto3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    descriptorProto2 = (DescriptorProto) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    descriptorProto = descriptorProto2;
                    th = th2;
                }
                if (descriptorProto != null) {
                    mergeFrom(descriptorProto);
                }
                throw th;
            }

            public boolean hasName() {
                return (this.bitField0_ & 1) == 1;
            }

            public String getName() {
                Object obj = this.name_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.name_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getNameBytes() {
                Object obj = this.name_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.name_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setName(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.name_ = str;
                onChanged();
                return this;
            }

            public Builder clearName() {
                this.bitField0_ &= -2;
                this.name_ = DescriptorProto.getDefaultInstance().getName();
                onChanged();
                return this;
            }

            public Builder setNameBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.name_ = byteString;
                onChanged();
                return this;
            }

            private void ensureFieldIsMutable() {
                if ((this.bitField0_ & 2) != 2) {
                    this.field_ = new ArrayList(this.field_);
                    this.bitField0_ |= 2;
                }
            }

            public List<FieldDescriptorProto> getFieldList() {
                if (this.fieldBuilder_ == null) {
                    return Collections.unmodifiableList(this.field_);
                }
                return this.fieldBuilder_.getMessageList();
            }

            public int getFieldCount() {
                if (this.fieldBuilder_ == null) {
                    return this.field_.size();
                }
                return this.fieldBuilder_.getCount();
            }

            public FieldDescriptorProto getField(int i) {
                if (this.fieldBuilder_ == null) {
                    return (FieldDescriptorProto) this.field_.get(i);
                }
                return (FieldDescriptorProto) this.fieldBuilder_.getMessage(i);
            }

            public Builder setField(int i, FieldDescriptorProto fieldDescriptorProto) {
                if (this.fieldBuilder_ != null) {
                    this.fieldBuilder_.setMessage(i, fieldDescriptorProto);
                } else if (fieldDescriptorProto == null) {
                    throw new NullPointerException();
                } else {
                    ensureFieldIsMutable();
                    this.field_.set(i, fieldDescriptorProto);
                    onChanged();
                }
                return this;
            }

            public Builder setField(int i, Builder builder) {
                if (this.fieldBuilder_ == null) {
                    ensureFieldIsMutable();
                    this.field_.set(i, builder.build());
                    onChanged();
                } else {
                    this.fieldBuilder_.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addField(FieldDescriptorProto fieldDescriptorProto) {
                if (this.fieldBuilder_ != null) {
                    this.fieldBuilder_.addMessage(fieldDescriptorProto);
                } else if (fieldDescriptorProto == null) {
                    throw new NullPointerException();
                } else {
                    ensureFieldIsMutable();
                    this.field_.add(fieldDescriptorProto);
                    onChanged();
                }
                return this;
            }

            public Builder addField(int i, FieldDescriptorProto fieldDescriptorProto) {
                if (this.fieldBuilder_ != null) {
                    this.fieldBuilder_.addMessage(i, fieldDescriptorProto);
                } else if (fieldDescriptorProto == null) {
                    throw new NullPointerException();
                } else {
                    ensureFieldIsMutable();
                    this.field_.add(i, fieldDescriptorProto);
                    onChanged();
                }
                return this;
            }

            public Builder addField(Builder builder) {
                if (this.fieldBuilder_ == null) {
                    ensureFieldIsMutable();
                    this.field_.add(builder.build());
                    onChanged();
                } else {
                    this.fieldBuilder_.addMessage(builder.build());
                }
                return this;
            }

            public Builder addField(int i, Builder builder) {
                if (this.fieldBuilder_ == null) {
                    ensureFieldIsMutable();
                    this.field_.add(i, builder.build());
                    onChanged();
                } else {
                    this.fieldBuilder_.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllField(Iterable<? extends FieldDescriptorProto> iterable) {
                if (this.fieldBuilder_ == null) {
                    ensureFieldIsMutable();
                    com.google.protobuf.AbstractMessageLite.Builder.addAll(iterable, this.field_);
                    onChanged();
                } else {
                    this.fieldBuilder_.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearField() {
                if (this.fieldBuilder_ == null) {
                    this.field_ = Collections.emptyList();
                    this.bitField0_ &= -3;
                    onChanged();
                } else {
                    this.fieldBuilder_.clear();
                }
                return this;
            }

            public Builder removeField(int i) {
                if (this.fieldBuilder_ == null) {
                    ensureFieldIsMutable();
                    this.field_.remove(i);
                    onChanged();
                } else {
                    this.fieldBuilder_.remove(i);
                }
                return this;
            }

            public Builder getFieldBuilder(int i) {
                return (Builder) getFieldFieldBuilder().getBuilder(i);
            }

            public FieldDescriptorProtoOrBuilder getFieldOrBuilder(int i) {
                if (this.fieldBuilder_ == null) {
                    return (FieldDescriptorProtoOrBuilder) this.field_.get(i);
                }
                return (FieldDescriptorProtoOrBuilder) this.fieldBuilder_.getMessageOrBuilder(i);
            }

            public List<? extends FieldDescriptorProtoOrBuilder> getFieldOrBuilderList() {
                if (this.fieldBuilder_ != null) {
                    return this.fieldBuilder_.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.field_);
            }

            public Builder addFieldBuilder() {
                return (Builder) getFieldFieldBuilder().addBuilder(FieldDescriptorProto.getDefaultInstance());
            }

            public Builder addFieldBuilder(int i) {
                return (Builder) getFieldFieldBuilder().addBuilder(i, FieldDescriptorProto.getDefaultInstance());
            }

            public List<Builder> getFieldBuilderList() {
                return getFieldFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<FieldDescriptorProto, Builder, FieldDescriptorProtoOrBuilder> getFieldFieldBuilder() {
                if (this.fieldBuilder_ == null) {
                    this.fieldBuilder_ = new RepeatedFieldBuilder<>(this.field_, (this.bitField0_ & 2) == 2, getParentForChildren(), isClean());
                    this.field_ = null;
                }
                return this.fieldBuilder_;
            }

            private void ensureExtensionIsMutable() {
                if ((this.bitField0_ & 4) != 4) {
                    this.extension_ = new ArrayList(this.extension_);
                    this.bitField0_ |= 4;
                }
            }

            public List<FieldDescriptorProto> getExtensionList() {
                if (this.extensionBuilder_ == null) {
                    return Collections.unmodifiableList(this.extension_);
                }
                return this.extensionBuilder_.getMessageList();
            }

            public int getExtensionCount() {
                if (this.extensionBuilder_ == null) {
                    return this.extension_.size();
                }
                return this.extensionBuilder_.getCount();
            }

            public FieldDescriptorProto getExtension(int i) {
                if (this.extensionBuilder_ == null) {
                    return (FieldDescriptorProto) this.extension_.get(i);
                }
                return (FieldDescriptorProto) this.extensionBuilder_.getMessage(i);
            }

            public Builder setExtension(int i, FieldDescriptorProto fieldDescriptorProto) {
                if (this.extensionBuilder_ != null) {
                    this.extensionBuilder_.setMessage(i, fieldDescriptorProto);
                } else if (fieldDescriptorProto == null) {
                    throw new NullPointerException();
                } else {
                    ensureExtensionIsMutable();
                    this.extension_.set(i, fieldDescriptorProto);
                    onChanged();
                }
                return this;
            }

            public Builder setExtension(int i, Builder builder) {
                if (this.extensionBuilder_ == null) {
                    ensureExtensionIsMutable();
                    this.extension_.set(i, builder.build());
                    onChanged();
                } else {
                    this.extensionBuilder_.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addExtension(FieldDescriptorProto fieldDescriptorProto) {
                if (this.extensionBuilder_ != null) {
                    this.extensionBuilder_.addMessage(fieldDescriptorProto);
                } else if (fieldDescriptorProto == null) {
                    throw new NullPointerException();
                } else {
                    ensureExtensionIsMutable();
                    this.extension_.add(fieldDescriptorProto);
                    onChanged();
                }
                return this;
            }

            public Builder addExtension(int i, FieldDescriptorProto fieldDescriptorProto) {
                if (this.extensionBuilder_ != null) {
                    this.extensionBuilder_.addMessage(i, fieldDescriptorProto);
                } else if (fieldDescriptorProto == null) {
                    throw new NullPointerException();
                } else {
                    ensureExtensionIsMutable();
                    this.extension_.add(i, fieldDescriptorProto);
                    onChanged();
                }
                return this;
            }

            public Builder addExtension(Builder builder) {
                if (this.extensionBuilder_ == null) {
                    ensureExtensionIsMutable();
                    this.extension_.add(builder.build());
                    onChanged();
                } else {
                    this.extensionBuilder_.addMessage(builder.build());
                }
                return this;
            }

            public Builder addExtension(int i, Builder builder) {
                if (this.extensionBuilder_ == null) {
                    ensureExtensionIsMutable();
                    this.extension_.add(i, builder.build());
                    onChanged();
                } else {
                    this.extensionBuilder_.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllExtension(Iterable<? extends FieldDescriptorProto> iterable) {
                if (this.extensionBuilder_ == null) {
                    ensureExtensionIsMutable();
                    com.google.protobuf.AbstractMessageLite.Builder.addAll(iterable, this.extension_);
                    onChanged();
                } else {
                    this.extensionBuilder_.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearExtension() {
                if (this.extensionBuilder_ == null) {
                    this.extension_ = Collections.emptyList();
                    this.bitField0_ &= -5;
                    onChanged();
                } else {
                    this.extensionBuilder_.clear();
                }
                return this;
            }

            public Builder removeExtension(int i) {
                if (this.extensionBuilder_ == null) {
                    ensureExtensionIsMutable();
                    this.extension_.remove(i);
                    onChanged();
                } else {
                    this.extensionBuilder_.remove(i);
                }
                return this;
            }

            public Builder getExtensionBuilder(int i) {
                return (Builder) getExtensionFieldBuilder().getBuilder(i);
            }

            public FieldDescriptorProtoOrBuilder getExtensionOrBuilder(int i) {
                if (this.extensionBuilder_ == null) {
                    return (FieldDescriptorProtoOrBuilder) this.extension_.get(i);
                }
                return (FieldDescriptorProtoOrBuilder) this.extensionBuilder_.getMessageOrBuilder(i);
            }

            public List<? extends FieldDescriptorProtoOrBuilder> getExtensionOrBuilderList() {
                if (this.extensionBuilder_ != null) {
                    return this.extensionBuilder_.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.extension_);
            }

            public Builder addExtensionBuilder() {
                return (Builder) getExtensionFieldBuilder().addBuilder(FieldDescriptorProto.getDefaultInstance());
            }

            public Builder addExtensionBuilder(int i) {
                return (Builder) getExtensionFieldBuilder().addBuilder(i, FieldDescriptorProto.getDefaultInstance());
            }

            public List<Builder> getExtensionBuilderList() {
                return getExtensionFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<FieldDescriptorProto, Builder, FieldDescriptorProtoOrBuilder> getExtensionFieldBuilder() {
                if (this.extensionBuilder_ == null) {
                    this.extensionBuilder_ = new RepeatedFieldBuilder<>(this.extension_, (this.bitField0_ & 4) == 4, getParentForChildren(), isClean());
                    this.extension_ = null;
                }
                return this.extensionBuilder_;
            }

            private void ensureNestedTypeIsMutable() {
                if ((this.bitField0_ & 8) != 8) {
                    this.nestedType_ = new ArrayList(this.nestedType_);
                    this.bitField0_ |= 8;
                }
            }

            public List<DescriptorProto> getNestedTypeList() {
                if (this.nestedTypeBuilder_ == null) {
                    return Collections.unmodifiableList(this.nestedType_);
                }
                return this.nestedTypeBuilder_.getMessageList();
            }

            public int getNestedTypeCount() {
                if (this.nestedTypeBuilder_ == null) {
                    return this.nestedType_.size();
                }
                return this.nestedTypeBuilder_.getCount();
            }

            public DescriptorProto getNestedType(int i) {
                if (this.nestedTypeBuilder_ == null) {
                    return (DescriptorProto) this.nestedType_.get(i);
                }
                return (DescriptorProto) this.nestedTypeBuilder_.getMessage(i);
            }

            public Builder setNestedType(int i, DescriptorProto descriptorProto) {
                if (this.nestedTypeBuilder_ != null) {
                    this.nestedTypeBuilder_.setMessage(i, descriptorProto);
                } else if (descriptorProto == null) {
                    throw new NullPointerException();
                } else {
                    ensureNestedTypeIsMutable();
                    this.nestedType_.set(i, descriptorProto);
                    onChanged();
                }
                return this;
            }

            public Builder setNestedType(int i, Builder builder) {
                if (this.nestedTypeBuilder_ == null) {
                    ensureNestedTypeIsMutable();
                    this.nestedType_.set(i, builder.build());
                    onChanged();
                } else {
                    this.nestedTypeBuilder_.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addNestedType(DescriptorProto descriptorProto) {
                if (this.nestedTypeBuilder_ != null) {
                    this.nestedTypeBuilder_.addMessage(descriptorProto);
                } else if (descriptorProto == null) {
                    throw new NullPointerException();
                } else {
                    ensureNestedTypeIsMutable();
                    this.nestedType_.add(descriptorProto);
                    onChanged();
                }
                return this;
            }

            public Builder addNestedType(int i, DescriptorProto descriptorProto) {
                if (this.nestedTypeBuilder_ != null) {
                    this.nestedTypeBuilder_.addMessage(i, descriptorProto);
                } else if (descriptorProto == null) {
                    throw new NullPointerException();
                } else {
                    ensureNestedTypeIsMutable();
                    this.nestedType_.add(i, descriptorProto);
                    onChanged();
                }
                return this;
            }

            public Builder addNestedType(Builder builder) {
                if (this.nestedTypeBuilder_ == null) {
                    ensureNestedTypeIsMutable();
                    this.nestedType_.add(builder.build());
                    onChanged();
                } else {
                    this.nestedTypeBuilder_.addMessage(builder.build());
                }
                return this;
            }

            public Builder addNestedType(int i, Builder builder) {
                if (this.nestedTypeBuilder_ == null) {
                    ensureNestedTypeIsMutable();
                    this.nestedType_.add(i, builder.build());
                    onChanged();
                } else {
                    this.nestedTypeBuilder_.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllNestedType(Iterable<? extends DescriptorProto> iterable) {
                if (this.nestedTypeBuilder_ == null) {
                    ensureNestedTypeIsMutable();
                    com.google.protobuf.AbstractMessageLite.Builder.addAll(iterable, this.nestedType_);
                    onChanged();
                } else {
                    this.nestedTypeBuilder_.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearNestedType() {
                if (this.nestedTypeBuilder_ == null) {
                    this.nestedType_ = Collections.emptyList();
                    this.bitField0_ &= -9;
                    onChanged();
                } else {
                    this.nestedTypeBuilder_.clear();
                }
                return this;
            }

            public Builder removeNestedType(int i) {
                if (this.nestedTypeBuilder_ == null) {
                    ensureNestedTypeIsMutable();
                    this.nestedType_.remove(i);
                    onChanged();
                } else {
                    this.nestedTypeBuilder_.remove(i);
                }
                return this;
            }

            public Builder getNestedTypeBuilder(int i) {
                return (Builder) getNestedTypeFieldBuilder().getBuilder(i);
            }

            public DescriptorProtoOrBuilder getNestedTypeOrBuilder(int i) {
                if (this.nestedTypeBuilder_ == null) {
                    return (DescriptorProtoOrBuilder) this.nestedType_.get(i);
                }
                return (DescriptorProtoOrBuilder) this.nestedTypeBuilder_.getMessageOrBuilder(i);
            }

            public List<? extends DescriptorProtoOrBuilder> getNestedTypeOrBuilderList() {
                if (this.nestedTypeBuilder_ != null) {
                    return this.nestedTypeBuilder_.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.nestedType_);
            }

            public Builder addNestedTypeBuilder() {
                return (Builder) getNestedTypeFieldBuilder().addBuilder(DescriptorProto.getDefaultInstance());
            }

            public Builder addNestedTypeBuilder(int i) {
                return (Builder) getNestedTypeFieldBuilder().addBuilder(i, DescriptorProto.getDefaultInstance());
            }

            public List<Builder> getNestedTypeBuilderList() {
                return getNestedTypeFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<DescriptorProto, Builder, DescriptorProtoOrBuilder> getNestedTypeFieldBuilder() {
                if (this.nestedTypeBuilder_ == null) {
                    this.nestedTypeBuilder_ = new RepeatedFieldBuilder<>(this.nestedType_, (this.bitField0_ & 8) == 8, getParentForChildren(), isClean());
                    this.nestedType_ = null;
                }
                return this.nestedTypeBuilder_;
            }

            private void ensureEnumTypeIsMutable() {
                if ((this.bitField0_ & 16) != 16) {
                    this.enumType_ = new ArrayList(this.enumType_);
                    this.bitField0_ |= 16;
                }
            }

            public List<EnumDescriptorProto> getEnumTypeList() {
                if (this.enumTypeBuilder_ == null) {
                    return Collections.unmodifiableList(this.enumType_);
                }
                return this.enumTypeBuilder_.getMessageList();
            }

            public int getEnumTypeCount() {
                if (this.enumTypeBuilder_ == null) {
                    return this.enumType_.size();
                }
                return this.enumTypeBuilder_.getCount();
            }

            public EnumDescriptorProto getEnumType(int i) {
                if (this.enumTypeBuilder_ == null) {
                    return (EnumDescriptorProto) this.enumType_.get(i);
                }
                return (EnumDescriptorProto) this.enumTypeBuilder_.getMessage(i);
            }

            public Builder setEnumType(int i, EnumDescriptorProto enumDescriptorProto) {
                if (this.enumTypeBuilder_ != null) {
                    this.enumTypeBuilder_.setMessage(i, enumDescriptorProto);
                } else if (enumDescriptorProto == null) {
                    throw new NullPointerException();
                } else {
                    ensureEnumTypeIsMutable();
                    this.enumType_.set(i, enumDescriptorProto);
                    onChanged();
                }
                return this;
            }

            public Builder setEnumType(int i, Builder builder) {
                if (this.enumTypeBuilder_ == null) {
                    ensureEnumTypeIsMutable();
                    this.enumType_.set(i, builder.build());
                    onChanged();
                } else {
                    this.enumTypeBuilder_.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addEnumType(EnumDescriptorProto enumDescriptorProto) {
                if (this.enumTypeBuilder_ != null) {
                    this.enumTypeBuilder_.addMessage(enumDescriptorProto);
                } else if (enumDescriptorProto == null) {
                    throw new NullPointerException();
                } else {
                    ensureEnumTypeIsMutable();
                    this.enumType_.add(enumDescriptorProto);
                    onChanged();
                }
                return this;
            }

            public Builder addEnumType(int i, EnumDescriptorProto enumDescriptorProto) {
                if (this.enumTypeBuilder_ != null) {
                    this.enumTypeBuilder_.addMessage(i, enumDescriptorProto);
                } else if (enumDescriptorProto == null) {
                    throw new NullPointerException();
                } else {
                    ensureEnumTypeIsMutable();
                    this.enumType_.add(i, enumDescriptorProto);
                    onChanged();
                }
                return this;
            }

            public Builder addEnumType(Builder builder) {
                if (this.enumTypeBuilder_ == null) {
                    ensureEnumTypeIsMutable();
                    this.enumType_.add(builder.build());
                    onChanged();
                } else {
                    this.enumTypeBuilder_.addMessage(builder.build());
                }
                return this;
            }

            public Builder addEnumType(int i, Builder builder) {
                if (this.enumTypeBuilder_ == null) {
                    ensureEnumTypeIsMutable();
                    this.enumType_.add(i, builder.build());
                    onChanged();
                } else {
                    this.enumTypeBuilder_.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllEnumType(Iterable<? extends EnumDescriptorProto> iterable) {
                if (this.enumTypeBuilder_ == null) {
                    ensureEnumTypeIsMutable();
                    com.google.protobuf.AbstractMessageLite.Builder.addAll(iterable, this.enumType_);
                    onChanged();
                } else {
                    this.enumTypeBuilder_.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearEnumType() {
                if (this.enumTypeBuilder_ == null) {
                    this.enumType_ = Collections.emptyList();
                    this.bitField0_ &= -17;
                    onChanged();
                } else {
                    this.enumTypeBuilder_.clear();
                }
                return this;
            }

            public Builder removeEnumType(int i) {
                if (this.enumTypeBuilder_ == null) {
                    ensureEnumTypeIsMutable();
                    this.enumType_.remove(i);
                    onChanged();
                } else {
                    this.enumTypeBuilder_.remove(i);
                }
                return this;
            }

            public Builder getEnumTypeBuilder(int i) {
                return (Builder) getEnumTypeFieldBuilder().getBuilder(i);
            }

            public EnumDescriptorProtoOrBuilder getEnumTypeOrBuilder(int i) {
                if (this.enumTypeBuilder_ == null) {
                    return (EnumDescriptorProtoOrBuilder) this.enumType_.get(i);
                }
                return (EnumDescriptorProtoOrBuilder) this.enumTypeBuilder_.getMessageOrBuilder(i);
            }

            public List<? extends EnumDescriptorProtoOrBuilder> getEnumTypeOrBuilderList() {
                if (this.enumTypeBuilder_ != null) {
                    return this.enumTypeBuilder_.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.enumType_);
            }

            public Builder addEnumTypeBuilder() {
                return (Builder) getEnumTypeFieldBuilder().addBuilder(EnumDescriptorProto.getDefaultInstance());
            }

            public Builder addEnumTypeBuilder(int i) {
                return (Builder) getEnumTypeFieldBuilder().addBuilder(i, EnumDescriptorProto.getDefaultInstance());
            }

            public List<Builder> getEnumTypeBuilderList() {
                return getEnumTypeFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<EnumDescriptorProto, Builder, EnumDescriptorProtoOrBuilder> getEnumTypeFieldBuilder() {
                if (this.enumTypeBuilder_ == null) {
                    this.enumTypeBuilder_ = new RepeatedFieldBuilder<>(this.enumType_, (this.bitField0_ & 16) == 16, getParentForChildren(), isClean());
                    this.enumType_ = null;
                }
                return this.enumTypeBuilder_;
            }

            private void ensureExtensionRangeIsMutable() {
                if ((this.bitField0_ & 32) != 32) {
                    this.extensionRange_ = new ArrayList(this.extensionRange_);
                    this.bitField0_ |= 32;
                }
            }

            public List<ExtensionRange> getExtensionRangeList() {
                if (this.extensionRangeBuilder_ == null) {
                    return Collections.unmodifiableList(this.extensionRange_);
                }
                return this.extensionRangeBuilder_.getMessageList();
            }

            public int getExtensionRangeCount() {
                if (this.extensionRangeBuilder_ == null) {
                    return this.extensionRange_.size();
                }
                return this.extensionRangeBuilder_.getCount();
            }

            public ExtensionRange getExtensionRange(int i) {
                if (this.extensionRangeBuilder_ == null) {
                    return (ExtensionRange) this.extensionRange_.get(i);
                }
                return (ExtensionRange) this.extensionRangeBuilder_.getMessage(i);
            }

            public Builder setExtensionRange(int i, ExtensionRange extensionRange) {
                if (this.extensionRangeBuilder_ != null) {
                    this.extensionRangeBuilder_.setMessage(i, extensionRange);
                } else if (extensionRange == null) {
                    throw new NullPointerException();
                } else {
                    ensureExtensionRangeIsMutable();
                    this.extensionRange_.set(i, extensionRange);
                    onChanged();
                }
                return this;
            }

            public Builder setExtensionRange(int i, Builder builder) {
                if (this.extensionRangeBuilder_ == null) {
                    ensureExtensionRangeIsMutable();
                    this.extensionRange_.set(i, builder.build());
                    onChanged();
                } else {
                    this.extensionRangeBuilder_.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addExtensionRange(ExtensionRange extensionRange) {
                if (this.extensionRangeBuilder_ != null) {
                    this.extensionRangeBuilder_.addMessage(extensionRange);
                } else if (extensionRange == null) {
                    throw new NullPointerException();
                } else {
                    ensureExtensionRangeIsMutable();
                    this.extensionRange_.add(extensionRange);
                    onChanged();
                }
                return this;
            }

            public Builder addExtensionRange(int i, ExtensionRange extensionRange) {
                if (this.extensionRangeBuilder_ != null) {
                    this.extensionRangeBuilder_.addMessage(i, extensionRange);
                } else if (extensionRange == null) {
                    throw new NullPointerException();
                } else {
                    ensureExtensionRangeIsMutable();
                    this.extensionRange_.add(i, extensionRange);
                    onChanged();
                }
                return this;
            }

            public Builder addExtensionRange(Builder builder) {
                if (this.extensionRangeBuilder_ == null) {
                    ensureExtensionRangeIsMutable();
                    this.extensionRange_.add(builder.build());
                    onChanged();
                } else {
                    this.extensionRangeBuilder_.addMessage(builder.build());
                }
                return this;
            }

            public Builder addExtensionRange(int i, Builder builder) {
                if (this.extensionRangeBuilder_ == null) {
                    ensureExtensionRangeIsMutable();
                    this.extensionRange_.add(i, builder.build());
                    onChanged();
                } else {
                    this.extensionRangeBuilder_.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllExtensionRange(Iterable<? extends ExtensionRange> iterable) {
                if (this.extensionRangeBuilder_ == null) {
                    ensureExtensionRangeIsMutable();
                    com.google.protobuf.AbstractMessageLite.Builder.addAll(iterable, this.extensionRange_);
                    onChanged();
                } else {
                    this.extensionRangeBuilder_.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearExtensionRange() {
                if (this.extensionRangeBuilder_ == null) {
                    this.extensionRange_ = Collections.emptyList();
                    this.bitField0_ &= -33;
                    onChanged();
                } else {
                    this.extensionRangeBuilder_.clear();
                }
                return this;
            }

            public Builder removeExtensionRange(int i) {
                if (this.extensionRangeBuilder_ == null) {
                    ensureExtensionRangeIsMutable();
                    this.extensionRange_.remove(i);
                    onChanged();
                } else {
                    this.extensionRangeBuilder_.remove(i);
                }
                return this;
            }

            public Builder getExtensionRangeBuilder(int i) {
                return (Builder) getExtensionRangeFieldBuilder().getBuilder(i);
            }

            public ExtensionRangeOrBuilder getExtensionRangeOrBuilder(int i) {
                if (this.extensionRangeBuilder_ == null) {
                    return (ExtensionRangeOrBuilder) this.extensionRange_.get(i);
                }
                return (ExtensionRangeOrBuilder) this.extensionRangeBuilder_.getMessageOrBuilder(i);
            }

            public List<? extends ExtensionRangeOrBuilder> getExtensionRangeOrBuilderList() {
                if (this.extensionRangeBuilder_ != null) {
                    return this.extensionRangeBuilder_.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.extensionRange_);
            }

            public Builder addExtensionRangeBuilder() {
                return (Builder) getExtensionRangeFieldBuilder().addBuilder(ExtensionRange.getDefaultInstance());
            }

            public Builder addExtensionRangeBuilder(int i) {
                return (Builder) getExtensionRangeFieldBuilder().addBuilder(i, ExtensionRange.getDefaultInstance());
            }

            public List<Builder> getExtensionRangeBuilderList() {
                return getExtensionRangeFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<ExtensionRange, Builder, ExtensionRangeOrBuilder> getExtensionRangeFieldBuilder() {
                if (this.extensionRangeBuilder_ == null) {
                    this.extensionRangeBuilder_ = new RepeatedFieldBuilder<>(this.extensionRange_, (this.bitField0_ & 32) == 32, getParentForChildren(), isClean());
                    this.extensionRange_ = null;
                }
                return this.extensionRangeBuilder_;
            }

            private void ensureOneofDeclIsMutable() {
                if ((this.bitField0_ & 64) != 64) {
                    this.oneofDecl_ = new ArrayList(this.oneofDecl_);
                    this.bitField0_ |= 64;
                }
            }

            public List<OneofDescriptorProto> getOneofDeclList() {
                if (this.oneofDeclBuilder_ == null) {
                    return Collections.unmodifiableList(this.oneofDecl_);
                }
                return this.oneofDeclBuilder_.getMessageList();
            }

            public int getOneofDeclCount() {
                if (this.oneofDeclBuilder_ == null) {
                    return this.oneofDecl_.size();
                }
                return this.oneofDeclBuilder_.getCount();
            }

            public OneofDescriptorProto getOneofDecl(int i) {
                if (this.oneofDeclBuilder_ == null) {
                    return (OneofDescriptorProto) this.oneofDecl_.get(i);
                }
                return (OneofDescriptorProto) this.oneofDeclBuilder_.getMessage(i);
            }

            public Builder setOneofDecl(int i, OneofDescriptorProto oneofDescriptorProto) {
                if (this.oneofDeclBuilder_ != null) {
                    this.oneofDeclBuilder_.setMessage(i, oneofDescriptorProto);
                } else if (oneofDescriptorProto == null) {
                    throw new NullPointerException();
                } else {
                    ensureOneofDeclIsMutable();
                    this.oneofDecl_.set(i, oneofDescriptorProto);
                    onChanged();
                }
                return this;
            }

            public Builder setOneofDecl(int i, Builder builder) {
                if (this.oneofDeclBuilder_ == null) {
                    ensureOneofDeclIsMutable();
                    this.oneofDecl_.set(i, builder.build());
                    onChanged();
                } else {
                    this.oneofDeclBuilder_.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addOneofDecl(OneofDescriptorProto oneofDescriptorProto) {
                if (this.oneofDeclBuilder_ != null) {
                    this.oneofDeclBuilder_.addMessage(oneofDescriptorProto);
                } else if (oneofDescriptorProto == null) {
                    throw new NullPointerException();
                } else {
                    ensureOneofDeclIsMutable();
                    this.oneofDecl_.add(oneofDescriptorProto);
                    onChanged();
                }
                return this;
            }

            public Builder addOneofDecl(int i, OneofDescriptorProto oneofDescriptorProto) {
                if (this.oneofDeclBuilder_ != null) {
                    this.oneofDeclBuilder_.addMessage(i, oneofDescriptorProto);
                } else if (oneofDescriptorProto == null) {
                    throw new NullPointerException();
                } else {
                    ensureOneofDeclIsMutable();
                    this.oneofDecl_.add(i, oneofDescriptorProto);
                    onChanged();
                }
                return this;
            }

            public Builder addOneofDecl(Builder builder) {
                if (this.oneofDeclBuilder_ == null) {
                    ensureOneofDeclIsMutable();
                    this.oneofDecl_.add(builder.build());
                    onChanged();
                } else {
                    this.oneofDeclBuilder_.addMessage(builder.build());
                }
                return this;
            }

            public Builder addOneofDecl(int i, Builder builder) {
                if (this.oneofDeclBuilder_ == null) {
                    ensureOneofDeclIsMutable();
                    this.oneofDecl_.add(i, builder.build());
                    onChanged();
                } else {
                    this.oneofDeclBuilder_.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllOneofDecl(Iterable<? extends OneofDescriptorProto> iterable) {
                if (this.oneofDeclBuilder_ == null) {
                    ensureOneofDeclIsMutable();
                    com.google.protobuf.AbstractMessageLite.Builder.addAll(iterable, this.oneofDecl_);
                    onChanged();
                } else {
                    this.oneofDeclBuilder_.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearOneofDecl() {
                if (this.oneofDeclBuilder_ == null) {
                    this.oneofDecl_ = Collections.emptyList();
                    this.bitField0_ &= -65;
                    onChanged();
                } else {
                    this.oneofDeclBuilder_.clear();
                }
                return this;
            }

            public Builder removeOneofDecl(int i) {
                if (this.oneofDeclBuilder_ == null) {
                    ensureOneofDeclIsMutable();
                    this.oneofDecl_.remove(i);
                    onChanged();
                } else {
                    this.oneofDeclBuilder_.remove(i);
                }
                return this;
            }

            public Builder getOneofDeclBuilder(int i) {
                return (Builder) getOneofDeclFieldBuilder().getBuilder(i);
            }

            public OneofDescriptorProtoOrBuilder getOneofDeclOrBuilder(int i) {
                if (this.oneofDeclBuilder_ == null) {
                    return (OneofDescriptorProtoOrBuilder) this.oneofDecl_.get(i);
                }
                return (OneofDescriptorProtoOrBuilder) this.oneofDeclBuilder_.getMessageOrBuilder(i);
            }

            public List<? extends OneofDescriptorProtoOrBuilder> getOneofDeclOrBuilderList() {
                if (this.oneofDeclBuilder_ != null) {
                    return this.oneofDeclBuilder_.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.oneofDecl_);
            }

            public Builder addOneofDeclBuilder() {
                return (Builder) getOneofDeclFieldBuilder().addBuilder(OneofDescriptorProto.getDefaultInstance());
            }

            public Builder addOneofDeclBuilder(int i) {
                return (Builder) getOneofDeclFieldBuilder().addBuilder(i, OneofDescriptorProto.getDefaultInstance());
            }

            public List<Builder> getOneofDeclBuilderList() {
                return getOneofDeclFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<OneofDescriptorProto, Builder, OneofDescriptorProtoOrBuilder> getOneofDeclFieldBuilder() {
                if (this.oneofDeclBuilder_ == null) {
                    this.oneofDeclBuilder_ = new RepeatedFieldBuilder<>(this.oneofDecl_, (this.bitField0_ & 64) == 64, getParentForChildren(), isClean());
                    this.oneofDecl_ = null;
                }
                return this.oneofDeclBuilder_;
            }

            public boolean hasOptions() {
                return (this.bitField0_ & 128) == 128;
            }

            public MessageOptions getOptions() {
                if (this.optionsBuilder_ == null) {
                    return this.options_;
                }
                return (MessageOptions) this.optionsBuilder_.getMessage();
            }

            public Builder setOptions(MessageOptions messageOptions) {
                if (this.optionsBuilder_ != null) {
                    this.optionsBuilder_.setMessage(messageOptions);
                } else if (messageOptions == null) {
                    throw new NullPointerException();
                } else {
                    this.options_ = messageOptions;
                    onChanged();
                }
                this.bitField0_ |= 128;
                return this;
            }

            public Builder setOptions(Builder builder) {
                if (this.optionsBuilder_ == null) {
                    this.options_ = builder.build();
                    onChanged();
                } else {
                    this.optionsBuilder_.setMessage(builder.build());
                }
                this.bitField0_ |= 128;
                return this;
            }

            public Builder mergeOptions(MessageOptions messageOptions) {
                if (this.optionsBuilder_ == null) {
                    if ((this.bitField0_ & 128) != 128 || this.options_ == MessageOptions.getDefaultInstance()) {
                        this.options_ = messageOptions;
                    } else {
                        this.options_ = MessageOptions.newBuilder(this.options_).mergeFrom(messageOptions).buildPartial();
                    }
                    onChanged();
                } else {
                    this.optionsBuilder_.mergeFrom(messageOptions);
                }
                this.bitField0_ |= 128;
                return this;
            }

            public Builder clearOptions() {
                if (this.optionsBuilder_ == null) {
                    this.options_ = MessageOptions.getDefaultInstance();
                    onChanged();
                } else {
                    this.optionsBuilder_.clear();
                }
                this.bitField0_ &= -129;
                return this;
            }

            public Builder getOptionsBuilder() {
                this.bitField0_ |= 128;
                onChanged();
                return (Builder) getOptionsFieldBuilder().getBuilder();
            }

            public MessageOptionsOrBuilder getOptionsOrBuilder() {
                if (this.optionsBuilder_ != null) {
                    return (MessageOptionsOrBuilder) this.optionsBuilder_.getMessageOrBuilder();
                }
                return this.options_;
            }

            private SingleFieldBuilder<MessageOptions, Builder, MessageOptionsOrBuilder> getOptionsFieldBuilder() {
                if (this.optionsBuilder_ == null) {
                    this.optionsBuilder_ = new SingleFieldBuilder<>(getOptions(), getParentForChildren(), isClean());
                    this.options_ = null;
                }
                return this.optionsBuilder_;
            }
        }

        public static final class ExtensionRange extends GeneratedMessage implements ExtensionRangeOrBuilder {
            public static final int END_FIELD_NUMBER = 2;
            public static Parser<ExtensionRange> PARSER = new AbstractParser<ExtensionRange>() {
                public ExtensionRange parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return new ExtensionRange(codedInputStream, extensionRegistryLite);
                }
            };
            public static final int START_FIELD_NUMBER = 1;
            private static final ExtensionRange defaultInstance = new ExtensionRange(true);
            private static final long serialVersionUID = 0;
            /* access modifiers changed from: private */
            public int bitField0_;
            /* access modifiers changed from: private */
            public int end_;
            private byte memoizedIsInitialized;
            private int memoizedSerializedSize;
            /* access modifiers changed from: private */
            public int start_;
            private final UnknownFieldSet unknownFields;

            public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements ExtensionRangeOrBuilder {
                private int bitField0_;
                private int end_;
                private int start_;

                public static final Descriptor getDescriptor() {
                    return DescriptorProtos.internal_static_google_protobuf_DescriptorProto_ExtensionRange_descriptor;
                }

                /* access modifiers changed from: protected */
                public FieldAccessorTable internalGetFieldAccessorTable() {
                    return DescriptorProtos.internal_static_google_protobuf_DescriptorProto_ExtensionRange_fieldAccessorTable.ensureFieldAccessorsInitialized(ExtensionRange.class, Builder.class);
                }

                private Builder() {
                    maybeForceBuilderInitialization();
                }

                private Builder(BuilderParent builderParent) {
                    super(builderParent);
                    maybeForceBuilderInitialization();
                }

                private void maybeForceBuilderInitialization() {
                    if (GeneratedMessage.alwaysUseFieldBuilders) {
                    }
                }

                /* access modifiers changed from: private */
                public static Builder create() {
                    return new Builder();
                }

                public Builder clear() {
                    super.clear();
                    this.start_ = 0;
                    this.bitField0_ &= -2;
                    this.end_ = 0;
                    this.bitField0_ &= -3;
                    return this;
                }

                public Builder clone() {
                    return create().mergeFrom(buildPartial());
                }

                public Descriptor getDescriptorForType() {
                    return DescriptorProtos.internal_static_google_protobuf_DescriptorProto_ExtensionRange_descriptor;
                }

                public ExtensionRange getDefaultInstanceForType() {
                    return ExtensionRange.getDefaultInstance();
                }

                public ExtensionRange build() {
                    ExtensionRange buildPartial = buildPartial();
                    if (buildPartial.isInitialized()) {
                        return buildPartial;
                    }
                    throw newUninitializedMessageException(buildPartial);
                }

                public ExtensionRange buildPartial() {
                    int i = 1;
                    ExtensionRange extensionRange = new ExtensionRange((com.google.protobuf.GeneratedMessage.Builder) this);
                    int i2 = this.bitField0_;
                    if ((i2 & 1) != 1) {
                        i = 0;
                    }
                    extensionRange.start_ = this.start_;
                    if ((i2 & 2) == 2) {
                        i |= 2;
                    }
                    extensionRange.end_ = this.end_;
                    extensionRange.bitField0_ = i;
                    onBuilt();
                    return extensionRange;
                }

                public Builder mergeFrom(Message message) {
                    if (message instanceof ExtensionRange) {
                        return mergeFrom((ExtensionRange) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public Builder mergeFrom(ExtensionRange extensionRange) {
                    if (extensionRange != ExtensionRange.getDefaultInstance()) {
                        if (extensionRange.hasStart()) {
                            setStart(extensionRange.getStart());
                        }
                        if (extensionRange.hasEnd()) {
                            setEnd(extensionRange.getEnd());
                        }
                        mergeUnknownFields(extensionRange.getUnknownFields());
                    }
                    return this;
                }

                public final boolean isInitialized() {
                    return true;
                }

                public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                    ExtensionRange extensionRange;
                    ExtensionRange extensionRange2;
                    try {
                        ExtensionRange extensionRange3 = (ExtensionRange) ExtensionRange.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                        if (extensionRange3 != null) {
                            mergeFrom(extensionRange3);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e) {
                        InvalidProtocolBufferException invalidProtocolBufferException = e;
                        extensionRange2 = (ExtensionRange) invalidProtocolBufferException.getUnfinishedMessage();
                        throw invalidProtocolBufferException;
                    } catch (Throwable th) {
                        Throwable th2 = th;
                        extensionRange = extensionRange2;
                        th = th2;
                    }
                    if (extensionRange != null) {
                        mergeFrom(extensionRange);
                    }
                    throw th;
                }

                public boolean hasStart() {
                    return (this.bitField0_ & 1) == 1;
                }

                public int getStart() {
                    return this.start_;
                }

                public Builder setStart(int i) {
                    this.bitField0_ |= 1;
                    this.start_ = i;
                    onChanged();
                    return this;
                }

                public Builder clearStart() {
                    this.bitField0_ &= -2;
                    this.start_ = 0;
                    onChanged();
                    return this;
                }

                public boolean hasEnd() {
                    return (this.bitField0_ & 2) == 2;
                }

                public int getEnd() {
                    return this.end_;
                }

                public Builder setEnd(int i) {
                    this.bitField0_ |= 2;
                    this.end_ = i;
                    onChanged();
                    return this;
                }

                public Builder clearEnd() {
                    this.bitField0_ &= -3;
                    this.end_ = 0;
                    onChanged();
                    return this;
                }
            }

            private ExtensionRange(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
                super(builder);
                this.memoizedIsInitialized = -1;
                this.memoizedSerializedSize = -1;
                this.unknownFields = builder.getUnknownFields();
            }

            private ExtensionRange(boolean z) {
                this.memoizedIsInitialized = -1;
                this.memoizedSerializedSize = -1;
                this.unknownFields = UnknownFieldSet.getDefaultInstance();
            }

            public static ExtensionRange getDefaultInstance() {
                return defaultInstance;
            }

            public ExtensionRange getDefaultInstanceForType() {
                return defaultInstance;
            }

            public final UnknownFieldSet getUnknownFields() {
                return this.unknownFields;
            }

            private ExtensionRange(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                this.start_ = codedInputStream.readInt32();
                                break;
                            case 16:
                                this.bitField0_ |= 2;
                                this.end_ = codedInputStream.readInt32();
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
                return DescriptorProtos.internal_static_google_protobuf_DescriptorProto_ExtensionRange_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return DescriptorProtos.internal_static_google_protobuf_DescriptorProto_ExtensionRange_fieldAccessorTable.ensureFieldAccessorsInitialized(ExtensionRange.class, Builder.class);
            }

            static {
                defaultInstance.initFields();
            }

            public Parser<ExtensionRange> getParserForType() {
                return PARSER;
            }

            public boolean hasStart() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getStart() {
                return this.start_;
            }

            public boolean hasEnd() {
                return (this.bitField0_ & 2) == 2;
            }

            public int getEnd() {
                return this.end_;
            }

            private void initFields() {
                this.start_ = 0;
                this.end_ = 0;
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
                    codedOutputStream.writeInt32(1, this.start_);
                }
                if ((this.bitField0_ & 2) == 2) {
                    codedOutputStream.writeInt32(2, this.end_);
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
                    i2 = 0 + CodedOutputStream.computeInt32Size(1, this.start_);
                }
                if ((this.bitField0_ & 2) == 2) {
                    i2 += CodedOutputStream.computeInt32Size(2, this.end_);
                }
                int serializedSize = i2 + getUnknownFields().getSerializedSize();
                this.memoizedSerializedSize = serializedSize;
                return serializedSize;
            }

            /* access modifiers changed from: protected */
            public Object writeReplace() throws ObjectStreamException {
                return super.writeReplace();
            }

            public static ExtensionRange parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return (ExtensionRange) PARSER.parseFrom(byteString);
            }

            public static ExtensionRange parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return (ExtensionRange) PARSER.parseFrom(byteString, extensionRegistryLite);
            }

            public static ExtensionRange parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return (ExtensionRange) PARSER.parseFrom(bArr);
            }

            public static ExtensionRange parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return (ExtensionRange) PARSER.parseFrom(bArr, extensionRegistryLite);
            }

            public static ExtensionRange parseFrom(InputStream inputStream) throws IOException {
                return (ExtensionRange) PARSER.parseFrom(inputStream);
            }

            public static ExtensionRange parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (ExtensionRange) PARSER.parseFrom(inputStream, extensionRegistryLite);
            }

            public static ExtensionRange parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (ExtensionRange) PARSER.parseDelimitedFrom(inputStream);
            }

            public static ExtensionRange parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (ExtensionRange) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
            }

            public static ExtensionRange parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (ExtensionRange) PARSER.parseFrom(codedInputStream);
            }

            public static ExtensionRange parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (ExtensionRange) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
            }

            public static Builder newBuilder() {
                return Builder.create();
            }

            public Builder newBuilderForType() {
                return newBuilder();
            }

            public static Builder newBuilder(ExtensionRange extensionRange) {
                return newBuilder().mergeFrom(extensionRange);
            }

            public Builder toBuilder() {
                return newBuilder(this);
            }

            /* access modifiers changed from: protected */
            public Builder newBuilderForType(BuilderParent builderParent) {
                return new Builder(builderParent);
            }
        }

        public interface ExtensionRangeOrBuilder extends MessageOrBuilder {
            int getEnd();

            int getStart();

            boolean hasEnd();

            boolean hasStart();
        }

        private DescriptorProto(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private DescriptorProto(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static DescriptorProto getDefaultInstance() {
            return defaultInstance;
        }

        public DescriptorProto getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        /* JADX WARNING: Code restructure failed: missing block: B:8:0x002b, code lost:
            r2 = r1;
            r1 = r0;
         */
        /* JADX WARNING: Removed duplicated region for block: B:73:0x0127  */
        /* JADX WARNING: Removed duplicated region for block: B:76:0x0133  */
        /* JADX WARNING: Removed duplicated region for block: B:79:0x013f  */
        /* JADX WARNING: Removed duplicated region for block: B:82:0x014b  */
        /* JADX WARNING: Removed duplicated region for block: B:85:0x0157  */
        /* JADX WARNING: Removed duplicated region for block: B:88:0x0165  */
        /* JADX WARNING: Unknown top exception splitter block from list: {B:92:0x0178=Splitter:B:92:0x0178, B:67:0x011d=Splitter:B:67:0x011d} */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        private DescriptorProto(com.google.protobuf.CodedInputStream r12, com.google.protobuf.ExtensionRegistryLite r13) throws com.google.protobuf.InvalidProtocolBufferException {
            /*
                r11 = this;
                r9 = 32
                r8 = 16
                r7 = 8
                r6 = 4
                r5 = 2
                r11.<init>()
                r0 = -1
                r11.memoizedIsInitialized = r0
                r0 = -1
                r11.memoizedSerializedSize = r0
                r11.initFields()
                r2 = 0
                com.google.protobuf.UnknownFieldSet$Builder r4 = com.google.protobuf.UnknownFieldSet.newBuilder()
                r1 = 0
            L_0x001a:
                if (r1 != 0) goto L_0x0186
                int r0 = r12.readTag()     // Catch:{ InvalidProtocolBufferException -> 0x011c, IOException -> 0x0177 }
                switch(r0) {
                    case 0: goto L_0x002e;
                    case 10: goto L_0x0031;
                    case 18: goto L_0x0040;
                    case 26: goto L_0x005c;
                    case 34: goto L_0x0078;
                    case 42: goto L_0x0094;
                    case 50: goto L_0x00b1;
                    case 58: goto L_0x00ce;
                    case 66: goto L_0x00fd;
                    default: goto L_0x0023;
                }     // Catch:{ InvalidProtocolBufferException -> 0x011c, IOException -> 0x0177 }
            L_0x0023:
                boolean r0 = r11.parseUnknownField(r12, r4, r13, r0)     // Catch:{ InvalidProtocolBufferException -> 0x011c, IOException -> 0x0177 }
                if (r0 != 0) goto L_0x01fd
                r0 = 1
                r1 = r2
            L_0x002b:
                r2 = r1
                r1 = r0
                goto L_0x001a
            L_0x002e:
                r0 = 1
                r1 = r2
                goto L_0x002b
            L_0x0031:
                com.google.protobuf.ByteString r0 = r12.readBytes()     // Catch:{ InvalidProtocolBufferException -> 0x011c, IOException -> 0x0177 }
                int r3 = r11.bitField0_     // Catch:{ InvalidProtocolBufferException -> 0x011c, IOException -> 0x0177 }
                r3 = r3 | 1
                r11.bitField0_ = r3     // Catch:{ InvalidProtocolBufferException -> 0x011c, IOException -> 0x0177 }
                r11.name_ = r0     // Catch:{ InvalidProtocolBufferException -> 0x011c, IOException -> 0x0177 }
                r0 = r1
                r1 = r2
                goto L_0x002b
            L_0x0040:
                r0 = r2 & 2
                if (r0 == r5) goto L_0x01fa
                java.util.ArrayList r0 = new java.util.ArrayList     // Catch:{ InvalidProtocolBufferException -> 0x011c, IOException -> 0x0177 }
                r0.<init>()     // Catch:{ InvalidProtocolBufferException -> 0x011c, IOException -> 0x0177 }
                r11.field_ = r0     // Catch:{ InvalidProtocolBufferException -> 0x011c, IOException -> 0x0177 }
                r0 = r2 | 2
            L_0x004d:
                java.util.List<com.google.protobuf.DescriptorProtos$FieldDescriptorProto> r2 = r11.field_     // Catch:{ InvalidProtocolBufferException -> 0x01e3, IOException -> 0x01df, all -> 0x01da }
                com.google.protobuf.Parser<com.google.protobuf.DescriptorProtos$FieldDescriptorProto> r3 = com.google.protobuf.DescriptorProtos.FieldDescriptorProto.PARSER     // Catch:{ InvalidProtocolBufferException -> 0x01e3, IOException -> 0x01df, all -> 0x01da }
                com.google.protobuf.MessageLite r3 = r12.readMessage(r3, r13)     // Catch:{ InvalidProtocolBufferException -> 0x01e3, IOException -> 0x01df, all -> 0x01da }
                r2.add(r3)     // Catch:{ InvalidProtocolBufferException -> 0x01e3, IOException -> 0x01df, all -> 0x01da }
                r10 = r1
                r1 = r0
                r0 = r10
                goto L_0x002b
            L_0x005c:
                r0 = r2 & 8
                if (r0 == r7) goto L_0x01f7
                java.util.ArrayList r0 = new java.util.ArrayList     // Catch:{ InvalidProtocolBufferException -> 0x011c, IOException -> 0x0177 }
                r0.<init>()     // Catch:{ InvalidProtocolBufferException -> 0x011c, IOException -> 0x0177 }
                r11.nestedType_ = r0     // Catch:{ InvalidProtocolBufferException -> 0x011c, IOException -> 0x0177 }
                r0 = r2 | 8
            L_0x0069:
                java.util.List<com.google.protobuf.DescriptorProtos$DescriptorProto> r2 = r11.nestedType_     // Catch:{ InvalidProtocolBufferException -> 0x01e3, IOException -> 0x01df, all -> 0x01da }
                com.google.protobuf.Parser<com.google.protobuf.DescriptorProtos$DescriptorProto> r3 = PARSER     // Catch:{ InvalidProtocolBufferException -> 0x01e3, IOException -> 0x01df, all -> 0x01da }
                com.google.protobuf.MessageLite r3 = r12.readMessage(r3, r13)     // Catch:{ InvalidProtocolBufferException -> 0x01e3, IOException -> 0x01df, all -> 0x01da }
                r2.add(r3)     // Catch:{ InvalidProtocolBufferException -> 0x01e3, IOException -> 0x01df, all -> 0x01da }
                r10 = r1
                r1 = r0
                r0 = r10
                goto L_0x002b
            L_0x0078:
                r0 = r2 & 16
                if (r0 == r8) goto L_0x01f4
                java.util.ArrayList r0 = new java.util.ArrayList     // Catch:{ InvalidProtocolBufferException -> 0x011c, IOException -> 0x0177 }
                r0.<init>()     // Catch:{ InvalidProtocolBufferException -> 0x011c, IOException -> 0x0177 }
                r11.enumType_ = r0     // Catch:{ InvalidProtocolBufferException -> 0x011c, IOException -> 0x0177 }
                r0 = r2 | 16
            L_0x0085:
                java.util.List<com.google.protobuf.DescriptorProtos$EnumDescriptorProto> r2 = r11.enumType_     // Catch:{ InvalidProtocolBufferException -> 0x01e3, IOException -> 0x01df, all -> 0x01da }
                com.google.protobuf.Parser<com.google.protobuf.DescriptorProtos$EnumDescriptorProto> r3 = com.google.protobuf.DescriptorProtos.EnumDescriptorProto.PARSER     // Catch:{ InvalidProtocolBufferException -> 0x01e3, IOException -> 0x01df, all -> 0x01da }
                com.google.protobuf.MessageLite r3 = r12.readMessage(r3, r13)     // Catch:{ InvalidProtocolBufferException -> 0x01e3, IOException -> 0x01df, all -> 0x01da }
                r2.add(r3)     // Catch:{ InvalidProtocolBufferException -> 0x01e3, IOException -> 0x01df, all -> 0x01da }
                r10 = r1
                r1 = r0
                r0 = r10
                goto L_0x002b
            L_0x0094:
                r0 = r2 & 32
                if (r0 == r9) goto L_0x01f1
                java.util.ArrayList r0 = new java.util.ArrayList     // Catch:{ InvalidProtocolBufferException -> 0x011c, IOException -> 0x0177 }
                r0.<init>()     // Catch:{ InvalidProtocolBufferException -> 0x011c, IOException -> 0x0177 }
                r11.extensionRange_ = r0     // Catch:{ InvalidProtocolBufferException -> 0x011c, IOException -> 0x0177 }
                r0 = r2 | 32
            L_0x00a1:
                java.util.List<com.google.protobuf.DescriptorProtos$DescriptorProto$ExtensionRange> r2 = r11.extensionRange_     // Catch:{ InvalidProtocolBufferException -> 0x01e3, IOException -> 0x01df, all -> 0x01da }
                com.google.protobuf.Parser<com.google.protobuf.DescriptorProtos$DescriptorProto$ExtensionRange> r3 = com.google.protobuf.DescriptorProtos.DescriptorProto.ExtensionRange.PARSER     // Catch:{ InvalidProtocolBufferException -> 0x01e3, IOException -> 0x01df, all -> 0x01da }
                com.google.protobuf.MessageLite r3 = r12.readMessage(r3, r13)     // Catch:{ InvalidProtocolBufferException -> 0x01e3, IOException -> 0x01df, all -> 0x01da }
                r2.add(r3)     // Catch:{ InvalidProtocolBufferException -> 0x01e3, IOException -> 0x01df, all -> 0x01da }
                r10 = r1
                r1 = r0
                r0 = r10
                goto L_0x002b
            L_0x00b1:
                r0 = r2 & 4
                if (r0 == r6) goto L_0x01ee
                java.util.ArrayList r0 = new java.util.ArrayList     // Catch:{ InvalidProtocolBufferException -> 0x011c, IOException -> 0x0177 }
                r0.<init>()     // Catch:{ InvalidProtocolBufferException -> 0x011c, IOException -> 0x0177 }
                r11.extension_ = r0     // Catch:{ InvalidProtocolBufferException -> 0x011c, IOException -> 0x0177 }
                r0 = r2 | 4
            L_0x00be:
                java.util.List<com.google.protobuf.DescriptorProtos$FieldDescriptorProto> r2 = r11.extension_     // Catch:{ InvalidProtocolBufferException -> 0x01e3, IOException -> 0x01df, all -> 0x01da }
                com.google.protobuf.Parser<com.google.protobuf.DescriptorProtos$FieldDescriptorProto> r3 = com.google.protobuf.DescriptorProtos.FieldDescriptorProto.PARSER     // Catch:{ InvalidProtocolBufferException -> 0x01e3, IOException -> 0x01df, all -> 0x01da }
                com.google.protobuf.MessageLite r3 = r12.readMessage(r3, r13)     // Catch:{ InvalidProtocolBufferException -> 0x01e3, IOException -> 0x01df, all -> 0x01da }
                r2.add(r3)     // Catch:{ InvalidProtocolBufferException -> 0x01e3, IOException -> 0x01df, all -> 0x01da }
                r10 = r1
                r1 = r0
                r0 = r10
                goto L_0x002b
            L_0x00ce:
                r0 = 0
                int r3 = r11.bitField0_     // Catch:{ InvalidProtocolBufferException -> 0x011c, IOException -> 0x0177 }
                r3 = r3 & 2
                if (r3 != r5) goto L_0x01eb
                com.google.protobuf.DescriptorProtos$MessageOptions r0 = r11.options_     // Catch:{ InvalidProtocolBufferException -> 0x011c, IOException -> 0x0177 }
                com.google.protobuf.DescriptorProtos$MessageOptions$Builder r0 = r0.toBuilder()     // Catch:{ InvalidProtocolBufferException -> 0x011c, IOException -> 0x0177 }
                r3 = r0
            L_0x00dc:
                com.google.protobuf.Parser<com.google.protobuf.DescriptorProtos$MessageOptions> r0 = com.google.protobuf.DescriptorProtos.MessageOptions.PARSER     // Catch:{ InvalidProtocolBufferException -> 0x011c, IOException -> 0x0177 }
                com.google.protobuf.MessageLite r0 = r12.readMessage(r0, r13)     // Catch:{ InvalidProtocolBufferException -> 0x011c, IOException -> 0x0177 }
                com.google.protobuf.DescriptorProtos$MessageOptions r0 = (com.google.protobuf.DescriptorProtos.MessageOptions) r0     // Catch:{ InvalidProtocolBufferException -> 0x011c, IOException -> 0x0177 }
                r11.options_ = r0     // Catch:{ InvalidProtocolBufferException -> 0x011c, IOException -> 0x0177 }
                if (r3 == 0) goto L_0x00f3
                com.google.protobuf.DescriptorProtos$MessageOptions r0 = r11.options_     // Catch:{ InvalidProtocolBufferException -> 0x011c, IOException -> 0x0177 }
                r3.mergeFrom(r0)     // Catch:{ InvalidProtocolBufferException -> 0x011c, IOException -> 0x0177 }
                com.google.protobuf.DescriptorProtos$MessageOptions r0 = r3.buildPartial()     // Catch:{ InvalidProtocolBufferException -> 0x011c, IOException -> 0x0177 }
                r11.options_ = r0     // Catch:{ InvalidProtocolBufferException -> 0x011c, IOException -> 0x0177 }
            L_0x00f3:
                int r0 = r11.bitField0_     // Catch:{ InvalidProtocolBufferException -> 0x011c, IOException -> 0x0177 }
                r0 = r0 | 2
                r11.bitField0_ = r0     // Catch:{ InvalidProtocolBufferException -> 0x011c, IOException -> 0x0177 }
                r0 = r1
                r1 = r2
                goto L_0x002b
            L_0x00fd:
                r0 = r2 & 64
                r3 = 64
                if (r0 == r3) goto L_0x01e8
                java.util.ArrayList r0 = new java.util.ArrayList     // Catch:{ InvalidProtocolBufferException -> 0x011c, IOException -> 0x0177 }
                r0.<init>()     // Catch:{ InvalidProtocolBufferException -> 0x011c, IOException -> 0x0177 }
                r11.oneofDecl_ = r0     // Catch:{ InvalidProtocolBufferException -> 0x011c, IOException -> 0x0177 }
                r0 = r2 | 64
            L_0x010c:
                java.util.List<com.google.protobuf.DescriptorProtos$OneofDescriptorProto> r2 = r11.oneofDecl_     // Catch:{ InvalidProtocolBufferException -> 0x01e3, IOException -> 0x01df, all -> 0x01da }
                com.google.protobuf.Parser<com.google.protobuf.DescriptorProtos$OneofDescriptorProto> r3 = com.google.protobuf.DescriptorProtos.OneofDescriptorProto.PARSER     // Catch:{ InvalidProtocolBufferException -> 0x01e3, IOException -> 0x01df, all -> 0x01da }
                com.google.protobuf.MessageLite r3 = r12.readMessage(r3, r13)     // Catch:{ InvalidProtocolBufferException -> 0x01e3, IOException -> 0x01df, all -> 0x01da }
                r2.add(r3)     // Catch:{ InvalidProtocolBufferException -> 0x01e3, IOException -> 0x01df, all -> 0x01da }
                r10 = r1
                r1 = r0
                r0 = r10
                goto L_0x002b
            L_0x011c:
                r0 = move-exception
            L_0x011d:
                com.google.protobuf.InvalidProtocolBufferException r0 = r0.setUnfinishedMessage(r11)     // Catch:{ all -> 0x0122 }
                throw r0     // Catch:{ all -> 0x0122 }
            L_0x0122:
                r0 = move-exception
            L_0x0123:
                r1 = r2 & 2
                if (r1 != r5) goto L_0x012f
                java.util.List<com.google.protobuf.DescriptorProtos$FieldDescriptorProto> r1 = r11.field_
                java.util.List r1 = java.util.Collections.unmodifiableList(r1)
                r11.field_ = r1
            L_0x012f:
                r1 = r2 & 8
                if (r1 != r7) goto L_0x013b
                java.util.List<com.google.protobuf.DescriptorProtos$DescriptorProto> r1 = r11.nestedType_
                java.util.List r1 = java.util.Collections.unmodifiableList(r1)
                r11.nestedType_ = r1
            L_0x013b:
                r1 = r2 & 16
                if (r1 != r8) goto L_0x0147
                java.util.List<com.google.protobuf.DescriptorProtos$EnumDescriptorProto> r1 = r11.enumType_
                java.util.List r1 = java.util.Collections.unmodifiableList(r1)
                r11.enumType_ = r1
            L_0x0147:
                r1 = r2 & 32
                if (r1 != r9) goto L_0x0153
                java.util.List<com.google.protobuf.DescriptorProtos$DescriptorProto$ExtensionRange> r1 = r11.extensionRange_
                java.util.List r1 = java.util.Collections.unmodifiableList(r1)
                r11.extensionRange_ = r1
            L_0x0153:
                r1 = r2 & 4
                if (r1 != r6) goto L_0x015f
                java.util.List<com.google.protobuf.DescriptorProtos$FieldDescriptorProto> r1 = r11.extension_
                java.util.List r1 = java.util.Collections.unmodifiableList(r1)
                r11.extension_ = r1
            L_0x015f:
                r1 = r2 & 64
                r2 = 64
                if (r1 != r2) goto L_0x016d
                java.util.List<com.google.protobuf.DescriptorProtos$OneofDescriptorProto> r1 = r11.oneofDecl_
                java.util.List r1 = java.util.Collections.unmodifiableList(r1)
                r11.oneofDecl_ = r1
            L_0x016d:
                com.google.protobuf.UnknownFieldSet r1 = r4.build()
                r11.unknownFields = r1
                r11.makeExtensionsImmutable()
                throw r0
            L_0x0177:
                r0 = move-exception
            L_0x0178:
                com.google.protobuf.InvalidProtocolBufferException r1 = new com.google.protobuf.InvalidProtocolBufferException     // Catch:{ all -> 0x0122 }
                java.lang.String r0 = r0.getMessage()     // Catch:{ all -> 0x0122 }
                r1.<init>(r0)     // Catch:{ all -> 0x0122 }
                com.google.protobuf.InvalidProtocolBufferException r0 = r1.setUnfinishedMessage(r11)     // Catch:{ all -> 0x0122 }
                throw r0     // Catch:{ all -> 0x0122 }
            L_0x0186:
                r0 = r2 & 2
                if (r0 != r5) goto L_0x0192
                java.util.List<com.google.protobuf.DescriptorProtos$FieldDescriptorProto> r0 = r11.field_
                java.util.List r0 = java.util.Collections.unmodifiableList(r0)
                r11.field_ = r0
            L_0x0192:
                r0 = r2 & 8
                if (r0 != r7) goto L_0x019e
                java.util.List<com.google.protobuf.DescriptorProtos$DescriptorProto> r0 = r11.nestedType_
                java.util.List r0 = java.util.Collections.unmodifiableList(r0)
                r11.nestedType_ = r0
            L_0x019e:
                r0 = r2 & 16
                if (r0 != r8) goto L_0x01aa
                java.util.List<com.google.protobuf.DescriptorProtos$EnumDescriptorProto> r0 = r11.enumType_
                java.util.List r0 = java.util.Collections.unmodifiableList(r0)
                r11.enumType_ = r0
            L_0x01aa:
                r0 = r2 & 32
                if (r0 != r9) goto L_0x01b6
                java.util.List<com.google.protobuf.DescriptorProtos$DescriptorProto$ExtensionRange> r0 = r11.extensionRange_
                java.util.List r0 = java.util.Collections.unmodifiableList(r0)
                r11.extensionRange_ = r0
            L_0x01b6:
                r0 = r2 & 4
                if (r0 != r6) goto L_0x01c2
                java.util.List<com.google.protobuf.DescriptorProtos$FieldDescriptorProto> r0 = r11.extension_
                java.util.List r0 = java.util.Collections.unmodifiableList(r0)
                r11.extension_ = r0
            L_0x01c2:
                r0 = r2 & 64
                r1 = 64
                if (r0 != r1) goto L_0x01d0
                java.util.List<com.google.protobuf.DescriptorProtos$OneofDescriptorProto> r0 = r11.oneofDecl_
                java.util.List r0 = java.util.Collections.unmodifiableList(r0)
                r11.oneofDecl_ = r0
            L_0x01d0:
                com.google.protobuf.UnknownFieldSet r0 = r4.build()
                r11.unknownFields = r0
                r11.makeExtensionsImmutable()
                return
            L_0x01da:
                r1 = move-exception
                r2 = r0
                r0 = r1
                goto L_0x0123
            L_0x01df:
                r1 = move-exception
                r2 = r0
                r0 = r1
                goto L_0x0178
            L_0x01e3:
                r1 = move-exception
                r2 = r0
                r0 = r1
                goto L_0x011d
            L_0x01e8:
                r0 = r2
                goto L_0x010c
            L_0x01eb:
                r3 = r0
                goto L_0x00dc
            L_0x01ee:
                r0 = r2
                goto L_0x00be
            L_0x01f1:
                r0 = r2
                goto L_0x00a1
            L_0x01f4:
                r0 = r2
                goto L_0x0085
            L_0x01f7:
                r0 = r2
                goto L_0x0069
            L_0x01fa:
                r0 = r2
                goto L_0x004d
            L_0x01fd:
                r0 = r1
                r1 = r2
                goto L_0x002b
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.DescriptorProtos.DescriptorProto.<init>(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):void");
        }

        public static final Descriptor getDescriptor() {
            return DescriptorProtos.internal_static_google_protobuf_DescriptorProto_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return DescriptorProtos.internal_static_google_protobuf_DescriptorProto_fieldAccessorTable.ensureFieldAccessorsInitialized(DescriptorProto.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<DescriptorProto> getParserForType() {
            return PARSER;
        }

        public boolean hasName() {
            return (this.bitField0_ & 1) == 1;
        }

        public String getName() {
            Object obj = this.name_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.name_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getNameBytes() {
            Object obj = this.name_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.name_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public List<FieldDescriptorProto> getFieldList() {
            return this.field_;
        }

        public List<? extends FieldDescriptorProtoOrBuilder> getFieldOrBuilderList() {
            return this.field_;
        }

        public int getFieldCount() {
            return this.field_.size();
        }

        public FieldDescriptorProto getField(int i) {
            return (FieldDescriptorProto) this.field_.get(i);
        }

        public FieldDescriptorProtoOrBuilder getFieldOrBuilder(int i) {
            return (FieldDescriptorProtoOrBuilder) this.field_.get(i);
        }

        public List<FieldDescriptorProto> getExtensionList() {
            return this.extension_;
        }

        public List<? extends FieldDescriptorProtoOrBuilder> getExtensionOrBuilderList() {
            return this.extension_;
        }

        public int getExtensionCount() {
            return this.extension_.size();
        }

        public FieldDescriptorProto getExtension(int i) {
            return (FieldDescriptorProto) this.extension_.get(i);
        }

        public FieldDescriptorProtoOrBuilder getExtensionOrBuilder(int i) {
            return (FieldDescriptorProtoOrBuilder) this.extension_.get(i);
        }

        public List<DescriptorProto> getNestedTypeList() {
            return this.nestedType_;
        }

        public List<? extends DescriptorProtoOrBuilder> getNestedTypeOrBuilderList() {
            return this.nestedType_;
        }

        public int getNestedTypeCount() {
            return this.nestedType_.size();
        }

        public DescriptorProto getNestedType(int i) {
            return (DescriptorProto) this.nestedType_.get(i);
        }

        public DescriptorProtoOrBuilder getNestedTypeOrBuilder(int i) {
            return (DescriptorProtoOrBuilder) this.nestedType_.get(i);
        }

        public List<EnumDescriptorProto> getEnumTypeList() {
            return this.enumType_;
        }

        public List<? extends EnumDescriptorProtoOrBuilder> getEnumTypeOrBuilderList() {
            return this.enumType_;
        }

        public int getEnumTypeCount() {
            return this.enumType_.size();
        }

        public EnumDescriptorProto getEnumType(int i) {
            return (EnumDescriptorProto) this.enumType_.get(i);
        }

        public EnumDescriptorProtoOrBuilder getEnumTypeOrBuilder(int i) {
            return (EnumDescriptorProtoOrBuilder) this.enumType_.get(i);
        }

        public List<ExtensionRange> getExtensionRangeList() {
            return this.extensionRange_;
        }

        public List<? extends ExtensionRangeOrBuilder> getExtensionRangeOrBuilderList() {
            return this.extensionRange_;
        }

        public int getExtensionRangeCount() {
            return this.extensionRange_.size();
        }

        public ExtensionRange getExtensionRange(int i) {
            return (ExtensionRange) this.extensionRange_.get(i);
        }

        public ExtensionRangeOrBuilder getExtensionRangeOrBuilder(int i) {
            return (ExtensionRangeOrBuilder) this.extensionRange_.get(i);
        }

        public List<OneofDescriptorProto> getOneofDeclList() {
            return this.oneofDecl_;
        }

        public List<? extends OneofDescriptorProtoOrBuilder> getOneofDeclOrBuilderList() {
            return this.oneofDecl_;
        }

        public int getOneofDeclCount() {
            return this.oneofDecl_.size();
        }

        public OneofDescriptorProto getOneofDecl(int i) {
            return (OneofDescriptorProto) this.oneofDecl_.get(i);
        }

        public OneofDescriptorProtoOrBuilder getOneofDeclOrBuilder(int i) {
            return (OneofDescriptorProtoOrBuilder) this.oneofDecl_.get(i);
        }

        public boolean hasOptions() {
            return (this.bitField0_ & 2) == 2;
        }

        public MessageOptions getOptions() {
            return this.options_;
        }

        public MessageOptionsOrBuilder getOptionsOrBuilder() {
            return this.options_;
        }

        private void initFields() {
            this.name_ = "";
            this.field_ = Collections.emptyList();
            this.extension_ = Collections.emptyList();
            this.nestedType_ = Collections.emptyList();
            this.enumType_ = Collections.emptyList();
            this.extensionRange_ = Collections.emptyList();
            this.oneofDecl_ = Collections.emptyList();
            this.options_ = MessageOptions.getDefaultInstance();
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            for (int i = 0; i < getFieldCount(); i++) {
                if (!getField(i).isInitialized()) {
                    this.memoizedIsInitialized = 0;
                    return false;
                }
            }
            for (int i2 = 0; i2 < getExtensionCount(); i2++) {
                if (!getExtension(i2).isInitialized()) {
                    this.memoizedIsInitialized = 0;
                    return false;
                }
            }
            for (int i3 = 0; i3 < getNestedTypeCount(); i3++) {
                if (!getNestedType(i3).isInitialized()) {
                    this.memoizedIsInitialized = 0;
                    return false;
                }
            }
            for (int i4 = 0; i4 < getEnumTypeCount(); i4++) {
                if (!getEnumType(i4).isInitialized()) {
                    this.memoizedIsInitialized = 0;
                    return false;
                }
            }
            if (!hasOptions() || getOptions().isInitialized()) {
                this.memoizedIsInitialized = 1;
                return true;
            }
            this.memoizedIsInitialized = 0;
            return false;
        }

        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeBytes(1, getNameBytes());
            }
            for (int i = 0; i < this.field_.size(); i++) {
                codedOutputStream.writeMessage(2, (MessageLite) this.field_.get(i));
            }
            for (int i2 = 0; i2 < this.nestedType_.size(); i2++) {
                codedOutputStream.writeMessage(3, (MessageLite) this.nestedType_.get(i2));
            }
            for (int i3 = 0; i3 < this.enumType_.size(); i3++) {
                codedOutputStream.writeMessage(4, (MessageLite) this.enumType_.get(i3));
            }
            for (int i4 = 0; i4 < this.extensionRange_.size(); i4++) {
                codedOutputStream.writeMessage(5, (MessageLite) this.extensionRange_.get(i4));
            }
            for (int i5 = 0; i5 < this.extension_.size(); i5++) {
                codedOutputStream.writeMessage(6, (MessageLite) this.extension_.get(i5));
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeMessage(7, this.options_);
            }
            for (int i6 = 0; i6 < this.oneofDecl_.size(); i6++) {
                codedOutputStream.writeMessage(8, (MessageLite) this.oneofDecl_.get(i6));
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
                i = CodedOutputStream.computeBytesSize(1, getNameBytes()) + 0;
            } else {
                i = 0;
            }
            int i3 = i;
            for (int i4 = 0; i4 < this.field_.size(); i4++) {
                i3 += CodedOutputStream.computeMessageSize(2, (MessageLite) this.field_.get(i4));
            }
            for (int i5 = 0; i5 < this.nestedType_.size(); i5++) {
                i3 += CodedOutputStream.computeMessageSize(3, (MessageLite) this.nestedType_.get(i5));
            }
            for (int i6 = 0; i6 < this.enumType_.size(); i6++) {
                i3 += CodedOutputStream.computeMessageSize(4, (MessageLite) this.enumType_.get(i6));
            }
            for (int i7 = 0; i7 < this.extensionRange_.size(); i7++) {
                i3 += CodedOutputStream.computeMessageSize(5, (MessageLite) this.extensionRange_.get(i7));
            }
            for (int i8 = 0; i8 < this.extension_.size(); i8++) {
                i3 += CodedOutputStream.computeMessageSize(6, (MessageLite) this.extension_.get(i8));
            }
            if ((this.bitField0_ & 2) == 2) {
                i3 += CodedOutputStream.computeMessageSize(7, this.options_);
            }
            for (int i9 = 0; i9 < this.oneofDecl_.size(); i9++) {
                i3 += CodedOutputStream.computeMessageSize(8, (MessageLite) this.oneofDecl_.get(i9));
            }
            int serializedSize = getUnknownFields().getSerializedSize() + i3;
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static DescriptorProto parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (DescriptorProto) PARSER.parseFrom(byteString);
        }

        public static DescriptorProto parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (DescriptorProto) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static DescriptorProto parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (DescriptorProto) PARSER.parseFrom(bArr);
        }

        public static DescriptorProto parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (DescriptorProto) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static DescriptorProto parseFrom(InputStream inputStream) throws IOException {
            return (DescriptorProto) PARSER.parseFrom(inputStream);
        }

        public static DescriptorProto parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (DescriptorProto) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static DescriptorProto parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (DescriptorProto) PARSER.parseDelimitedFrom(inputStream);
        }

        public static DescriptorProto parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (DescriptorProto) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static DescriptorProto parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (DescriptorProto) PARSER.parseFrom(codedInputStream);
        }

        public static DescriptorProto parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (DescriptorProto) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(DescriptorProto descriptorProto) {
            return newBuilder().mergeFrom(descriptorProto);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface DescriptorProtoOrBuilder extends MessageOrBuilder {
        EnumDescriptorProto getEnumType(int i);

        int getEnumTypeCount();

        List<EnumDescriptorProto> getEnumTypeList();

        EnumDescriptorProtoOrBuilder getEnumTypeOrBuilder(int i);

        List<? extends EnumDescriptorProtoOrBuilder> getEnumTypeOrBuilderList();

        FieldDescriptorProto getExtension(int i);

        int getExtensionCount();

        List<FieldDescriptorProto> getExtensionList();

        FieldDescriptorProtoOrBuilder getExtensionOrBuilder(int i);

        List<? extends FieldDescriptorProtoOrBuilder> getExtensionOrBuilderList();

        ExtensionRange getExtensionRange(int i);

        int getExtensionRangeCount();

        List<ExtensionRange> getExtensionRangeList();

        ExtensionRangeOrBuilder getExtensionRangeOrBuilder(int i);

        List<? extends ExtensionRangeOrBuilder> getExtensionRangeOrBuilderList();

        FieldDescriptorProto getField(int i);

        int getFieldCount();

        List<FieldDescriptorProto> getFieldList();

        FieldDescriptorProtoOrBuilder getFieldOrBuilder(int i);

        List<? extends FieldDescriptorProtoOrBuilder> getFieldOrBuilderList();

        String getName();

        ByteString getNameBytes();

        DescriptorProto getNestedType(int i);

        int getNestedTypeCount();

        List<DescriptorProto> getNestedTypeList();

        DescriptorProtoOrBuilder getNestedTypeOrBuilder(int i);

        List<? extends DescriptorProtoOrBuilder> getNestedTypeOrBuilderList();

        OneofDescriptorProto getOneofDecl(int i);

        int getOneofDeclCount();

        List<OneofDescriptorProto> getOneofDeclList();

        OneofDescriptorProtoOrBuilder getOneofDeclOrBuilder(int i);

        List<? extends OneofDescriptorProtoOrBuilder> getOneofDeclOrBuilderList();

        MessageOptions getOptions();

        MessageOptionsOrBuilder getOptionsOrBuilder();

        boolean hasName();

        boolean hasOptions();
    }

    public static final class EnumDescriptorProto extends GeneratedMessage implements EnumDescriptorProtoOrBuilder {
        public static final int NAME_FIELD_NUMBER = 1;
        public static final int OPTIONS_FIELD_NUMBER = 3;
        public static Parser<EnumDescriptorProto> PARSER = new AbstractParser<EnumDescriptorProto>() {
            public EnumDescriptorProto parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new EnumDescriptorProto(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int VALUE_FIELD_NUMBER = 2;
        private static final EnumDescriptorProto defaultInstance = new EnumDescriptorProto(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public Object name_;
        /* access modifiers changed from: private */
        public EnumOptions options_;
        private final UnknownFieldSet unknownFields;
        /* access modifiers changed from: private */
        public List<EnumValueDescriptorProto> value_;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements EnumDescriptorProtoOrBuilder {
            private int bitField0_;
            private Object name_;
            private SingleFieldBuilder<EnumOptions, Builder, EnumOptionsOrBuilder> optionsBuilder_;
            private EnumOptions options_;
            private RepeatedFieldBuilder<EnumValueDescriptorProto, Builder, EnumValueDescriptorProtoOrBuilder> valueBuilder_;
            private List<EnumValueDescriptorProto> value_;

            public static final Descriptor getDescriptor() {
                return DescriptorProtos.internal_static_google_protobuf_EnumDescriptorProto_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return DescriptorProtos.internal_static_google_protobuf_EnumDescriptorProto_fieldAccessorTable.ensureFieldAccessorsInitialized(EnumDescriptorProto.class, Builder.class);
            }

            private Builder() {
                this.name_ = "";
                this.value_ = Collections.emptyList();
                this.options_ = EnumOptions.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.name_ = "";
                this.value_ = Collections.emptyList();
                this.options_ = EnumOptions.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    getValueFieldBuilder();
                    getOptionsFieldBuilder();
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.name_ = "";
                this.bitField0_ &= -2;
                if (this.valueBuilder_ == null) {
                    this.value_ = Collections.emptyList();
                    this.bitField0_ &= -3;
                } else {
                    this.valueBuilder_.clear();
                }
                if (this.optionsBuilder_ == null) {
                    this.options_ = EnumOptions.getDefaultInstance();
                } else {
                    this.optionsBuilder_.clear();
                }
                this.bitField0_ &= -5;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return DescriptorProtos.internal_static_google_protobuf_EnumDescriptorProto_descriptor;
            }

            public EnumDescriptorProto getDefaultInstanceForType() {
                return EnumDescriptorProto.getDefaultInstance();
            }

            public EnumDescriptorProto build() {
                EnumDescriptorProto buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public EnumDescriptorProto buildPartial() {
                int i;
                int i2 = 1;
                EnumDescriptorProto enumDescriptorProto = new EnumDescriptorProto((com.google.protobuf.GeneratedMessage.Builder) this);
                int i3 = this.bitField0_;
                if ((i3 & 1) != 1) {
                    i2 = 0;
                }
                enumDescriptorProto.name_ = this.name_;
                if (this.valueBuilder_ == null) {
                    if ((this.bitField0_ & 2) == 2) {
                        this.value_ = Collections.unmodifiableList(this.value_);
                        this.bitField0_ &= -3;
                    }
                    enumDescriptorProto.value_ = this.value_;
                } else {
                    enumDescriptorProto.value_ = this.valueBuilder_.build();
                }
                if ((i3 & 4) == 4) {
                    i = i2 | 2;
                } else {
                    i = i2;
                }
                if (this.optionsBuilder_ == null) {
                    enumDescriptorProto.options_ = this.options_;
                } else {
                    enumDescriptorProto.options_ = (EnumOptions) this.optionsBuilder_.build();
                }
                enumDescriptorProto.bitField0_ = i;
                onBuilt();
                return enumDescriptorProto;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof EnumDescriptorProto) {
                    return mergeFrom((EnumDescriptorProto) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(EnumDescriptorProto enumDescriptorProto) {
                RepeatedFieldBuilder<EnumValueDescriptorProto, Builder, EnumValueDescriptorProtoOrBuilder> repeatedFieldBuilder = null;
                if (enumDescriptorProto != EnumDescriptorProto.getDefaultInstance()) {
                    if (enumDescriptorProto.hasName()) {
                        this.bitField0_ |= 1;
                        this.name_ = enumDescriptorProto.name_;
                        onChanged();
                    }
                    if (this.valueBuilder_ == null) {
                        if (!enumDescriptorProto.value_.isEmpty()) {
                            if (this.value_.isEmpty()) {
                                this.value_ = enumDescriptorProto.value_;
                                this.bitField0_ &= -3;
                            } else {
                                ensureValueIsMutable();
                                this.value_.addAll(enumDescriptorProto.value_);
                            }
                            onChanged();
                        }
                    } else if (!enumDescriptorProto.value_.isEmpty()) {
                        if (this.valueBuilder_.isEmpty()) {
                            this.valueBuilder_.dispose();
                            this.valueBuilder_ = null;
                            this.value_ = enumDescriptorProto.value_;
                            this.bitField0_ &= -3;
                            if (GeneratedMessage.alwaysUseFieldBuilders) {
                                repeatedFieldBuilder = getValueFieldBuilder();
                            }
                            this.valueBuilder_ = repeatedFieldBuilder;
                        } else {
                            this.valueBuilder_.addAllMessages(enumDescriptorProto.value_);
                        }
                    }
                    if (enumDescriptorProto.hasOptions()) {
                        mergeOptions(enumDescriptorProto.getOptions());
                    }
                    mergeUnknownFields(enumDescriptorProto.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                for (int i = 0; i < getValueCount(); i++) {
                    if (!getValue(i).isInitialized()) {
                        return false;
                    }
                }
                if (!hasOptions() || getOptions().isInitialized()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                EnumDescriptorProto enumDescriptorProto;
                EnumDescriptorProto enumDescriptorProto2;
                try {
                    EnumDescriptorProto enumDescriptorProto3 = (EnumDescriptorProto) EnumDescriptorProto.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (enumDescriptorProto3 != null) {
                        mergeFrom(enumDescriptorProto3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    enumDescriptorProto2 = (EnumDescriptorProto) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    enumDescriptorProto = enumDescriptorProto2;
                    th = th2;
                }
                if (enumDescriptorProto != null) {
                    mergeFrom(enumDescriptorProto);
                }
                throw th;
            }

            public boolean hasName() {
                return (this.bitField0_ & 1) == 1;
            }

            public String getName() {
                Object obj = this.name_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.name_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getNameBytes() {
                Object obj = this.name_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.name_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setName(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.name_ = str;
                onChanged();
                return this;
            }

            public Builder clearName() {
                this.bitField0_ &= -2;
                this.name_ = EnumDescriptorProto.getDefaultInstance().getName();
                onChanged();
                return this;
            }

            public Builder setNameBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.name_ = byteString;
                onChanged();
                return this;
            }

            private void ensureValueIsMutable() {
                if ((this.bitField0_ & 2) != 2) {
                    this.value_ = new ArrayList(this.value_);
                    this.bitField0_ |= 2;
                }
            }

            public List<EnumValueDescriptorProto> getValueList() {
                if (this.valueBuilder_ == null) {
                    return Collections.unmodifiableList(this.value_);
                }
                return this.valueBuilder_.getMessageList();
            }

            public int getValueCount() {
                if (this.valueBuilder_ == null) {
                    return this.value_.size();
                }
                return this.valueBuilder_.getCount();
            }

            public EnumValueDescriptorProto getValue(int i) {
                if (this.valueBuilder_ == null) {
                    return (EnumValueDescriptorProto) this.value_.get(i);
                }
                return (EnumValueDescriptorProto) this.valueBuilder_.getMessage(i);
            }

            public Builder setValue(int i, EnumValueDescriptorProto enumValueDescriptorProto) {
                if (this.valueBuilder_ != null) {
                    this.valueBuilder_.setMessage(i, enumValueDescriptorProto);
                } else if (enumValueDescriptorProto == null) {
                    throw new NullPointerException();
                } else {
                    ensureValueIsMutable();
                    this.value_.set(i, enumValueDescriptorProto);
                    onChanged();
                }
                return this;
            }

            public Builder setValue(int i, Builder builder) {
                if (this.valueBuilder_ == null) {
                    ensureValueIsMutable();
                    this.value_.set(i, builder.build());
                    onChanged();
                } else {
                    this.valueBuilder_.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addValue(EnumValueDescriptorProto enumValueDescriptorProto) {
                if (this.valueBuilder_ != null) {
                    this.valueBuilder_.addMessage(enumValueDescriptorProto);
                } else if (enumValueDescriptorProto == null) {
                    throw new NullPointerException();
                } else {
                    ensureValueIsMutable();
                    this.value_.add(enumValueDescriptorProto);
                    onChanged();
                }
                return this;
            }

            public Builder addValue(int i, EnumValueDescriptorProto enumValueDescriptorProto) {
                if (this.valueBuilder_ != null) {
                    this.valueBuilder_.addMessage(i, enumValueDescriptorProto);
                } else if (enumValueDescriptorProto == null) {
                    throw new NullPointerException();
                } else {
                    ensureValueIsMutable();
                    this.value_.add(i, enumValueDescriptorProto);
                    onChanged();
                }
                return this;
            }

            public Builder addValue(Builder builder) {
                if (this.valueBuilder_ == null) {
                    ensureValueIsMutable();
                    this.value_.add(builder.build());
                    onChanged();
                } else {
                    this.valueBuilder_.addMessage(builder.build());
                }
                return this;
            }

            public Builder addValue(int i, Builder builder) {
                if (this.valueBuilder_ == null) {
                    ensureValueIsMutable();
                    this.value_.add(i, builder.build());
                    onChanged();
                } else {
                    this.valueBuilder_.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllValue(Iterable<? extends EnumValueDescriptorProto> iterable) {
                if (this.valueBuilder_ == null) {
                    ensureValueIsMutable();
                    com.google.protobuf.AbstractMessageLite.Builder.addAll(iterable, this.value_);
                    onChanged();
                } else {
                    this.valueBuilder_.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearValue() {
                if (this.valueBuilder_ == null) {
                    this.value_ = Collections.emptyList();
                    this.bitField0_ &= -3;
                    onChanged();
                } else {
                    this.valueBuilder_.clear();
                }
                return this;
            }

            public Builder removeValue(int i) {
                if (this.valueBuilder_ == null) {
                    ensureValueIsMutable();
                    this.value_.remove(i);
                    onChanged();
                } else {
                    this.valueBuilder_.remove(i);
                }
                return this;
            }

            public Builder getValueBuilder(int i) {
                return (Builder) getValueFieldBuilder().getBuilder(i);
            }

            public EnumValueDescriptorProtoOrBuilder getValueOrBuilder(int i) {
                if (this.valueBuilder_ == null) {
                    return (EnumValueDescriptorProtoOrBuilder) this.value_.get(i);
                }
                return (EnumValueDescriptorProtoOrBuilder) this.valueBuilder_.getMessageOrBuilder(i);
            }

            public List<? extends EnumValueDescriptorProtoOrBuilder> getValueOrBuilderList() {
                if (this.valueBuilder_ != null) {
                    return this.valueBuilder_.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.value_);
            }

            public Builder addValueBuilder() {
                return (Builder) getValueFieldBuilder().addBuilder(EnumValueDescriptorProto.getDefaultInstance());
            }

            public Builder addValueBuilder(int i) {
                return (Builder) getValueFieldBuilder().addBuilder(i, EnumValueDescriptorProto.getDefaultInstance());
            }

            public List<Builder> getValueBuilderList() {
                return getValueFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<EnumValueDescriptorProto, Builder, EnumValueDescriptorProtoOrBuilder> getValueFieldBuilder() {
                if (this.valueBuilder_ == null) {
                    this.valueBuilder_ = new RepeatedFieldBuilder<>(this.value_, (this.bitField0_ & 2) == 2, getParentForChildren(), isClean());
                    this.value_ = null;
                }
                return this.valueBuilder_;
            }

            public boolean hasOptions() {
                return (this.bitField0_ & 4) == 4;
            }

            public EnumOptions getOptions() {
                if (this.optionsBuilder_ == null) {
                    return this.options_;
                }
                return (EnumOptions) this.optionsBuilder_.getMessage();
            }

            public Builder setOptions(EnumOptions enumOptions) {
                if (this.optionsBuilder_ != null) {
                    this.optionsBuilder_.setMessage(enumOptions);
                } else if (enumOptions == null) {
                    throw new NullPointerException();
                } else {
                    this.options_ = enumOptions;
                    onChanged();
                }
                this.bitField0_ |= 4;
                return this;
            }

            public Builder setOptions(Builder builder) {
                if (this.optionsBuilder_ == null) {
                    this.options_ = builder.build();
                    onChanged();
                } else {
                    this.optionsBuilder_.setMessage(builder.build());
                }
                this.bitField0_ |= 4;
                return this;
            }

            public Builder mergeOptions(EnumOptions enumOptions) {
                if (this.optionsBuilder_ == null) {
                    if ((this.bitField0_ & 4) != 4 || this.options_ == EnumOptions.getDefaultInstance()) {
                        this.options_ = enumOptions;
                    } else {
                        this.options_ = EnumOptions.newBuilder(this.options_).mergeFrom(enumOptions).buildPartial();
                    }
                    onChanged();
                } else {
                    this.optionsBuilder_.mergeFrom(enumOptions);
                }
                this.bitField0_ |= 4;
                return this;
            }

            public Builder clearOptions() {
                if (this.optionsBuilder_ == null) {
                    this.options_ = EnumOptions.getDefaultInstance();
                    onChanged();
                } else {
                    this.optionsBuilder_.clear();
                }
                this.bitField0_ &= -5;
                return this;
            }

            public Builder getOptionsBuilder() {
                this.bitField0_ |= 4;
                onChanged();
                return (Builder) getOptionsFieldBuilder().getBuilder();
            }

            public EnumOptionsOrBuilder getOptionsOrBuilder() {
                if (this.optionsBuilder_ != null) {
                    return (EnumOptionsOrBuilder) this.optionsBuilder_.getMessageOrBuilder();
                }
                return this.options_;
            }

            private SingleFieldBuilder<EnumOptions, Builder, EnumOptionsOrBuilder> getOptionsFieldBuilder() {
                if (this.optionsBuilder_ == null) {
                    this.optionsBuilder_ = new SingleFieldBuilder<>(getOptions(), getParentForChildren(), isClean());
                    this.options_ = null;
                }
                return this.optionsBuilder_;
            }
        }

        private EnumDescriptorProto(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private EnumDescriptorProto(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static EnumDescriptorProto getDefaultInstance() {
            return defaultInstance;
        }

        public EnumDescriptorProto getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        /* JADX WARNING: Code restructure failed: missing block: B:8:0x0024, code lost:
            r3 = r2;
            r2 = r0;
         */
        /* JADX WARNING: Removed duplicated region for block: B:35:0x008e  */
        /* JADX WARNING: Unknown top exception splitter block from list: {B:39:0x00a1=Splitter:B:39:0x00a1, B:29:0x0084=Splitter:B:29:0x0084} */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        private EnumDescriptorProto(com.google.protobuf.CodedInputStream r9, com.google.protobuf.ExtensionRegistryLite r10) throws com.google.protobuf.InvalidProtocolBufferException {
            /*
                r8 = this;
                r1 = 1
                r2 = 0
                r0 = -1
                r6 = 2
                r8.<init>()
                r8.memoizedIsInitialized = r0
                r8.memoizedSerializedSize = r0
                r8.initFields()
                com.google.protobuf.UnknownFieldSet$Builder r5 = com.google.protobuf.UnknownFieldSet.newBuilder()
                r3 = r2
            L_0x0013:
                if (r2 != 0) goto L_0x00af
                int r0 = r9.readTag()     // Catch:{ InvalidProtocolBufferException -> 0x0083, IOException -> 0x00a0 }
                switch(r0) {
                    case 0: goto L_0x0027;
                    case 10: goto L_0x002a;
                    case 18: goto L_0x0039;
                    case 26: goto L_0x0055;
                    default: goto L_0x001c;
                }     // Catch:{ InvalidProtocolBufferException -> 0x0083, IOException -> 0x00a0 }
            L_0x001c:
                boolean r0 = r8.parseUnknownField(r9, r5, r10, r0)     // Catch:{ InvalidProtocolBufferException -> 0x0083, IOException -> 0x00a0 }
                if (r0 != 0) goto L_0x00d6
                r0 = r1
                r2 = r3
            L_0x0024:
                r3 = r2
                r2 = r0
                goto L_0x0013
            L_0x0027:
                r0 = r1
                r2 = r3
                goto L_0x0024
            L_0x002a:
                com.google.protobuf.ByteString r0 = r9.readBytes()     // Catch:{ InvalidProtocolBufferException -> 0x0083, IOException -> 0x00a0 }
                int r4 = r8.bitField0_     // Catch:{ InvalidProtocolBufferException -> 0x0083, IOException -> 0x00a0 }
                r4 = r4 | 1
                r8.bitField0_ = r4     // Catch:{ InvalidProtocolBufferException -> 0x0083, IOException -> 0x00a0 }
                r8.name_ = r0     // Catch:{ InvalidProtocolBufferException -> 0x0083, IOException -> 0x00a0 }
                r0 = r2
                r2 = r3
                goto L_0x0024
            L_0x0039:
                r0 = r3 & 2
                if (r0 == r6) goto L_0x00d3
                java.util.ArrayList r0 = new java.util.ArrayList     // Catch:{ InvalidProtocolBufferException -> 0x0083, IOException -> 0x00a0 }
                r0.<init>()     // Catch:{ InvalidProtocolBufferException -> 0x0083, IOException -> 0x00a0 }
                r8.value_ = r0     // Catch:{ InvalidProtocolBufferException -> 0x0083, IOException -> 0x00a0 }
                r0 = r3 | 2
            L_0x0046:
                java.util.List<com.google.protobuf.DescriptorProtos$EnumValueDescriptorProto> r3 = r8.value_     // Catch:{ InvalidProtocolBufferException -> 0x00cd, IOException -> 0x00c9, all -> 0x00c5 }
                com.google.protobuf.Parser<com.google.protobuf.DescriptorProtos$EnumValueDescriptorProto> r4 = com.google.protobuf.DescriptorProtos.EnumValueDescriptorProto.PARSER     // Catch:{ InvalidProtocolBufferException -> 0x00cd, IOException -> 0x00c9, all -> 0x00c5 }
                com.google.protobuf.MessageLite r4 = r9.readMessage(r4, r10)     // Catch:{ InvalidProtocolBufferException -> 0x00cd, IOException -> 0x00c9, all -> 0x00c5 }
                r3.add(r4)     // Catch:{ InvalidProtocolBufferException -> 0x00cd, IOException -> 0x00c9, all -> 0x00c5 }
                r7 = r2
                r2 = r0
                r0 = r7
                goto L_0x0024
            L_0x0055:
                r0 = 0
                int r4 = r8.bitField0_     // Catch:{ InvalidProtocolBufferException -> 0x0083, IOException -> 0x00a0 }
                r4 = r4 & 2
                if (r4 != r6) goto L_0x00d1
                com.google.protobuf.DescriptorProtos$EnumOptions r0 = r8.options_     // Catch:{ InvalidProtocolBufferException -> 0x0083, IOException -> 0x00a0 }
                com.google.protobuf.DescriptorProtos$EnumOptions$Builder r0 = r0.toBuilder()     // Catch:{ InvalidProtocolBufferException -> 0x0083, IOException -> 0x00a0 }
                r4 = r0
            L_0x0063:
                com.google.protobuf.Parser<com.google.protobuf.DescriptorProtos$EnumOptions> r0 = com.google.protobuf.DescriptorProtos.EnumOptions.PARSER     // Catch:{ InvalidProtocolBufferException -> 0x0083, IOException -> 0x00a0 }
                com.google.protobuf.MessageLite r0 = r9.readMessage(r0, r10)     // Catch:{ InvalidProtocolBufferException -> 0x0083, IOException -> 0x00a0 }
                com.google.protobuf.DescriptorProtos$EnumOptions r0 = (com.google.protobuf.DescriptorProtos.EnumOptions) r0     // Catch:{ InvalidProtocolBufferException -> 0x0083, IOException -> 0x00a0 }
                r8.options_ = r0     // Catch:{ InvalidProtocolBufferException -> 0x0083, IOException -> 0x00a0 }
                if (r4 == 0) goto L_0x007a
                com.google.protobuf.DescriptorProtos$EnumOptions r0 = r8.options_     // Catch:{ InvalidProtocolBufferException -> 0x0083, IOException -> 0x00a0 }
                r4.mergeFrom(r0)     // Catch:{ InvalidProtocolBufferException -> 0x0083, IOException -> 0x00a0 }
                com.google.protobuf.DescriptorProtos$EnumOptions r0 = r4.buildPartial()     // Catch:{ InvalidProtocolBufferException -> 0x0083, IOException -> 0x00a0 }
                r8.options_ = r0     // Catch:{ InvalidProtocolBufferException -> 0x0083, IOException -> 0x00a0 }
            L_0x007a:
                int r0 = r8.bitField0_     // Catch:{ InvalidProtocolBufferException -> 0x0083, IOException -> 0x00a0 }
                r0 = r0 | 2
                r8.bitField0_ = r0     // Catch:{ InvalidProtocolBufferException -> 0x0083, IOException -> 0x00a0 }
                r0 = r2
                r2 = r3
                goto L_0x0024
            L_0x0083:
                r0 = move-exception
            L_0x0084:
                com.google.protobuf.InvalidProtocolBufferException r0 = r0.setUnfinishedMessage(r8)     // Catch:{ all -> 0x0089 }
                throw r0     // Catch:{ all -> 0x0089 }
            L_0x0089:
                r0 = move-exception
            L_0x008a:
                r1 = r3 & 2
                if (r1 != r6) goto L_0x0096
                java.util.List<com.google.protobuf.DescriptorProtos$EnumValueDescriptorProto> r1 = r8.value_
                java.util.List r1 = java.util.Collections.unmodifiableList(r1)
                r8.value_ = r1
            L_0x0096:
                com.google.protobuf.UnknownFieldSet r1 = r5.build()
                r8.unknownFields = r1
                r8.makeExtensionsImmutable()
                throw r0
            L_0x00a0:
                r0 = move-exception
            L_0x00a1:
                com.google.protobuf.InvalidProtocolBufferException r1 = new com.google.protobuf.InvalidProtocolBufferException     // Catch:{ all -> 0x0089 }
                java.lang.String r0 = r0.getMessage()     // Catch:{ all -> 0x0089 }
                r1.<init>(r0)     // Catch:{ all -> 0x0089 }
                com.google.protobuf.InvalidProtocolBufferException r0 = r1.setUnfinishedMessage(r8)     // Catch:{ all -> 0x0089 }
                throw r0     // Catch:{ all -> 0x0089 }
            L_0x00af:
                r0 = r3 & 2
                if (r0 != r6) goto L_0x00bb
                java.util.List<com.google.protobuf.DescriptorProtos$EnumValueDescriptorProto> r0 = r8.value_
                java.util.List r0 = java.util.Collections.unmodifiableList(r0)
                r8.value_ = r0
            L_0x00bb:
                com.google.protobuf.UnknownFieldSet r0 = r5.build()
                r8.unknownFields = r0
                r8.makeExtensionsImmutable()
                return
            L_0x00c5:
                r1 = move-exception
                r3 = r0
                r0 = r1
                goto L_0x008a
            L_0x00c9:
                r1 = move-exception
                r3 = r0
                r0 = r1
                goto L_0x00a1
            L_0x00cd:
                r1 = move-exception
                r3 = r0
                r0 = r1
                goto L_0x0084
            L_0x00d1:
                r4 = r0
                goto L_0x0063
            L_0x00d3:
                r0 = r3
                goto L_0x0046
            L_0x00d6:
                r0 = r2
                r2 = r3
                goto L_0x0024
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.DescriptorProtos.EnumDescriptorProto.<init>(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):void");
        }

        public static final Descriptor getDescriptor() {
            return DescriptorProtos.internal_static_google_protobuf_EnumDescriptorProto_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return DescriptorProtos.internal_static_google_protobuf_EnumDescriptorProto_fieldAccessorTable.ensureFieldAccessorsInitialized(EnumDescriptorProto.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<EnumDescriptorProto> getParserForType() {
            return PARSER;
        }

        public boolean hasName() {
            return (this.bitField0_ & 1) == 1;
        }

        public String getName() {
            Object obj = this.name_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.name_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getNameBytes() {
            Object obj = this.name_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.name_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public List<EnumValueDescriptorProto> getValueList() {
            return this.value_;
        }

        public List<? extends EnumValueDescriptorProtoOrBuilder> getValueOrBuilderList() {
            return this.value_;
        }

        public int getValueCount() {
            return this.value_.size();
        }

        public EnumValueDescriptorProto getValue(int i) {
            return (EnumValueDescriptorProto) this.value_.get(i);
        }

        public EnumValueDescriptorProtoOrBuilder getValueOrBuilder(int i) {
            return (EnumValueDescriptorProtoOrBuilder) this.value_.get(i);
        }

        public boolean hasOptions() {
            return (this.bitField0_ & 2) == 2;
        }

        public EnumOptions getOptions() {
            return this.options_;
        }

        public EnumOptionsOrBuilder getOptionsOrBuilder() {
            return this.options_;
        }

        private void initFields() {
            this.name_ = "";
            this.value_ = Collections.emptyList();
            this.options_ = EnumOptions.getDefaultInstance();
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            for (int i = 0; i < getValueCount(); i++) {
                if (!getValue(i).isInitialized()) {
                    this.memoizedIsInitialized = 0;
                    return false;
                }
            }
            if (!hasOptions() || getOptions().isInitialized()) {
                this.memoizedIsInitialized = 1;
                return true;
            }
            this.memoizedIsInitialized = 0;
            return false;
        }

        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeBytes(1, getNameBytes());
            }
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= this.value_.size()) {
                    break;
                }
                codedOutputStream.writeMessage(2, (MessageLite) this.value_.get(i2));
                i = i2 + 1;
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeMessage(3, this.options_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        public int getSerializedSize() {
            int i;
            int i2;
            int i3 = 0;
            int i4 = this.memoizedSerializedSize;
            if (i4 != -1) {
                return i4;
            }
            if ((this.bitField0_ & 1) == 1) {
                i = CodedOutputStream.computeBytesSize(1, getNameBytes()) + 0;
            } else {
                i = 0;
            }
            while (true) {
                i2 = i;
                if (i3 >= this.value_.size()) {
                    break;
                }
                i = CodedOutputStream.computeMessageSize(2, (MessageLite) this.value_.get(i3)) + i2;
                i3++;
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeMessageSize(3, this.options_);
            }
            int serializedSize = getUnknownFields().getSerializedSize() + i2;
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static EnumDescriptorProto parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (EnumDescriptorProto) PARSER.parseFrom(byteString);
        }

        public static EnumDescriptorProto parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (EnumDescriptorProto) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static EnumDescriptorProto parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (EnumDescriptorProto) PARSER.parseFrom(bArr);
        }

        public static EnumDescriptorProto parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (EnumDescriptorProto) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static EnumDescriptorProto parseFrom(InputStream inputStream) throws IOException {
            return (EnumDescriptorProto) PARSER.parseFrom(inputStream);
        }

        public static EnumDescriptorProto parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (EnumDescriptorProto) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static EnumDescriptorProto parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (EnumDescriptorProto) PARSER.parseDelimitedFrom(inputStream);
        }

        public static EnumDescriptorProto parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (EnumDescriptorProto) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static EnumDescriptorProto parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (EnumDescriptorProto) PARSER.parseFrom(codedInputStream);
        }

        public static EnumDescriptorProto parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (EnumDescriptorProto) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(EnumDescriptorProto enumDescriptorProto) {
            return newBuilder().mergeFrom(enumDescriptorProto);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface EnumDescriptorProtoOrBuilder extends MessageOrBuilder {
        String getName();

        ByteString getNameBytes();

        EnumOptions getOptions();

        EnumOptionsOrBuilder getOptionsOrBuilder();

        EnumValueDescriptorProto getValue(int i);

        int getValueCount();

        List<EnumValueDescriptorProto> getValueList();

        EnumValueDescriptorProtoOrBuilder getValueOrBuilder(int i);

        List<? extends EnumValueDescriptorProtoOrBuilder> getValueOrBuilderList();

        boolean hasName();

        boolean hasOptions();
    }

    public static final class EnumOptions extends ExtendableMessage<EnumOptions> implements EnumOptionsOrBuilder {
        public static final int ALLOW_ALIAS_FIELD_NUMBER = 2;
        public static final int DEPRECATED_FIELD_NUMBER = 3;
        public static Parser<EnumOptions> PARSER = new AbstractParser<EnumOptions>() {
            public EnumOptions parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new EnumOptions(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int UNINTERPRETED_OPTION_FIELD_NUMBER = 999;
        private static final EnumOptions defaultInstance = new EnumOptions(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public boolean allowAlias_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public boolean deprecated_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public List<UninterpretedOption> uninterpretedOption_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends ExtendableBuilder<EnumOptions, Builder> implements EnumOptionsOrBuilder {
            private boolean allowAlias_;
            private int bitField0_;
            private boolean deprecated_;
            private RepeatedFieldBuilder<UninterpretedOption, Builder, UninterpretedOptionOrBuilder> uninterpretedOptionBuilder_;
            private List<UninterpretedOption> uninterpretedOption_;

            public static final Descriptor getDescriptor() {
                return DescriptorProtos.internal_static_google_protobuf_EnumOptions_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return DescriptorProtos.internal_static_google_protobuf_EnumOptions_fieldAccessorTable.ensureFieldAccessorsInitialized(EnumOptions.class, Builder.class);
            }

            private Builder() {
                this.uninterpretedOption_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.uninterpretedOption_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    getUninterpretedOptionFieldBuilder();
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.allowAlias_ = false;
                this.bitField0_ &= -2;
                this.deprecated_ = false;
                this.bitField0_ &= -3;
                if (this.uninterpretedOptionBuilder_ == null) {
                    this.uninterpretedOption_ = Collections.emptyList();
                    this.bitField0_ &= -5;
                } else {
                    this.uninterpretedOptionBuilder_.clear();
                }
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return DescriptorProtos.internal_static_google_protobuf_EnumOptions_descriptor;
            }

            public EnumOptions getDefaultInstanceForType() {
                return EnumOptions.getDefaultInstance();
            }

            public EnumOptions build() {
                EnumOptions buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public EnumOptions buildPartial() {
                int i = 1;
                EnumOptions enumOptions = new EnumOptions((ExtendableBuilder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                enumOptions.allowAlias_ = this.allowAlias_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                enumOptions.deprecated_ = this.deprecated_;
                if (this.uninterpretedOptionBuilder_ == null) {
                    if ((this.bitField0_ & 4) == 4) {
                        this.uninterpretedOption_ = Collections.unmodifiableList(this.uninterpretedOption_);
                        this.bitField0_ &= -5;
                    }
                    enumOptions.uninterpretedOption_ = this.uninterpretedOption_;
                } else {
                    enumOptions.uninterpretedOption_ = this.uninterpretedOptionBuilder_.build();
                }
                enumOptions.bitField0_ = i;
                onBuilt();
                return enumOptions;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof EnumOptions) {
                    return mergeFrom((EnumOptions) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(EnumOptions enumOptions) {
                RepeatedFieldBuilder<UninterpretedOption, Builder, UninterpretedOptionOrBuilder> repeatedFieldBuilder = null;
                if (enumOptions != EnumOptions.getDefaultInstance()) {
                    if (enumOptions.hasAllowAlias()) {
                        setAllowAlias(enumOptions.getAllowAlias());
                    }
                    if (enumOptions.hasDeprecated()) {
                        setDeprecated(enumOptions.getDeprecated());
                    }
                    if (this.uninterpretedOptionBuilder_ == null) {
                        if (!enumOptions.uninterpretedOption_.isEmpty()) {
                            if (this.uninterpretedOption_.isEmpty()) {
                                this.uninterpretedOption_ = enumOptions.uninterpretedOption_;
                                this.bitField0_ &= -5;
                            } else {
                                ensureUninterpretedOptionIsMutable();
                                this.uninterpretedOption_.addAll(enumOptions.uninterpretedOption_);
                            }
                            onChanged();
                        }
                    } else if (!enumOptions.uninterpretedOption_.isEmpty()) {
                        if (this.uninterpretedOptionBuilder_.isEmpty()) {
                            this.uninterpretedOptionBuilder_.dispose();
                            this.uninterpretedOptionBuilder_ = null;
                            this.uninterpretedOption_ = enumOptions.uninterpretedOption_;
                            this.bitField0_ &= -5;
                            if (GeneratedMessage.alwaysUseFieldBuilders) {
                                repeatedFieldBuilder = getUninterpretedOptionFieldBuilder();
                            }
                            this.uninterpretedOptionBuilder_ = repeatedFieldBuilder;
                        } else {
                            this.uninterpretedOptionBuilder_.addAllMessages(enumOptions.uninterpretedOption_);
                        }
                    }
                    mergeExtensionFields(enumOptions);
                    mergeUnknownFields(enumOptions.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                for (int i = 0; i < getUninterpretedOptionCount(); i++) {
                    if (!getUninterpretedOption(i).isInitialized()) {
                        return false;
                    }
                }
                if (extensionsAreInitialized()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                EnumOptions enumOptions;
                EnumOptions enumOptions2;
                try {
                    EnumOptions enumOptions3 = (EnumOptions) EnumOptions.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (enumOptions3 != null) {
                        mergeFrom(enumOptions3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    enumOptions2 = (EnumOptions) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    enumOptions = enumOptions2;
                    th = th2;
                }
                if (enumOptions != null) {
                    mergeFrom(enumOptions);
                }
                throw th;
            }

            public boolean hasAllowAlias() {
                return (this.bitField0_ & 1) == 1;
            }

            public boolean getAllowAlias() {
                return this.allowAlias_;
            }

            public Builder setAllowAlias(boolean z) {
                this.bitField0_ |= 1;
                this.allowAlias_ = z;
                onChanged();
                return this;
            }

            public Builder clearAllowAlias() {
                this.bitField0_ &= -2;
                this.allowAlias_ = false;
                onChanged();
                return this;
            }

            public boolean hasDeprecated() {
                return (this.bitField0_ & 2) == 2;
            }

            public boolean getDeprecated() {
                return this.deprecated_;
            }

            public Builder setDeprecated(boolean z) {
                this.bitField0_ |= 2;
                this.deprecated_ = z;
                onChanged();
                return this;
            }

            public Builder clearDeprecated() {
                this.bitField0_ &= -3;
                this.deprecated_ = false;
                onChanged();
                return this;
            }

            private void ensureUninterpretedOptionIsMutable() {
                if ((this.bitField0_ & 4) != 4) {
                    this.uninterpretedOption_ = new ArrayList(this.uninterpretedOption_);
                    this.bitField0_ |= 4;
                }
            }

            public List<UninterpretedOption> getUninterpretedOptionList() {
                if (this.uninterpretedOptionBuilder_ == null) {
                    return Collections.unmodifiableList(this.uninterpretedOption_);
                }
                return this.uninterpretedOptionBuilder_.getMessageList();
            }

            public int getUninterpretedOptionCount() {
                if (this.uninterpretedOptionBuilder_ == null) {
                    return this.uninterpretedOption_.size();
                }
                return this.uninterpretedOptionBuilder_.getCount();
            }

            public UninterpretedOption getUninterpretedOption(int i) {
                if (this.uninterpretedOptionBuilder_ == null) {
                    return (UninterpretedOption) this.uninterpretedOption_.get(i);
                }
                return (UninterpretedOption) this.uninterpretedOptionBuilder_.getMessage(i);
            }

            public Builder setUninterpretedOption(int i, UninterpretedOption uninterpretedOption) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.setMessage(i, uninterpretedOption);
                } else if (uninterpretedOption == null) {
                    throw new NullPointerException();
                } else {
                    ensureUninterpretedOptionIsMutable();
                    this.uninterpretedOption_.set(i, uninterpretedOption);
                    onChanged();
                }
                return this;
            }

            public Builder setUninterpretedOption(int i, Builder builder) {
                if (this.uninterpretedOptionBuilder_ == null) {
                    ensureUninterpretedOptionIsMutable();
                    this.uninterpretedOption_.set(i, builder.build());
                    onChanged();
                } else {
                    this.uninterpretedOptionBuilder_.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addUninterpretedOption(UninterpretedOption uninterpretedOption) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.addMessage(uninterpretedOption);
                } else if (uninterpretedOption == null) {
                    throw new NullPointerException();
                } else {
                    ensureUninterpretedOptionIsMutable();
                    this.uninterpretedOption_.add(uninterpretedOption);
                    onChanged();
                }
                return this;
            }

            public Builder addUninterpretedOption(int i, UninterpretedOption uninterpretedOption) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.addMessage(i, uninterpretedOption);
                } else if (uninterpretedOption == null) {
                    throw new NullPointerException();
                } else {
                    ensureUninterpretedOptionIsMutable();
                    this.uninterpretedOption_.add(i, uninterpretedOption);
                    onChanged();
                }
                return this;
            }

            public Builder addUninterpretedOption(Builder builder) {
                if (this.uninterpretedOptionBuilder_ == null) {
                    ensureUninterpretedOptionIsMutable();
                    this.uninterpretedOption_.add(builder.build());
                    onChanged();
                } else {
                    this.uninterpretedOptionBuilder_.addMessage(builder.build());
                }
                return this;
            }

            public Builder addUninterpretedOption(int i, Builder builder) {
                if (this.uninterpretedOptionBuilder_ == null) {
                    ensureUninterpretedOptionIsMutable();
                    this.uninterpretedOption_.add(i, builder.build());
                    onChanged();
                } else {
                    this.uninterpretedOptionBuilder_.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllUninterpretedOption(Iterable<? extends UninterpretedOption> iterable) {
                if (this.uninterpretedOptionBuilder_ == null) {
                    ensureUninterpretedOptionIsMutable();
                    com.google.protobuf.AbstractMessageLite.Builder.addAll(iterable, this.uninterpretedOption_);
                    onChanged();
                } else {
                    this.uninterpretedOptionBuilder_.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearUninterpretedOption() {
                if (this.uninterpretedOptionBuilder_ == null) {
                    this.uninterpretedOption_ = Collections.emptyList();
                    this.bitField0_ &= -5;
                    onChanged();
                } else {
                    this.uninterpretedOptionBuilder_.clear();
                }
                return this;
            }

            public Builder removeUninterpretedOption(int i) {
                if (this.uninterpretedOptionBuilder_ == null) {
                    ensureUninterpretedOptionIsMutable();
                    this.uninterpretedOption_.remove(i);
                    onChanged();
                } else {
                    this.uninterpretedOptionBuilder_.remove(i);
                }
                return this;
            }

            public Builder getUninterpretedOptionBuilder(int i) {
                return (Builder) getUninterpretedOptionFieldBuilder().getBuilder(i);
            }

            public UninterpretedOptionOrBuilder getUninterpretedOptionOrBuilder(int i) {
                if (this.uninterpretedOptionBuilder_ == null) {
                    return (UninterpretedOptionOrBuilder) this.uninterpretedOption_.get(i);
                }
                return (UninterpretedOptionOrBuilder) this.uninterpretedOptionBuilder_.getMessageOrBuilder(i);
            }

            public List<? extends UninterpretedOptionOrBuilder> getUninterpretedOptionOrBuilderList() {
                if (this.uninterpretedOptionBuilder_ != null) {
                    return this.uninterpretedOptionBuilder_.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.uninterpretedOption_);
            }

            public Builder addUninterpretedOptionBuilder() {
                return (Builder) getUninterpretedOptionFieldBuilder().addBuilder(UninterpretedOption.getDefaultInstance());
            }

            public Builder addUninterpretedOptionBuilder(int i) {
                return (Builder) getUninterpretedOptionFieldBuilder().addBuilder(i, UninterpretedOption.getDefaultInstance());
            }

            public List<Builder> getUninterpretedOptionBuilderList() {
                return getUninterpretedOptionFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<UninterpretedOption, Builder, UninterpretedOptionOrBuilder> getUninterpretedOptionFieldBuilder() {
                if (this.uninterpretedOptionBuilder_ == null) {
                    this.uninterpretedOptionBuilder_ = new RepeatedFieldBuilder<>(this.uninterpretedOption_, (this.bitField0_ & 4) == 4, getParentForChildren(), isClean());
                    this.uninterpretedOption_ = null;
                }
                return this.uninterpretedOptionBuilder_;
            }
        }

        private EnumOptions(ExtendableBuilder<EnumOptions, ?> extendableBuilder) {
            super(extendableBuilder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = extendableBuilder.getUnknownFields();
        }

        private EnumOptions(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static EnumOptions getDefaultInstance() {
            return defaultInstance;
        }

        public EnumOptions getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private EnumOptions(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                        case 16:
                            this.bitField0_ |= 1;
                            this.allowAlias_ = codedInputStream.readBool();
                            break;
                        case 24:
                            this.bitField0_ |= 2;
                            this.deprecated_ = codedInputStream.readBool();
                            break;
                        case 7994:
                            if (!(z2 & true)) {
                                this.uninterpretedOption_ = new ArrayList();
                                z2 |= true;
                            }
                            this.uninterpretedOption_.add(codedInputStream.readMessage(UninterpretedOption.PARSER, extensionRegistryLite));
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
                        this.uninterpretedOption_ = Collections.unmodifiableList(this.uninterpretedOption_);
                    }
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            if (z2 & true) {
                this.uninterpretedOption_ = Collections.unmodifiableList(this.uninterpretedOption_);
            }
            this.unknownFields = newBuilder.build();
            makeExtensionsImmutable();
        }

        public static final Descriptor getDescriptor() {
            return DescriptorProtos.internal_static_google_protobuf_EnumOptions_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return DescriptorProtos.internal_static_google_protobuf_EnumOptions_fieldAccessorTable.ensureFieldAccessorsInitialized(EnumOptions.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<EnumOptions> getParserForType() {
            return PARSER;
        }

        public boolean hasAllowAlias() {
            return (this.bitField0_ & 1) == 1;
        }

        public boolean getAllowAlias() {
            return this.allowAlias_;
        }

        public boolean hasDeprecated() {
            return (this.bitField0_ & 2) == 2;
        }

        public boolean getDeprecated() {
            return this.deprecated_;
        }

        public List<UninterpretedOption> getUninterpretedOptionList() {
            return this.uninterpretedOption_;
        }

        public List<? extends UninterpretedOptionOrBuilder> getUninterpretedOptionOrBuilderList() {
            return this.uninterpretedOption_;
        }

        public int getUninterpretedOptionCount() {
            return this.uninterpretedOption_.size();
        }

        public UninterpretedOption getUninterpretedOption(int i) {
            return (UninterpretedOption) this.uninterpretedOption_.get(i);
        }

        public UninterpretedOptionOrBuilder getUninterpretedOptionOrBuilder(int i) {
            return (UninterpretedOptionOrBuilder) this.uninterpretedOption_.get(i);
        }

        private void initFields() {
            this.allowAlias_ = false;
            this.deprecated_ = false;
            this.uninterpretedOption_ = Collections.emptyList();
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            for (int i = 0; i < getUninterpretedOptionCount(); i++) {
                if (!getUninterpretedOption(i).isInitialized()) {
                    this.memoizedIsInitialized = 0;
                    return false;
                }
            }
            if (!extensionsAreInitialized()) {
                this.memoizedIsInitialized = 0;
                return false;
            }
            this.memoizedIsInitialized = 1;
            return true;
        }

        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            ExtensionWriter newExtensionWriter = newExtensionWriter();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeBool(2, this.allowAlias_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeBool(3, this.deprecated_);
            }
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.uninterpretedOption_.size()) {
                    codedOutputStream.writeMessage(999, (MessageLite) this.uninterpretedOption_.get(i2));
                    i = i2 + 1;
                } else {
                    newExtensionWriter.writeUntil(PKIFailureInfo.duplicateCertReq, codedOutputStream);
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
                i = CodedOutputStream.computeBoolSize(2, this.allowAlias_) + 0;
            } else {
                i = 0;
            }
            if ((this.bitField0_ & 2) == 2) {
                i += CodedOutputStream.computeBoolSize(3, this.deprecated_);
            }
            while (true) {
                int i4 = i;
                if (i2 < this.uninterpretedOption_.size()) {
                    i = CodedOutputStream.computeMessageSize(999, (MessageLite) this.uninterpretedOption_.get(i2)) + i4;
                    i2++;
                } else {
                    int extensionsSerializedSize = extensionsSerializedSize() + i4 + getUnknownFields().getSerializedSize();
                    this.memoizedSerializedSize = extensionsSerializedSize;
                    return extensionsSerializedSize;
                }
            }
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static EnumOptions parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (EnumOptions) PARSER.parseFrom(byteString);
        }

        public static EnumOptions parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (EnumOptions) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static EnumOptions parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (EnumOptions) PARSER.parseFrom(bArr);
        }

        public static EnumOptions parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (EnumOptions) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static EnumOptions parseFrom(InputStream inputStream) throws IOException {
            return (EnumOptions) PARSER.parseFrom(inputStream);
        }

        public static EnumOptions parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (EnumOptions) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static EnumOptions parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (EnumOptions) PARSER.parseDelimitedFrom(inputStream);
        }

        public static EnumOptions parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (EnumOptions) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static EnumOptions parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (EnumOptions) PARSER.parseFrom(codedInputStream);
        }

        public static EnumOptions parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (EnumOptions) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(EnumOptions enumOptions) {
            return newBuilder().mergeFrom(enumOptions);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface EnumOptionsOrBuilder extends ExtendableMessageOrBuilder<EnumOptions> {
        boolean getAllowAlias();

        boolean getDeprecated();

        UninterpretedOption getUninterpretedOption(int i);

        int getUninterpretedOptionCount();

        List<UninterpretedOption> getUninterpretedOptionList();

        UninterpretedOptionOrBuilder getUninterpretedOptionOrBuilder(int i);

        List<? extends UninterpretedOptionOrBuilder> getUninterpretedOptionOrBuilderList();

        boolean hasAllowAlias();

        boolean hasDeprecated();
    }

    public static final class EnumValueDescriptorProto extends GeneratedMessage implements EnumValueDescriptorProtoOrBuilder {
        public static final int NAME_FIELD_NUMBER = 1;
        public static final int NUMBER_FIELD_NUMBER = 2;
        public static final int OPTIONS_FIELD_NUMBER = 3;
        public static Parser<EnumValueDescriptorProto> PARSER = new AbstractParser<EnumValueDescriptorProto>() {
            public EnumValueDescriptorProto parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new EnumValueDescriptorProto(codedInputStream, extensionRegistryLite);
            }
        };
        private static final EnumValueDescriptorProto defaultInstance = new EnumValueDescriptorProto(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public Object name_;
        /* access modifiers changed from: private */
        public int number_;
        /* access modifiers changed from: private */
        public EnumValueOptions options_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements EnumValueDescriptorProtoOrBuilder {
            private int bitField0_;
            private Object name_;
            private int number_;
            private SingleFieldBuilder<EnumValueOptions, Builder, EnumValueOptionsOrBuilder> optionsBuilder_;
            private EnumValueOptions options_;

            public static final Descriptor getDescriptor() {
                return DescriptorProtos.internal_static_google_protobuf_EnumValueDescriptorProto_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return DescriptorProtos.internal_static_google_protobuf_EnumValueDescriptorProto_fieldAccessorTable.ensureFieldAccessorsInitialized(EnumValueDescriptorProto.class, Builder.class);
            }

            private Builder() {
                this.name_ = "";
                this.options_ = EnumValueOptions.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.name_ = "";
                this.options_ = EnumValueOptions.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    getOptionsFieldBuilder();
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.name_ = "";
                this.bitField0_ &= -2;
                this.number_ = 0;
                this.bitField0_ &= -3;
                if (this.optionsBuilder_ == null) {
                    this.options_ = EnumValueOptions.getDefaultInstance();
                } else {
                    this.optionsBuilder_.clear();
                }
                this.bitField0_ &= -5;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return DescriptorProtos.internal_static_google_protobuf_EnumValueDescriptorProto_descriptor;
            }

            public EnumValueDescriptorProto getDefaultInstanceForType() {
                return EnumValueDescriptorProto.getDefaultInstance();
            }

            public EnumValueDescriptorProto build() {
                EnumValueDescriptorProto buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public EnumValueDescriptorProto buildPartial() {
                int i;
                int i2 = 1;
                EnumValueDescriptorProto enumValueDescriptorProto = new EnumValueDescriptorProto((com.google.protobuf.GeneratedMessage.Builder) this);
                int i3 = this.bitField0_;
                if ((i3 & 1) != 1) {
                    i2 = 0;
                }
                enumValueDescriptorProto.name_ = this.name_;
                if ((i3 & 2) == 2) {
                    i2 |= 2;
                }
                enumValueDescriptorProto.number_ = this.number_;
                if ((i3 & 4) == 4) {
                    i = i2 | 4;
                } else {
                    i = i2;
                }
                if (this.optionsBuilder_ == null) {
                    enumValueDescriptorProto.options_ = this.options_;
                } else {
                    enumValueDescriptorProto.options_ = (EnumValueOptions) this.optionsBuilder_.build();
                }
                enumValueDescriptorProto.bitField0_ = i;
                onBuilt();
                return enumValueDescriptorProto;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof EnumValueDescriptorProto) {
                    return mergeFrom((EnumValueDescriptorProto) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(EnumValueDescriptorProto enumValueDescriptorProto) {
                if (enumValueDescriptorProto != EnumValueDescriptorProto.getDefaultInstance()) {
                    if (enumValueDescriptorProto.hasName()) {
                        this.bitField0_ |= 1;
                        this.name_ = enumValueDescriptorProto.name_;
                        onChanged();
                    }
                    if (enumValueDescriptorProto.hasNumber()) {
                        setNumber(enumValueDescriptorProto.getNumber());
                    }
                    if (enumValueDescriptorProto.hasOptions()) {
                        mergeOptions(enumValueDescriptorProto.getOptions());
                    }
                    mergeUnknownFields(enumValueDescriptorProto.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                if (!hasOptions() || getOptions().isInitialized()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                EnumValueDescriptorProto enumValueDescriptorProto;
                EnumValueDescriptorProto enumValueDescriptorProto2;
                try {
                    EnumValueDescriptorProto enumValueDescriptorProto3 = (EnumValueDescriptorProto) EnumValueDescriptorProto.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (enumValueDescriptorProto3 != null) {
                        mergeFrom(enumValueDescriptorProto3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    enumValueDescriptorProto2 = (EnumValueDescriptorProto) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    enumValueDescriptorProto = enumValueDescriptorProto2;
                    th = th2;
                }
                if (enumValueDescriptorProto != null) {
                    mergeFrom(enumValueDescriptorProto);
                }
                throw th;
            }

            public boolean hasName() {
                return (this.bitField0_ & 1) == 1;
            }

            public String getName() {
                Object obj = this.name_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.name_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getNameBytes() {
                Object obj = this.name_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.name_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setName(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.name_ = str;
                onChanged();
                return this;
            }

            public Builder clearName() {
                this.bitField0_ &= -2;
                this.name_ = EnumValueDescriptorProto.getDefaultInstance().getName();
                onChanged();
                return this;
            }

            public Builder setNameBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.name_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasNumber() {
                return (this.bitField0_ & 2) == 2;
            }

            public int getNumber() {
                return this.number_;
            }

            public Builder setNumber(int i) {
                this.bitField0_ |= 2;
                this.number_ = i;
                onChanged();
                return this;
            }

            public Builder clearNumber() {
                this.bitField0_ &= -3;
                this.number_ = 0;
                onChanged();
                return this;
            }

            public boolean hasOptions() {
                return (this.bitField0_ & 4) == 4;
            }

            public EnumValueOptions getOptions() {
                if (this.optionsBuilder_ == null) {
                    return this.options_;
                }
                return (EnumValueOptions) this.optionsBuilder_.getMessage();
            }

            public Builder setOptions(EnumValueOptions enumValueOptions) {
                if (this.optionsBuilder_ != null) {
                    this.optionsBuilder_.setMessage(enumValueOptions);
                } else if (enumValueOptions == null) {
                    throw new NullPointerException();
                } else {
                    this.options_ = enumValueOptions;
                    onChanged();
                }
                this.bitField0_ |= 4;
                return this;
            }

            public Builder setOptions(Builder builder) {
                if (this.optionsBuilder_ == null) {
                    this.options_ = builder.build();
                    onChanged();
                } else {
                    this.optionsBuilder_.setMessage(builder.build());
                }
                this.bitField0_ |= 4;
                return this;
            }

            public Builder mergeOptions(EnumValueOptions enumValueOptions) {
                if (this.optionsBuilder_ == null) {
                    if ((this.bitField0_ & 4) != 4 || this.options_ == EnumValueOptions.getDefaultInstance()) {
                        this.options_ = enumValueOptions;
                    } else {
                        this.options_ = EnumValueOptions.newBuilder(this.options_).mergeFrom(enumValueOptions).buildPartial();
                    }
                    onChanged();
                } else {
                    this.optionsBuilder_.mergeFrom(enumValueOptions);
                }
                this.bitField0_ |= 4;
                return this;
            }

            public Builder clearOptions() {
                if (this.optionsBuilder_ == null) {
                    this.options_ = EnumValueOptions.getDefaultInstance();
                    onChanged();
                } else {
                    this.optionsBuilder_.clear();
                }
                this.bitField0_ &= -5;
                return this;
            }

            public Builder getOptionsBuilder() {
                this.bitField0_ |= 4;
                onChanged();
                return (Builder) getOptionsFieldBuilder().getBuilder();
            }

            public EnumValueOptionsOrBuilder getOptionsOrBuilder() {
                if (this.optionsBuilder_ != null) {
                    return (EnumValueOptionsOrBuilder) this.optionsBuilder_.getMessageOrBuilder();
                }
                return this.options_;
            }

            private SingleFieldBuilder<EnumValueOptions, Builder, EnumValueOptionsOrBuilder> getOptionsFieldBuilder() {
                if (this.optionsBuilder_ == null) {
                    this.optionsBuilder_ = new SingleFieldBuilder<>(getOptions(), getParentForChildren(), isClean());
                    this.options_ = null;
                }
                return this.optionsBuilder_;
            }
        }

        private EnumValueDescriptorProto(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private EnumValueDescriptorProto(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static EnumValueDescriptorProto getDefaultInstance() {
            return defaultInstance;
        }

        public EnumValueDescriptorProto getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private EnumValueDescriptorProto(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                        case 10:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 1;
                            this.name_ = readBytes;
                            z = z2;
                            break;
                        case 16:
                            this.bitField0_ |= 2;
                            this.number_ = codedInputStream.readInt32();
                            z = z2;
                            break;
                        case 26:
                            if ((this.bitField0_ & 4) == 4) {
                                builder = this.options_.toBuilder();
                            } else {
                                builder = null;
                            }
                            this.options_ = (EnumValueOptions) codedInputStream.readMessage(EnumValueOptions.PARSER, extensionRegistryLite);
                            if (builder != null) {
                                builder.mergeFrom(this.options_);
                                this.options_ = builder.buildPartial();
                            }
                            this.bitField0_ |= 4;
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
            return DescriptorProtos.internal_static_google_protobuf_EnumValueDescriptorProto_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return DescriptorProtos.internal_static_google_protobuf_EnumValueDescriptorProto_fieldAccessorTable.ensureFieldAccessorsInitialized(EnumValueDescriptorProto.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<EnumValueDescriptorProto> getParserForType() {
            return PARSER;
        }

        public boolean hasName() {
            return (this.bitField0_ & 1) == 1;
        }

        public String getName() {
            Object obj = this.name_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.name_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getNameBytes() {
            Object obj = this.name_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.name_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasNumber() {
            return (this.bitField0_ & 2) == 2;
        }

        public int getNumber() {
            return this.number_;
        }

        public boolean hasOptions() {
            return (this.bitField0_ & 4) == 4;
        }

        public EnumValueOptions getOptions() {
            return this.options_;
        }

        public EnumValueOptionsOrBuilder getOptionsOrBuilder() {
            return this.options_;
        }

        private void initFields() {
            this.name_ = "";
            this.number_ = 0;
            this.options_ = EnumValueOptions.getDefaultInstance();
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasOptions() || getOptions().isInitialized()) {
                this.memoizedIsInitialized = 1;
                return true;
            }
            this.memoizedIsInitialized = 0;
            return false;
        }

        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeBytes(1, getNameBytes());
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeInt32(2, this.number_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeMessage(3, this.options_);
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
                i2 = 0 + CodedOutputStream.computeBytesSize(1, getNameBytes());
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeInt32Size(2, this.number_);
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeMessageSize(3, this.options_);
            }
            int serializedSize = i2 + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static EnumValueDescriptorProto parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (EnumValueDescriptorProto) PARSER.parseFrom(byteString);
        }

        public static EnumValueDescriptorProto parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (EnumValueDescriptorProto) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static EnumValueDescriptorProto parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (EnumValueDescriptorProto) PARSER.parseFrom(bArr);
        }

        public static EnumValueDescriptorProto parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (EnumValueDescriptorProto) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static EnumValueDescriptorProto parseFrom(InputStream inputStream) throws IOException {
            return (EnumValueDescriptorProto) PARSER.parseFrom(inputStream);
        }

        public static EnumValueDescriptorProto parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (EnumValueDescriptorProto) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static EnumValueDescriptorProto parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (EnumValueDescriptorProto) PARSER.parseDelimitedFrom(inputStream);
        }

        public static EnumValueDescriptorProto parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (EnumValueDescriptorProto) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static EnumValueDescriptorProto parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (EnumValueDescriptorProto) PARSER.parseFrom(codedInputStream);
        }

        public static EnumValueDescriptorProto parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (EnumValueDescriptorProto) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(EnumValueDescriptorProto enumValueDescriptorProto) {
            return newBuilder().mergeFrom(enumValueDescriptorProto);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface EnumValueDescriptorProtoOrBuilder extends MessageOrBuilder {
        String getName();

        ByteString getNameBytes();

        int getNumber();

        EnumValueOptions getOptions();

        EnumValueOptionsOrBuilder getOptionsOrBuilder();

        boolean hasName();

        boolean hasNumber();

        boolean hasOptions();
    }

    public static final class EnumValueOptions extends ExtendableMessage<EnumValueOptions> implements EnumValueOptionsOrBuilder {
        public static final int DEPRECATED_FIELD_NUMBER = 1;
        public static Parser<EnumValueOptions> PARSER = new AbstractParser<EnumValueOptions>() {
            public EnumValueOptions parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new EnumValueOptions(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int UNINTERPRETED_OPTION_FIELD_NUMBER = 999;
        private static final EnumValueOptions defaultInstance = new EnumValueOptions(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public boolean deprecated_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public List<UninterpretedOption> uninterpretedOption_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends ExtendableBuilder<EnumValueOptions, Builder> implements EnumValueOptionsOrBuilder {
            private int bitField0_;
            private boolean deprecated_;
            private RepeatedFieldBuilder<UninterpretedOption, Builder, UninterpretedOptionOrBuilder> uninterpretedOptionBuilder_;
            private List<UninterpretedOption> uninterpretedOption_;

            public static final Descriptor getDescriptor() {
                return DescriptorProtos.internal_static_google_protobuf_EnumValueOptions_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return DescriptorProtos.internal_static_google_protobuf_EnumValueOptions_fieldAccessorTable.ensureFieldAccessorsInitialized(EnumValueOptions.class, Builder.class);
            }

            private Builder() {
                this.uninterpretedOption_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.uninterpretedOption_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    getUninterpretedOptionFieldBuilder();
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.deprecated_ = false;
                this.bitField0_ &= -2;
                if (this.uninterpretedOptionBuilder_ == null) {
                    this.uninterpretedOption_ = Collections.emptyList();
                    this.bitField0_ &= -3;
                } else {
                    this.uninterpretedOptionBuilder_.clear();
                }
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return DescriptorProtos.internal_static_google_protobuf_EnumValueOptions_descriptor;
            }

            public EnumValueOptions getDefaultInstanceForType() {
                return EnumValueOptions.getDefaultInstance();
            }

            public EnumValueOptions build() {
                EnumValueOptions buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public EnumValueOptions buildPartial() {
                int i = 1;
                EnumValueOptions enumValueOptions = new EnumValueOptions((ExtendableBuilder) this);
                if ((this.bitField0_ & 1) != 1) {
                    i = 0;
                }
                enumValueOptions.deprecated_ = this.deprecated_;
                if (this.uninterpretedOptionBuilder_ == null) {
                    if ((this.bitField0_ & 2) == 2) {
                        this.uninterpretedOption_ = Collections.unmodifiableList(this.uninterpretedOption_);
                        this.bitField0_ &= -3;
                    }
                    enumValueOptions.uninterpretedOption_ = this.uninterpretedOption_;
                } else {
                    enumValueOptions.uninterpretedOption_ = this.uninterpretedOptionBuilder_.build();
                }
                enumValueOptions.bitField0_ = i;
                onBuilt();
                return enumValueOptions;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof EnumValueOptions) {
                    return mergeFrom((EnumValueOptions) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(EnumValueOptions enumValueOptions) {
                RepeatedFieldBuilder<UninterpretedOption, Builder, UninterpretedOptionOrBuilder> repeatedFieldBuilder = null;
                if (enumValueOptions != EnumValueOptions.getDefaultInstance()) {
                    if (enumValueOptions.hasDeprecated()) {
                        setDeprecated(enumValueOptions.getDeprecated());
                    }
                    if (this.uninterpretedOptionBuilder_ == null) {
                        if (!enumValueOptions.uninterpretedOption_.isEmpty()) {
                            if (this.uninterpretedOption_.isEmpty()) {
                                this.uninterpretedOption_ = enumValueOptions.uninterpretedOption_;
                                this.bitField0_ &= -3;
                            } else {
                                ensureUninterpretedOptionIsMutable();
                                this.uninterpretedOption_.addAll(enumValueOptions.uninterpretedOption_);
                            }
                            onChanged();
                        }
                    } else if (!enumValueOptions.uninterpretedOption_.isEmpty()) {
                        if (this.uninterpretedOptionBuilder_.isEmpty()) {
                            this.uninterpretedOptionBuilder_.dispose();
                            this.uninterpretedOptionBuilder_ = null;
                            this.uninterpretedOption_ = enumValueOptions.uninterpretedOption_;
                            this.bitField0_ &= -3;
                            if (GeneratedMessage.alwaysUseFieldBuilders) {
                                repeatedFieldBuilder = getUninterpretedOptionFieldBuilder();
                            }
                            this.uninterpretedOptionBuilder_ = repeatedFieldBuilder;
                        } else {
                            this.uninterpretedOptionBuilder_.addAllMessages(enumValueOptions.uninterpretedOption_);
                        }
                    }
                    mergeExtensionFields(enumValueOptions);
                    mergeUnknownFields(enumValueOptions.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                for (int i = 0; i < getUninterpretedOptionCount(); i++) {
                    if (!getUninterpretedOption(i).isInitialized()) {
                        return false;
                    }
                }
                if (extensionsAreInitialized()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                EnumValueOptions enumValueOptions;
                EnumValueOptions enumValueOptions2;
                try {
                    EnumValueOptions enumValueOptions3 = (EnumValueOptions) EnumValueOptions.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (enumValueOptions3 != null) {
                        mergeFrom(enumValueOptions3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    enumValueOptions2 = (EnumValueOptions) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    enumValueOptions = enumValueOptions2;
                    th = th2;
                }
                if (enumValueOptions != null) {
                    mergeFrom(enumValueOptions);
                }
                throw th;
            }

            public boolean hasDeprecated() {
                return (this.bitField0_ & 1) == 1;
            }

            public boolean getDeprecated() {
                return this.deprecated_;
            }

            public Builder setDeprecated(boolean z) {
                this.bitField0_ |= 1;
                this.deprecated_ = z;
                onChanged();
                return this;
            }

            public Builder clearDeprecated() {
                this.bitField0_ &= -2;
                this.deprecated_ = false;
                onChanged();
                return this;
            }

            private void ensureUninterpretedOptionIsMutable() {
                if ((this.bitField0_ & 2) != 2) {
                    this.uninterpretedOption_ = new ArrayList(this.uninterpretedOption_);
                    this.bitField0_ |= 2;
                }
            }

            public List<UninterpretedOption> getUninterpretedOptionList() {
                if (this.uninterpretedOptionBuilder_ == null) {
                    return Collections.unmodifiableList(this.uninterpretedOption_);
                }
                return this.uninterpretedOptionBuilder_.getMessageList();
            }

            public int getUninterpretedOptionCount() {
                if (this.uninterpretedOptionBuilder_ == null) {
                    return this.uninterpretedOption_.size();
                }
                return this.uninterpretedOptionBuilder_.getCount();
            }

            public UninterpretedOption getUninterpretedOption(int i) {
                if (this.uninterpretedOptionBuilder_ == null) {
                    return (UninterpretedOption) this.uninterpretedOption_.get(i);
                }
                return (UninterpretedOption) this.uninterpretedOptionBuilder_.getMessage(i);
            }

            public Builder setUninterpretedOption(int i, UninterpretedOption uninterpretedOption) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.setMessage(i, uninterpretedOption);
                } else if (uninterpretedOption == null) {
                    throw new NullPointerException();
                } else {
                    ensureUninterpretedOptionIsMutable();
                    this.uninterpretedOption_.set(i, uninterpretedOption);
                    onChanged();
                }
                return this;
            }

            public Builder setUninterpretedOption(int i, Builder builder) {
                if (this.uninterpretedOptionBuilder_ == null) {
                    ensureUninterpretedOptionIsMutable();
                    this.uninterpretedOption_.set(i, builder.build());
                    onChanged();
                } else {
                    this.uninterpretedOptionBuilder_.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addUninterpretedOption(UninterpretedOption uninterpretedOption) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.addMessage(uninterpretedOption);
                } else if (uninterpretedOption == null) {
                    throw new NullPointerException();
                } else {
                    ensureUninterpretedOptionIsMutable();
                    this.uninterpretedOption_.add(uninterpretedOption);
                    onChanged();
                }
                return this;
            }

            public Builder addUninterpretedOption(int i, UninterpretedOption uninterpretedOption) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.addMessage(i, uninterpretedOption);
                } else if (uninterpretedOption == null) {
                    throw new NullPointerException();
                } else {
                    ensureUninterpretedOptionIsMutable();
                    this.uninterpretedOption_.add(i, uninterpretedOption);
                    onChanged();
                }
                return this;
            }

            public Builder addUninterpretedOption(Builder builder) {
                if (this.uninterpretedOptionBuilder_ == null) {
                    ensureUninterpretedOptionIsMutable();
                    this.uninterpretedOption_.add(builder.build());
                    onChanged();
                } else {
                    this.uninterpretedOptionBuilder_.addMessage(builder.build());
                }
                return this;
            }

            public Builder addUninterpretedOption(int i, Builder builder) {
                if (this.uninterpretedOptionBuilder_ == null) {
                    ensureUninterpretedOptionIsMutable();
                    this.uninterpretedOption_.add(i, builder.build());
                    onChanged();
                } else {
                    this.uninterpretedOptionBuilder_.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllUninterpretedOption(Iterable<? extends UninterpretedOption> iterable) {
                if (this.uninterpretedOptionBuilder_ == null) {
                    ensureUninterpretedOptionIsMutable();
                    com.google.protobuf.AbstractMessageLite.Builder.addAll(iterable, this.uninterpretedOption_);
                    onChanged();
                } else {
                    this.uninterpretedOptionBuilder_.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearUninterpretedOption() {
                if (this.uninterpretedOptionBuilder_ == null) {
                    this.uninterpretedOption_ = Collections.emptyList();
                    this.bitField0_ &= -3;
                    onChanged();
                } else {
                    this.uninterpretedOptionBuilder_.clear();
                }
                return this;
            }

            public Builder removeUninterpretedOption(int i) {
                if (this.uninterpretedOptionBuilder_ == null) {
                    ensureUninterpretedOptionIsMutable();
                    this.uninterpretedOption_.remove(i);
                    onChanged();
                } else {
                    this.uninterpretedOptionBuilder_.remove(i);
                }
                return this;
            }

            public Builder getUninterpretedOptionBuilder(int i) {
                return (Builder) getUninterpretedOptionFieldBuilder().getBuilder(i);
            }

            public UninterpretedOptionOrBuilder getUninterpretedOptionOrBuilder(int i) {
                if (this.uninterpretedOptionBuilder_ == null) {
                    return (UninterpretedOptionOrBuilder) this.uninterpretedOption_.get(i);
                }
                return (UninterpretedOptionOrBuilder) this.uninterpretedOptionBuilder_.getMessageOrBuilder(i);
            }

            public List<? extends UninterpretedOptionOrBuilder> getUninterpretedOptionOrBuilderList() {
                if (this.uninterpretedOptionBuilder_ != null) {
                    return this.uninterpretedOptionBuilder_.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.uninterpretedOption_);
            }

            public Builder addUninterpretedOptionBuilder() {
                return (Builder) getUninterpretedOptionFieldBuilder().addBuilder(UninterpretedOption.getDefaultInstance());
            }

            public Builder addUninterpretedOptionBuilder(int i) {
                return (Builder) getUninterpretedOptionFieldBuilder().addBuilder(i, UninterpretedOption.getDefaultInstance());
            }

            public List<Builder> getUninterpretedOptionBuilderList() {
                return getUninterpretedOptionFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<UninterpretedOption, Builder, UninterpretedOptionOrBuilder> getUninterpretedOptionFieldBuilder() {
                if (this.uninterpretedOptionBuilder_ == null) {
                    this.uninterpretedOptionBuilder_ = new RepeatedFieldBuilder<>(this.uninterpretedOption_, (this.bitField0_ & 2) == 2, getParentForChildren(), isClean());
                    this.uninterpretedOption_ = null;
                }
                return this.uninterpretedOptionBuilder_;
            }
        }

        private EnumValueOptions(ExtendableBuilder<EnumValueOptions, ?> extendableBuilder) {
            super(extendableBuilder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = extendableBuilder.getUnknownFields();
        }

        private EnumValueOptions(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static EnumValueOptions getDefaultInstance() {
            return defaultInstance;
        }

        public EnumValueOptions getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private EnumValueOptions(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.deprecated_ = codedInputStream.readBool();
                            break;
                        case 7994:
                            if (!(z2 & true)) {
                                this.uninterpretedOption_ = new ArrayList();
                                z2 |= true;
                            }
                            this.uninterpretedOption_.add(codedInputStream.readMessage(UninterpretedOption.PARSER, extensionRegistryLite));
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
                        this.uninterpretedOption_ = Collections.unmodifiableList(this.uninterpretedOption_);
                    }
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            if (z2 & true) {
                this.uninterpretedOption_ = Collections.unmodifiableList(this.uninterpretedOption_);
            }
            this.unknownFields = newBuilder.build();
            makeExtensionsImmutable();
        }

        public static final Descriptor getDescriptor() {
            return DescriptorProtos.internal_static_google_protobuf_EnumValueOptions_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return DescriptorProtos.internal_static_google_protobuf_EnumValueOptions_fieldAccessorTable.ensureFieldAccessorsInitialized(EnumValueOptions.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<EnumValueOptions> getParserForType() {
            return PARSER;
        }

        public boolean hasDeprecated() {
            return (this.bitField0_ & 1) == 1;
        }

        public boolean getDeprecated() {
            return this.deprecated_;
        }

        public List<UninterpretedOption> getUninterpretedOptionList() {
            return this.uninterpretedOption_;
        }

        public List<? extends UninterpretedOptionOrBuilder> getUninterpretedOptionOrBuilderList() {
            return this.uninterpretedOption_;
        }

        public int getUninterpretedOptionCount() {
            return this.uninterpretedOption_.size();
        }

        public UninterpretedOption getUninterpretedOption(int i) {
            return (UninterpretedOption) this.uninterpretedOption_.get(i);
        }

        public UninterpretedOptionOrBuilder getUninterpretedOptionOrBuilder(int i) {
            return (UninterpretedOptionOrBuilder) this.uninterpretedOption_.get(i);
        }

        private void initFields() {
            this.deprecated_ = false;
            this.uninterpretedOption_ = Collections.emptyList();
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            for (int i = 0; i < getUninterpretedOptionCount(); i++) {
                if (!getUninterpretedOption(i).isInitialized()) {
                    this.memoizedIsInitialized = 0;
                    return false;
                }
            }
            if (!extensionsAreInitialized()) {
                this.memoizedIsInitialized = 0;
                return false;
            }
            this.memoizedIsInitialized = 1;
            return true;
        }

        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            ExtensionWriter newExtensionWriter = newExtensionWriter();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeBool(1, this.deprecated_);
            }
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.uninterpretedOption_.size()) {
                    codedOutputStream.writeMessage(999, (MessageLite) this.uninterpretedOption_.get(i2));
                    i = i2 + 1;
                } else {
                    newExtensionWriter.writeUntil(PKIFailureInfo.duplicateCertReq, codedOutputStream);
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
                i = CodedOutputStream.computeBoolSize(1, this.deprecated_) + 0;
            } else {
                i = 0;
            }
            while (true) {
                int i4 = i;
                if (i2 < this.uninterpretedOption_.size()) {
                    i = CodedOutputStream.computeMessageSize(999, (MessageLite) this.uninterpretedOption_.get(i2)) + i4;
                    i2++;
                } else {
                    int extensionsSerializedSize = extensionsSerializedSize() + i4 + getUnknownFields().getSerializedSize();
                    this.memoizedSerializedSize = extensionsSerializedSize;
                    return extensionsSerializedSize;
                }
            }
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static EnumValueOptions parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (EnumValueOptions) PARSER.parseFrom(byteString);
        }

        public static EnumValueOptions parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (EnumValueOptions) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static EnumValueOptions parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (EnumValueOptions) PARSER.parseFrom(bArr);
        }

        public static EnumValueOptions parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (EnumValueOptions) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static EnumValueOptions parseFrom(InputStream inputStream) throws IOException {
            return (EnumValueOptions) PARSER.parseFrom(inputStream);
        }

        public static EnumValueOptions parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (EnumValueOptions) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static EnumValueOptions parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (EnumValueOptions) PARSER.parseDelimitedFrom(inputStream);
        }

        public static EnumValueOptions parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (EnumValueOptions) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static EnumValueOptions parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (EnumValueOptions) PARSER.parseFrom(codedInputStream);
        }

        public static EnumValueOptions parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (EnumValueOptions) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(EnumValueOptions enumValueOptions) {
            return newBuilder().mergeFrom(enumValueOptions);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface EnumValueOptionsOrBuilder extends ExtendableMessageOrBuilder<EnumValueOptions> {
        boolean getDeprecated();

        UninterpretedOption getUninterpretedOption(int i);

        int getUninterpretedOptionCount();

        List<UninterpretedOption> getUninterpretedOptionList();

        UninterpretedOptionOrBuilder getUninterpretedOptionOrBuilder(int i);

        List<? extends UninterpretedOptionOrBuilder> getUninterpretedOptionOrBuilderList();

        boolean hasDeprecated();
    }

    public static final class FieldDescriptorProto extends GeneratedMessage implements FieldDescriptorProtoOrBuilder {
        public static final int DEFAULT_VALUE_FIELD_NUMBER = 7;
        public static final int EXTENDEE_FIELD_NUMBER = 2;
        public static final int LABEL_FIELD_NUMBER = 4;
        public static final int NAME_FIELD_NUMBER = 1;
        public static final int NUMBER_FIELD_NUMBER = 3;
        public static final int ONEOF_INDEX_FIELD_NUMBER = 9;
        public static final int OPTIONS_FIELD_NUMBER = 8;
        public static Parser<FieldDescriptorProto> PARSER = new AbstractParser<FieldDescriptorProto>() {
            public FieldDescriptorProto parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new FieldDescriptorProto(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int TYPE_FIELD_NUMBER = 5;
        public static final int TYPE_NAME_FIELD_NUMBER = 6;
        private static final FieldDescriptorProto defaultInstance = new FieldDescriptorProto(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public Object defaultValue_;
        /* access modifiers changed from: private */
        public Object extendee_;
        /* access modifiers changed from: private */
        public Label label_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public Object name_;
        /* access modifiers changed from: private */
        public int number_;
        /* access modifiers changed from: private */
        public int oneofIndex_;
        /* access modifiers changed from: private */
        public FieldOptions options_;
        /* access modifiers changed from: private */
        public Object typeName_;
        /* access modifiers changed from: private */
        public Type type_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements FieldDescriptorProtoOrBuilder {
            private int bitField0_;
            private Object defaultValue_;
            private Object extendee_;
            private Label label_;
            private Object name_;
            private int number_;
            private int oneofIndex_;
            private SingleFieldBuilder<FieldOptions, Builder, FieldOptionsOrBuilder> optionsBuilder_;
            private FieldOptions options_;
            private Object typeName_;
            private Type type_;

            public static final Descriptor getDescriptor() {
                return DescriptorProtos.internal_static_google_protobuf_FieldDescriptorProto_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return DescriptorProtos.internal_static_google_protobuf_FieldDescriptorProto_fieldAccessorTable.ensureFieldAccessorsInitialized(FieldDescriptorProto.class, Builder.class);
            }

            private Builder() {
                this.name_ = "";
                this.label_ = Label.LABEL_OPTIONAL;
                this.type_ = Type.TYPE_DOUBLE;
                this.typeName_ = "";
                this.extendee_ = "";
                this.defaultValue_ = "";
                this.options_ = FieldOptions.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.name_ = "";
                this.label_ = Label.LABEL_OPTIONAL;
                this.type_ = Type.TYPE_DOUBLE;
                this.typeName_ = "";
                this.extendee_ = "";
                this.defaultValue_ = "";
                this.options_ = FieldOptions.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    getOptionsFieldBuilder();
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.name_ = "";
                this.bitField0_ &= -2;
                this.number_ = 0;
                this.bitField0_ &= -3;
                this.label_ = Label.LABEL_OPTIONAL;
                this.bitField0_ &= -5;
                this.type_ = Type.TYPE_DOUBLE;
                this.bitField0_ &= -9;
                this.typeName_ = "";
                this.bitField0_ &= -17;
                this.extendee_ = "";
                this.bitField0_ &= -33;
                this.defaultValue_ = "";
                this.bitField0_ &= -65;
                this.oneofIndex_ = 0;
                this.bitField0_ &= -129;
                if (this.optionsBuilder_ == null) {
                    this.options_ = FieldOptions.getDefaultInstance();
                } else {
                    this.optionsBuilder_.clear();
                }
                this.bitField0_ &= -257;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return DescriptorProtos.internal_static_google_protobuf_FieldDescriptorProto_descriptor;
            }

            public FieldDescriptorProto getDefaultInstanceForType() {
                return FieldDescriptorProto.getDefaultInstance();
            }

            public FieldDescriptorProto build() {
                FieldDescriptorProto buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public FieldDescriptorProto buildPartial() {
                int i;
                int i2 = 1;
                FieldDescriptorProto fieldDescriptorProto = new FieldDescriptorProto((com.google.protobuf.GeneratedMessage.Builder) this);
                int i3 = this.bitField0_;
                if ((i3 & 1) != 1) {
                    i2 = 0;
                }
                fieldDescriptorProto.name_ = this.name_;
                if ((i3 & 2) == 2) {
                    i2 |= 2;
                }
                fieldDescriptorProto.number_ = this.number_;
                if ((i3 & 4) == 4) {
                    i2 |= 4;
                }
                fieldDescriptorProto.label_ = this.label_;
                if ((i3 & 8) == 8) {
                    i2 |= 8;
                }
                fieldDescriptorProto.type_ = this.type_;
                if ((i3 & 16) == 16) {
                    i2 |= 16;
                }
                fieldDescriptorProto.typeName_ = this.typeName_;
                if ((i3 & 32) == 32) {
                    i2 |= 32;
                }
                fieldDescriptorProto.extendee_ = this.extendee_;
                if ((i3 & 64) == 64) {
                    i2 |= 64;
                }
                fieldDescriptorProto.defaultValue_ = this.defaultValue_;
                if ((i3 & 128) == 128) {
                    i2 |= 128;
                }
                fieldDescriptorProto.oneofIndex_ = this.oneofIndex_;
                if ((i3 & 256) == 256) {
                    i = i2 | 256;
                } else {
                    i = i2;
                }
                if (this.optionsBuilder_ == null) {
                    fieldDescriptorProto.options_ = this.options_;
                } else {
                    fieldDescriptorProto.options_ = (FieldOptions) this.optionsBuilder_.build();
                }
                fieldDescriptorProto.bitField0_ = i;
                onBuilt();
                return fieldDescriptorProto;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof FieldDescriptorProto) {
                    return mergeFrom((FieldDescriptorProto) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(FieldDescriptorProto fieldDescriptorProto) {
                if (fieldDescriptorProto != FieldDescriptorProto.getDefaultInstance()) {
                    if (fieldDescriptorProto.hasName()) {
                        this.bitField0_ |= 1;
                        this.name_ = fieldDescriptorProto.name_;
                        onChanged();
                    }
                    if (fieldDescriptorProto.hasNumber()) {
                        setNumber(fieldDescriptorProto.getNumber());
                    }
                    if (fieldDescriptorProto.hasLabel()) {
                        setLabel(fieldDescriptorProto.getLabel());
                    }
                    if (fieldDescriptorProto.hasType()) {
                        setType(fieldDescriptorProto.getType());
                    }
                    if (fieldDescriptorProto.hasTypeName()) {
                        this.bitField0_ |= 16;
                        this.typeName_ = fieldDescriptorProto.typeName_;
                        onChanged();
                    }
                    if (fieldDescriptorProto.hasExtendee()) {
                        this.bitField0_ |= 32;
                        this.extendee_ = fieldDescriptorProto.extendee_;
                        onChanged();
                    }
                    if (fieldDescriptorProto.hasDefaultValue()) {
                        this.bitField0_ |= 64;
                        this.defaultValue_ = fieldDescriptorProto.defaultValue_;
                        onChanged();
                    }
                    if (fieldDescriptorProto.hasOneofIndex()) {
                        setOneofIndex(fieldDescriptorProto.getOneofIndex());
                    }
                    if (fieldDescriptorProto.hasOptions()) {
                        mergeOptions(fieldDescriptorProto.getOptions());
                    }
                    mergeUnknownFields(fieldDescriptorProto.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                if (!hasOptions() || getOptions().isInitialized()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                FieldDescriptorProto fieldDescriptorProto;
                FieldDescriptorProto fieldDescriptorProto2;
                try {
                    FieldDescriptorProto fieldDescriptorProto3 = (FieldDescriptorProto) FieldDescriptorProto.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (fieldDescriptorProto3 != null) {
                        mergeFrom(fieldDescriptorProto3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    fieldDescriptorProto2 = (FieldDescriptorProto) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    fieldDescriptorProto = fieldDescriptorProto2;
                    th = th2;
                }
                if (fieldDescriptorProto != null) {
                    mergeFrom(fieldDescriptorProto);
                }
                throw th;
            }

            public boolean hasName() {
                return (this.bitField0_ & 1) == 1;
            }

            public String getName() {
                Object obj = this.name_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.name_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getNameBytes() {
                Object obj = this.name_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.name_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setName(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.name_ = str;
                onChanged();
                return this;
            }

            public Builder clearName() {
                this.bitField0_ &= -2;
                this.name_ = FieldDescriptorProto.getDefaultInstance().getName();
                onChanged();
                return this;
            }

            public Builder setNameBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.name_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasNumber() {
                return (this.bitField0_ & 2) == 2;
            }

            public int getNumber() {
                return this.number_;
            }

            public Builder setNumber(int i) {
                this.bitField0_ |= 2;
                this.number_ = i;
                onChanged();
                return this;
            }

            public Builder clearNumber() {
                this.bitField0_ &= -3;
                this.number_ = 0;
                onChanged();
                return this;
            }

            public boolean hasLabel() {
                return (this.bitField0_ & 4) == 4;
            }

            public Label getLabel() {
                return this.label_;
            }

            public Builder setLabel(Label label) {
                if (label == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.label_ = label;
                onChanged();
                return this;
            }

            public Builder clearLabel() {
                this.bitField0_ &= -5;
                this.label_ = Label.LABEL_OPTIONAL;
                onChanged();
                return this;
            }

            public boolean hasType() {
                return (this.bitField0_ & 8) == 8;
            }

            public Type getType() {
                return this.type_;
            }

            public Builder setType(Type type) {
                if (type == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.type_ = type;
                onChanged();
                return this;
            }

            public Builder clearType() {
                this.bitField0_ &= -9;
                this.type_ = Type.TYPE_DOUBLE;
                onChanged();
                return this;
            }

            public boolean hasTypeName() {
                return (this.bitField0_ & 16) == 16;
            }

            public String getTypeName() {
                Object obj = this.typeName_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.typeName_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getTypeNameBytes() {
                Object obj = this.typeName_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.typeName_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setTypeName(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 16;
                this.typeName_ = str;
                onChanged();
                return this;
            }

            public Builder clearTypeName() {
                this.bitField0_ &= -17;
                this.typeName_ = FieldDescriptorProto.getDefaultInstance().getTypeName();
                onChanged();
                return this;
            }

            public Builder setTypeNameBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 16;
                this.typeName_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasExtendee() {
                return (this.bitField0_ & 32) == 32;
            }

            public String getExtendee() {
                Object obj = this.extendee_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.extendee_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getExtendeeBytes() {
                Object obj = this.extendee_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.extendee_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setExtendee(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 32;
                this.extendee_ = str;
                onChanged();
                return this;
            }

            public Builder clearExtendee() {
                this.bitField0_ &= -33;
                this.extendee_ = FieldDescriptorProto.getDefaultInstance().getExtendee();
                onChanged();
                return this;
            }

            public Builder setExtendeeBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 32;
                this.extendee_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasDefaultValue() {
                return (this.bitField0_ & 64) == 64;
            }

            public String getDefaultValue() {
                Object obj = this.defaultValue_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.defaultValue_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getDefaultValueBytes() {
                Object obj = this.defaultValue_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.defaultValue_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setDefaultValue(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 64;
                this.defaultValue_ = str;
                onChanged();
                return this;
            }

            public Builder clearDefaultValue() {
                this.bitField0_ &= -65;
                this.defaultValue_ = FieldDescriptorProto.getDefaultInstance().getDefaultValue();
                onChanged();
                return this;
            }

            public Builder setDefaultValueBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 64;
                this.defaultValue_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasOneofIndex() {
                return (this.bitField0_ & 128) == 128;
            }

            public int getOneofIndex() {
                return this.oneofIndex_;
            }

            public Builder setOneofIndex(int i) {
                this.bitField0_ |= 128;
                this.oneofIndex_ = i;
                onChanged();
                return this;
            }

            public Builder clearOneofIndex() {
                this.bitField0_ &= -129;
                this.oneofIndex_ = 0;
                onChanged();
                return this;
            }

            public boolean hasOptions() {
                return (this.bitField0_ & 256) == 256;
            }

            public FieldOptions getOptions() {
                if (this.optionsBuilder_ == null) {
                    return this.options_;
                }
                return (FieldOptions) this.optionsBuilder_.getMessage();
            }

            public Builder setOptions(FieldOptions fieldOptions) {
                if (this.optionsBuilder_ != null) {
                    this.optionsBuilder_.setMessage(fieldOptions);
                } else if (fieldOptions == null) {
                    throw new NullPointerException();
                } else {
                    this.options_ = fieldOptions;
                    onChanged();
                }
                this.bitField0_ |= 256;
                return this;
            }

            public Builder setOptions(Builder builder) {
                if (this.optionsBuilder_ == null) {
                    this.options_ = builder.build();
                    onChanged();
                } else {
                    this.optionsBuilder_.setMessage(builder.build());
                }
                this.bitField0_ |= 256;
                return this;
            }

            public Builder mergeOptions(FieldOptions fieldOptions) {
                if (this.optionsBuilder_ == null) {
                    if ((this.bitField0_ & 256) != 256 || this.options_ == FieldOptions.getDefaultInstance()) {
                        this.options_ = fieldOptions;
                    } else {
                        this.options_ = FieldOptions.newBuilder(this.options_).mergeFrom(fieldOptions).buildPartial();
                    }
                    onChanged();
                } else {
                    this.optionsBuilder_.mergeFrom(fieldOptions);
                }
                this.bitField0_ |= 256;
                return this;
            }

            public Builder clearOptions() {
                if (this.optionsBuilder_ == null) {
                    this.options_ = FieldOptions.getDefaultInstance();
                    onChanged();
                } else {
                    this.optionsBuilder_.clear();
                }
                this.bitField0_ &= -257;
                return this;
            }

            public Builder getOptionsBuilder() {
                this.bitField0_ |= 256;
                onChanged();
                return (Builder) getOptionsFieldBuilder().getBuilder();
            }

            public FieldOptionsOrBuilder getOptionsOrBuilder() {
                if (this.optionsBuilder_ != null) {
                    return (FieldOptionsOrBuilder) this.optionsBuilder_.getMessageOrBuilder();
                }
                return this.options_;
            }

            private SingleFieldBuilder<FieldOptions, Builder, FieldOptionsOrBuilder> getOptionsFieldBuilder() {
                if (this.optionsBuilder_ == null) {
                    this.optionsBuilder_ = new SingleFieldBuilder<>(getOptions(), getParentForChildren(), isClean());
                    this.options_ = null;
                }
                return this.optionsBuilder_;
            }
        }

        public enum Label implements ProtocolMessageEnum {
            LABEL_OPTIONAL(0, 1),
            LABEL_REQUIRED(1, 2),
            LABEL_REPEATED(2, 3);
            
            public static final int LABEL_OPTIONAL_VALUE = 1;
            public static final int LABEL_REPEATED_VALUE = 3;
            public static final int LABEL_REQUIRED_VALUE = 2;
            private static final Label[] VALUES = null;
            private static EnumLiteMap<Label> internalValueMap;
            private final int index;
            private final int value;

            static {
                internalValueMap = new EnumLiteMap<Label>() {
                    public Label findValueByNumber(int i) {
                        return Label.valueOf(i);
                    }
                };
                VALUES = values();
            }

            public final int getNumber() {
                return this.value;
            }

            public static Label valueOf(int i) {
                switch (i) {
                    case 1:
                        return LABEL_OPTIONAL;
                    case 2:
                        return LABEL_REQUIRED;
                    case 3:
                        return LABEL_REPEATED;
                    default:
                        return null;
                }
            }

            public static EnumLiteMap<Label> internalGetValueMap() {
                return internalValueMap;
            }

            public final EnumValueDescriptor getValueDescriptor() {
                return (EnumValueDescriptor) getDescriptor().getValues().get(this.index);
            }

            public final EnumDescriptor getDescriptorForType() {
                return getDescriptor();
            }

            public static final EnumDescriptor getDescriptor() {
                return (EnumDescriptor) FieldDescriptorProto.getDescriptor().getEnumTypes().get(1);
            }

            public static Label valueOf(EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }

            private Label(int i, int i2) {
                this.index = i;
                this.value = i2;
            }
        }

        public enum Type implements ProtocolMessageEnum {
            TYPE_DOUBLE(0, 1),
            TYPE_FLOAT(1, 2),
            TYPE_INT64(2, 3),
            TYPE_UINT64(3, 4),
            TYPE_INT32(4, 5),
            TYPE_FIXED64(5, 6),
            TYPE_FIXED32(6, 7),
            TYPE_BOOL(7, 8),
            TYPE_STRING(8, 9),
            TYPE_GROUP(9, 10),
            TYPE_MESSAGE(10, 11),
            TYPE_BYTES(11, 12),
            TYPE_UINT32(12, 13),
            TYPE_ENUM(13, 14),
            TYPE_SFIXED32(14, 15),
            TYPE_SFIXED64(15, 16),
            TYPE_SINT32(16, 17),
            TYPE_SINT64(17, 18);
            
            public static final int TYPE_BOOL_VALUE = 8;
            public static final int TYPE_BYTES_VALUE = 12;
            public static final int TYPE_DOUBLE_VALUE = 1;
            public static final int TYPE_ENUM_VALUE = 14;
            public static final int TYPE_FIXED32_VALUE = 7;
            public static final int TYPE_FIXED64_VALUE = 6;
            public static final int TYPE_FLOAT_VALUE = 2;
            public static final int TYPE_GROUP_VALUE = 10;
            public static final int TYPE_INT32_VALUE = 5;
            public static final int TYPE_INT64_VALUE = 3;
            public static final int TYPE_MESSAGE_VALUE = 11;
            public static final int TYPE_SFIXED32_VALUE = 15;
            public static final int TYPE_SFIXED64_VALUE = 16;
            public static final int TYPE_SINT32_VALUE = 17;
            public static final int TYPE_SINT64_VALUE = 18;
            public static final int TYPE_STRING_VALUE = 9;
            public static final int TYPE_UINT32_VALUE = 13;
            public static final int TYPE_UINT64_VALUE = 4;
            private static final Type[] VALUES = null;
            private static EnumLiteMap<Type> internalValueMap;
            private final int index;
            private final int value;

            static {
                internalValueMap = new EnumLiteMap<Type>() {
                    public Type findValueByNumber(int i) {
                        return Type.valueOf(i);
                    }
                };
                VALUES = values();
            }

            public final int getNumber() {
                return this.value;
            }

            public static Type valueOf(int i) {
                switch (i) {
                    case 1:
                        return TYPE_DOUBLE;
                    case 2:
                        return TYPE_FLOAT;
                    case 3:
                        return TYPE_INT64;
                    case 4:
                        return TYPE_UINT64;
                    case 5:
                        return TYPE_INT32;
                    case 6:
                        return TYPE_FIXED64;
                    case 7:
                        return TYPE_FIXED32;
                    case 8:
                        return TYPE_BOOL;
                    case 9:
                        return TYPE_STRING;
                    case 10:
                        return TYPE_GROUP;
                    case 11:
                        return TYPE_MESSAGE;
                    case 12:
                        return TYPE_BYTES;
                    case 13:
                        return TYPE_UINT32;
                    case 14:
                        return TYPE_ENUM;
                    case 15:
                        return TYPE_SFIXED32;
                    case 16:
                        return TYPE_SFIXED64;
                    case 17:
                        return TYPE_SINT32;
                    case 18:
                        return TYPE_SINT64;
                    default:
                        return null;
                }
            }

            public static EnumLiteMap<Type> internalGetValueMap() {
                return internalValueMap;
            }

            public final EnumValueDescriptor getValueDescriptor() {
                return (EnumValueDescriptor) getDescriptor().getValues().get(this.index);
            }

            public final EnumDescriptor getDescriptorForType() {
                return getDescriptor();
            }

            public static final EnumDescriptor getDescriptor() {
                return (EnumDescriptor) FieldDescriptorProto.getDescriptor().getEnumTypes().get(0);
            }

            public static Type valueOf(EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }

            private Type(int i, int i2) {
                this.index = i;
                this.value = i2;
            }
        }

        private FieldDescriptorProto(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private FieldDescriptorProto(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static FieldDescriptorProto getDefaultInstance() {
            return defaultInstance;
        }

        public FieldDescriptorProto getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private FieldDescriptorProto(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            boolean z;
            Builder builder;
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
                            continue;
                        case 10:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 1;
                            this.name_ = readBytes;
                            z = z2;
                            continue;
                        case 18:
                            ByteString readBytes2 = codedInputStream.readBytes();
                            this.bitField0_ |= 32;
                            this.extendee_ = readBytes2;
                            z = z2;
                            continue;
                        case 24:
                            this.bitField0_ |= 2;
                            this.number_ = codedInputStream.readInt32();
                            z = z2;
                            continue;
                        case 32:
                            int readEnum = codedInputStream.readEnum();
                            Label valueOf = Label.valueOf(readEnum);
                            if (valueOf != null) {
                                this.bitField0_ |= 4;
                                this.label_ = valueOf;
                                z = z2;
                                break;
                            } else {
                                newBuilder.mergeVarintField(4, readEnum);
                                z = z2;
                                continue;
                            }
                        case 40:
                            int readEnum2 = codedInputStream.readEnum();
                            Type valueOf2 = Type.valueOf(readEnum2);
                            if (valueOf2 != null) {
                                this.bitField0_ |= 8;
                                this.type_ = valueOf2;
                                z = z2;
                                break;
                            } else {
                                newBuilder.mergeVarintField(5, readEnum2);
                                z = z2;
                                continue;
                            }
                        case 50:
                            ByteString readBytes3 = codedInputStream.readBytes();
                            this.bitField0_ |= 16;
                            this.typeName_ = readBytes3;
                            z = z2;
                            continue;
                        case 58:
                            ByteString readBytes4 = codedInputStream.readBytes();
                            this.bitField0_ |= 64;
                            this.defaultValue_ = readBytes4;
                            z = z2;
                            continue;
                        case 66:
                            if ((this.bitField0_ & 256) == 256) {
                                builder = this.options_.toBuilder();
                            } else {
                                builder = null;
                            }
                            this.options_ = (FieldOptions) codedInputStream.readMessage(FieldOptions.PARSER, extensionRegistryLite);
                            if (builder != null) {
                                builder.mergeFrom(this.options_);
                                this.options_ = builder.buildPartial();
                            }
                            this.bitField0_ |= 256;
                            z = z2;
                            continue;
                        case 72:
                            this.bitField0_ |= 128;
                            this.oneofIndex_ = codedInputStream.readInt32();
                            break;
                        default:
                            if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                                z = true;
                                continue;
                            }
                            break;
                    }
                    z = z2;
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
            return DescriptorProtos.internal_static_google_protobuf_FieldDescriptorProto_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return DescriptorProtos.internal_static_google_protobuf_FieldDescriptorProto_fieldAccessorTable.ensureFieldAccessorsInitialized(FieldDescriptorProto.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<FieldDescriptorProto> getParserForType() {
            return PARSER;
        }

        public boolean hasName() {
            return (this.bitField0_ & 1) == 1;
        }

        public String getName() {
            Object obj = this.name_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.name_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getNameBytes() {
            Object obj = this.name_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.name_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasNumber() {
            return (this.bitField0_ & 2) == 2;
        }

        public int getNumber() {
            return this.number_;
        }

        public boolean hasLabel() {
            return (this.bitField0_ & 4) == 4;
        }

        public Label getLabel() {
            return this.label_;
        }

        public boolean hasType() {
            return (this.bitField0_ & 8) == 8;
        }

        public Type getType() {
            return this.type_;
        }

        public boolean hasTypeName() {
            return (this.bitField0_ & 16) == 16;
        }

        public String getTypeName() {
            Object obj = this.typeName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.typeName_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getTypeNameBytes() {
            Object obj = this.typeName_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.typeName_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasExtendee() {
            return (this.bitField0_ & 32) == 32;
        }

        public String getExtendee() {
            Object obj = this.extendee_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.extendee_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getExtendeeBytes() {
            Object obj = this.extendee_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.extendee_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasDefaultValue() {
            return (this.bitField0_ & 64) == 64;
        }

        public String getDefaultValue() {
            Object obj = this.defaultValue_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.defaultValue_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getDefaultValueBytes() {
            Object obj = this.defaultValue_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.defaultValue_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasOneofIndex() {
            return (this.bitField0_ & 128) == 128;
        }

        public int getOneofIndex() {
            return this.oneofIndex_;
        }

        public boolean hasOptions() {
            return (this.bitField0_ & 256) == 256;
        }

        public FieldOptions getOptions() {
            return this.options_;
        }

        public FieldOptionsOrBuilder getOptionsOrBuilder() {
            return this.options_;
        }

        private void initFields() {
            this.name_ = "";
            this.number_ = 0;
            this.label_ = Label.LABEL_OPTIONAL;
            this.type_ = Type.TYPE_DOUBLE;
            this.typeName_ = "";
            this.extendee_ = "";
            this.defaultValue_ = "";
            this.oneofIndex_ = 0;
            this.options_ = FieldOptions.getDefaultInstance();
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasOptions() || getOptions().isInitialized()) {
                this.memoizedIsInitialized = 1;
                return true;
            }
            this.memoizedIsInitialized = 0;
            return false;
        }

        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeBytes(1, getNameBytes());
            }
            if ((this.bitField0_ & 32) == 32) {
                codedOutputStream.writeBytes(2, getExtendeeBytes());
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeInt32(3, this.number_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeEnum(4, this.label_.getNumber());
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeEnum(5, this.type_.getNumber());
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeBytes(6, getTypeNameBytes());
            }
            if ((this.bitField0_ & 64) == 64) {
                codedOutputStream.writeBytes(7, getDefaultValueBytes());
            }
            if ((this.bitField0_ & 256) == 256) {
                codedOutputStream.writeMessage(8, this.options_);
            }
            if ((this.bitField0_ & 128) == 128) {
                codedOutputStream.writeInt32(9, this.oneofIndex_);
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
                i2 = 0 + CodedOutputStream.computeBytesSize(1, getNameBytes());
            }
            if ((this.bitField0_ & 32) == 32) {
                i2 += CodedOutputStream.computeBytesSize(2, getExtendeeBytes());
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeInt32Size(3, this.number_);
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeEnumSize(4, this.label_.getNumber());
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeEnumSize(5, this.type_.getNumber());
            }
            if ((this.bitField0_ & 16) == 16) {
                i2 += CodedOutputStream.computeBytesSize(6, getTypeNameBytes());
            }
            if ((this.bitField0_ & 64) == 64) {
                i2 += CodedOutputStream.computeBytesSize(7, getDefaultValueBytes());
            }
            if ((this.bitField0_ & 256) == 256) {
                i2 += CodedOutputStream.computeMessageSize(8, this.options_);
            }
            if ((this.bitField0_ & 128) == 128) {
                i2 += CodedOutputStream.computeInt32Size(9, this.oneofIndex_);
            }
            int serializedSize = i2 + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static FieldDescriptorProto parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (FieldDescriptorProto) PARSER.parseFrom(byteString);
        }

        public static FieldDescriptorProto parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (FieldDescriptorProto) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static FieldDescriptorProto parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (FieldDescriptorProto) PARSER.parseFrom(bArr);
        }

        public static FieldDescriptorProto parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (FieldDescriptorProto) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static FieldDescriptorProto parseFrom(InputStream inputStream) throws IOException {
            return (FieldDescriptorProto) PARSER.parseFrom(inputStream);
        }

        public static FieldDescriptorProto parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (FieldDescriptorProto) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static FieldDescriptorProto parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (FieldDescriptorProto) PARSER.parseDelimitedFrom(inputStream);
        }

        public static FieldDescriptorProto parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (FieldDescriptorProto) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static FieldDescriptorProto parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (FieldDescriptorProto) PARSER.parseFrom(codedInputStream);
        }

        public static FieldDescriptorProto parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (FieldDescriptorProto) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(FieldDescriptorProto fieldDescriptorProto) {
            return newBuilder().mergeFrom(fieldDescriptorProto);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface FieldDescriptorProtoOrBuilder extends MessageOrBuilder {
        String getDefaultValue();

        ByteString getDefaultValueBytes();

        String getExtendee();

        ByteString getExtendeeBytes();

        Label getLabel();

        String getName();

        ByteString getNameBytes();

        int getNumber();

        int getOneofIndex();

        FieldOptions getOptions();

        FieldOptionsOrBuilder getOptionsOrBuilder();

        Type getType();

        String getTypeName();

        ByteString getTypeNameBytes();

        boolean hasDefaultValue();

        boolean hasExtendee();

        boolean hasLabel();

        boolean hasName();

        boolean hasNumber();

        boolean hasOneofIndex();

        boolean hasOptions();

        boolean hasType();

        boolean hasTypeName();
    }

    public static final class FieldOptions extends ExtendableMessage<FieldOptions> implements FieldOptionsOrBuilder {
        public static final int CTYPE_FIELD_NUMBER = 1;
        public static final int DEPRECATED_FIELD_NUMBER = 3;
        public static final int EXPERIMENTAL_MAP_KEY_FIELD_NUMBER = 9;
        public static final int LAZY_FIELD_NUMBER = 5;
        public static final int PACKED_FIELD_NUMBER = 2;
        public static Parser<FieldOptions> PARSER = new AbstractParser<FieldOptions>() {
            public FieldOptions parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new FieldOptions(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int UNINTERPRETED_OPTION_FIELD_NUMBER = 999;
        public static final int WEAK_FIELD_NUMBER = 10;
        private static final FieldOptions defaultInstance = new FieldOptions(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public CType ctype_;
        /* access modifiers changed from: private */
        public boolean deprecated_;
        /* access modifiers changed from: private */
        public Object experimentalMapKey_;
        /* access modifiers changed from: private */
        public boolean lazy_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public boolean packed_;
        /* access modifiers changed from: private */
        public List<UninterpretedOption> uninterpretedOption_;
        private final UnknownFieldSet unknownFields;
        /* access modifiers changed from: private */
        public boolean weak_;

        public static final class Builder extends ExtendableBuilder<FieldOptions, Builder> implements FieldOptionsOrBuilder {
            private int bitField0_;
            private CType ctype_;
            private boolean deprecated_;
            private Object experimentalMapKey_;
            private boolean lazy_;
            private boolean packed_;
            private RepeatedFieldBuilder<UninterpretedOption, Builder, UninterpretedOptionOrBuilder> uninterpretedOptionBuilder_;
            private List<UninterpretedOption> uninterpretedOption_;
            private boolean weak_;

            public static final Descriptor getDescriptor() {
                return DescriptorProtos.internal_static_google_protobuf_FieldOptions_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return DescriptorProtos.internal_static_google_protobuf_FieldOptions_fieldAccessorTable.ensureFieldAccessorsInitialized(FieldOptions.class, Builder.class);
            }

            private Builder() {
                this.ctype_ = CType.STRING;
                this.experimentalMapKey_ = "";
                this.uninterpretedOption_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.ctype_ = CType.STRING;
                this.experimentalMapKey_ = "";
                this.uninterpretedOption_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    getUninterpretedOptionFieldBuilder();
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.ctype_ = CType.STRING;
                this.bitField0_ &= -2;
                this.packed_ = false;
                this.bitField0_ &= -3;
                this.lazy_ = false;
                this.bitField0_ &= -5;
                this.deprecated_ = false;
                this.bitField0_ &= -9;
                this.experimentalMapKey_ = "";
                this.bitField0_ &= -17;
                this.weak_ = false;
                this.bitField0_ &= -33;
                if (this.uninterpretedOptionBuilder_ == null) {
                    this.uninterpretedOption_ = Collections.emptyList();
                    this.bitField0_ &= -65;
                } else {
                    this.uninterpretedOptionBuilder_.clear();
                }
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return DescriptorProtos.internal_static_google_protobuf_FieldOptions_descriptor;
            }

            public FieldOptions getDefaultInstanceForType() {
                return FieldOptions.getDefaultInstance();
            }

            public FieldOptions build() {
                FieldOptions buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public FieldOptions buildPartial() {
                int i = 1;
                FieldOptions fieldOptions = new FieldOptions((ExtendableBuilder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                fieldOptions.ctype_ = this.ctype_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                fieldOptions.packed_ = this.packed_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                fieldOptions.lazy_ = this.lazy_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                fieldOptions.deprecated_ = this.deprecated_;
                if ((i2 & 16) == 16) {
                    i |= 16;
                }
                fieldOptions.experimentalMapKey_ = this.experimentalMapKey_;
                if ((i2 & 32) == 32) {
                    i |= 32;
                }
                fieldOptions.weak_ = this.weak_;
                if (this.uninterpretedOptionBuilder_ == null) {
                    if ((this.bitField0_ & 64) == 64) {
                        this.uninterpretedOption_ = Collections.unmodifiableList(this.uninterpretedOption_);
                        this.bitField0_ &= -65;
                    }
                    fieldOptions.uninterpretedOption_ = this.uninterpretedOption_;
                } else {
                    fieldOptions.uninterpretedOption_ = this.uninterpretedOptionBuilder_.build();
                }
                fieldOptions.bitField0_ = i;
                onBuilt();
                return fieldOptions;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof FieldOptions) {
                    return mergeFrom((FieldOptions) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(FieldOptions fieldOptions) {
                RepeatedFieldBuilder<UninterpretedOption, Builder, UninterpretedOptionOrBuilder> repeatedFieldBuilder = null;
                if (fieldOptions != FieldOptions.getDefaultInstance()) {
                    if (fieldOptions.hasCtype()) {
                        setCtype(fieldOptions.getCtype());
                    }
                    if (fieldOptions.hasPacked()) {
                        setPacked(fieldOptions.getPacked());
                    }
                    if (fieldOptions.hasLazy()) {
                        setLazy(fieldOptions.getLazy());
                    }
                    if (fieldOptions.hasDeprecated()) {
                        setDeprecated(fieldOptions.getDeprecated());
                    }
                    if (fieldOptions.hasExperimentalMapKey()) {
                        this.bitField0_ |= 16;
                        this.experimentalMapKey_ = fieldOptions.experimentalMapKey_;
                        onChanged();
                    }
                    if (fieldOptions.hasWeak()) {
                        setWeak(fieldOptions.getWeak());
                    }
                    if (this.uninterpretedOptionBuilder_ == null) {
                        if (!fieldOptions.uninterpretedOption_.isEmpty()) {
                            if (this.uninterpretedOption_.isEmpty()) {
                                this.uninterpretedOption_ = fieldOptions.uninterpretedOption_;
                                this.bitField0_ &= -65;
                            } else {
                                ensureUninterpretedOptionIsMutable();
                                this.uninterpretedOption_.addAll(fieldOptions.uninterpretedOption_);
                            }
                            onChanged();
                        }
                    } else if (!fieldOptions.uninterpretedOption_.isEmpty()) {
                        if (this.uninterpretedOptionBuilder_.isEmpty()) {
                            this.uninterpretedOptionBuilder_.dispose();
                            this.uninterpretedOptionBuilder_ = null;
                            this.uninterpretedOption_ = fieldOptions.uninterpretedOption_;
                            this.bitField0_ &= -65;
                            if (GeneratedMessage.alwaysUseFieldBuilders) {
                                repeatedFieldBuilder = getUninterpretedOptionFieldBuilder();
                            }
                            this.uninterpretedOptionBuilder_ = repeatedFieldBuilder;
                        } else {
                            this.uninterpretedOptionBuilder_.addAllMessages(fieldOptions.uninterpretedOption_);
                        }
                    }
                    mergeExtensionFields(fieldOptions);
                    mergeUnknownFields(fieldOptions.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                for (int i = 0; i < getUninterpretedOptionCount(); i++) {
                    if (!getUninterpretedOption(i).isInitialized()) {
                        return false;
                    }
                }
                if (extensionsAreInitialized()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                FieldOptions fieldOptions;
                FieldOptions fieldOptions2;
                try {
                    FieldOptions fieldOptions3 = (FieldOptions) FieldOptions.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (fieldOptions3 != null) {
                        mergeFrom(fieldOptions3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    fieldOptions2 = (FieldOptions) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    fieldOptions = fieldOptions2;
                    th = th2;
                }
                if (fieldOptions != null) {
                    mergeFrom(fieldOptions);
                }
                throw th;
            }

            public boolean hasCtype() {
                return (this.bitField0_ & 1) == 1;
            }

            public CType getCtype() {
                return this.ctype_;
            }

            public Builder setCtype(CType cType) {
                if (cType == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.ctype_ = cType;
                onChanged();
                return this;
            }

            public Builder clearCtype() {
                this.bitField0_ &= -2;
                this.ctype_ = CType.STRING;
                onChanged();
                return this;
            }

            public boolean hasPacked() {
                return (this.bitField0_ & 2) == 2;
            }

            public boolean getPacked() {
                return this.packed_;
            }

            public Builder setPacked(boolean z) {
                this.bitField0_ |= 2;
                this.packed_ = z;
                onChanged();
                return this;
            }

            public Builder clearPacked() {
                this.bitField0_ &= -3;
                this.packed_ = false;
                onChanged();
                return this;
            }

            public boolean hasLazy() {
                return (this.bitField0_ & 4) == 4;
            }

            public boolean getLazy() {
                return this.lazy_;
            }

            public Builder setLazy(boolean z) {
                this.bitField0_ |= 4;
                this.lazy_ = z;
                onChanged();
                return this;
            }

            public Builder clearLazy() {
                this.bitField0_ &= -5;
                this.lazy_ = false;
                onChanged();
                return this;
            }

            public boolean hasDeprecated() {
                return (this.bitField0_ & 8) == 8;
            }

            public boolean getDeprecated() {
                return this.deprecated_;
            }

            public Builder setDeprecated(boolean z) {
                this.bitField0_ |= 8;
                this.deprecated_ = z;
                onChanged();
                return this;
            }

            public Builder clearDeprecated() {
                this.bitField0_ &= -9;
                this.deprecated_ = false;
                onChanged();
                return this;
            }

            public boolean hasExperimentalMapKey() {
                return (this.bitField0_ & 16) == 16;
            }

            public String getExperimentalMapKey() {
                Object obj = this.experimentalMapKey_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.experimentalMapKey_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getExperimentalMapKeyBytes() {
                Object obj = this.experimentalMapKey_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.experimentalMapKey_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setExperimentalMapKey(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 16;
                this.experimentalMapKey_ = str;
                onChanged();
                return this;
            }

            public Builder clearExperimentalMapKey() {
                this.bitField0_ &= -17;
                this.experimentalMapKey_ = FieldOptions.getDefaultInstance().getExperimentalMapKey();
                onChanged();
                return this;
            }

            public Builder setExperimentalMapKeyBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 16;
                this.experimentalMapKey_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasWeak() {
                return (this.bitField0_ & 32) == 32;
            }

            public boolean getWeak() {
                return this.weak_;
            }

            public Builder setWeak(boolean z) {
                this.bitField0_ |= 32;
                this.weak_ = z;
                onChanged();
                return this;
            }

            public Builder clearWeak() {
                this.bitField0_ &= -33;
                this.weak_ = false;
                onChanged();
                return this;
            }

            private void ensureUninterpretedOptionIsMutable() {
                if ((this.bitField0_ & 64) != 64) {
                    this.uninterpretedOption_ = new ArrayList(this.uninterpretedOption_);
                    this.bitField0_ |= 64;
                }
            }

            public List<UninterpretedOption> getUninterpretedOptionList() {
                if (this.uninterpretedOptionBuilder_ == null) {
                    return Collections.unmodifiableList(this.uninterpretedOption_);
                }
                return this.uninterpretedOptionBuilder_.getMessageList();
            }

            public int getUninterpretedOptionCount() {
                if (this.uninterpretedOptionBuilder_ == null) {
                    return this.uninterpretedOption_.size();
                }
                return this.uninterpretedOptionBuilder_.getCount();
            }

            public UninterpretedOption getUninterpretedOption(int i) {
                if (this.uninterpretedOptionBuilder_ == null) {
                    return (UninterpretedOption) this.uninterpretedOption_.get(i);
                }
                return (UninterpretedOption) this.uninterpretedOptionBuilder_.getMessage(i);
            }

            public Builder setUninterpretedOption(int i, UninterpretedOption uninterpretedOption) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.setMessage(i, uninterpretedOption);
                } else if (uninterpretedOption == null) {
                    throw new NullPointerException();
                } else {
                    ensureUninterpretedOptionIsMutable();
                    this.uninterpretedOption_.set(i, uninterpretedOption);
                    onChanged();
                }
                return this;
            }

            public Builder setUninterpretedOption(int i, Builder builder) {
                if (this.uninterpretedOptionBuilder_ == null) {
                    ensureUninterpretedOptionIsMutable();
                    this.uninterpretedOption_.set(i, builder.build());
                    onChanged();
                } else {
                    this.uninterpretedOptionBuilder_.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addUninterpretedOption(UninterpretedOption uninterpretedOption) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.addMessage(uninterpretedOption);
                } else if (uninterpretedOption == null) {
                    throw new NullPointerException();
                } else {
                    ensureUninterpretedOptionIsMutable();
                    this.uninterpretedOption_.add(uninterpretedOption);
                    onChanged();
                }
                return this;
            }

            public Builder addUninterpretedOption(int i, UninterpretedOption uninterpretedOption) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.addMessage(i, uninterpretedOption);
                } else if (uninterpretedOption == null) {
                    throw new NullPointerException();
                } else {
                    ensureUninterpretedOptionIsMutable();
                    this.uninterpretedOption_.add(i, uninterpretedOption);
                    onChanged();
                }
                return this;
            }

            public Builder addUninterpretedOption(Builder builder) {
                if (this.uninterpretedOptionBuilder_ == null) {
                    ensureUninterpretedOptionIsMutable();
                    this.uninterpretedOption_.add(builder.build());
                    onChanged();
                } else {
                    this.uninterpretedOptionBuilder_.addMessage(builder.build());
                }
                return this;
            }

            public Builder addUninterpretedOption(int i, Builder builder) {
                if (this.uninterpretedOptionBuilder_ == null) {
                    ensureUninterpretedOptionIsMutable();
                    this.uninterpretedOption_.add(i, builder.build());
                    onChanged();
                } else {
                    this.uninterpretedOptionBuilder_.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllUninterpretedOption(Iterable<? extends UninterpretedOption> iterable) {
                if (this.uninterpretedOptionBuilder_ == null) {
                    ensureUninterpretedOptionIsMutable();
                    com.google.protobuf.AbstractMessageLite.Builder.addAll(iterable, this.uninterpretedOption_);
                    onChanged();
                } else {
                    this.uninterpretedOptionBuilder_.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearUninterpretedOption() {
                if (this.uninterpretedOptionBuilder_ == null) {
                    this.uninterpretedOption_ = Collections.emptyList();
                    this.bitField0_ &= -65;
                    onChanged();
                } else {
                    this.uninterpretedOptionBuilder_.clear();
                }
                return this;
            }

            public Builder removeUninterpretedOption(int i) {
                if (this.uninterpretedOptionBuilder_ == null) {
                    ensureUninterpretedOptionIsMutable();
                    this.uninterpretedOption_.remove(i);
                    onChanged();
                } else {
                    this.uninterpretedOptionBuilder_.remove(i);
                }
                return this;
            }

            public Builder getUninterpretedOptionBuilder(int i) {
                return (Builder) getUninterpretedOptionFieldBuilder().getBuilder(i);
            }

            public UninterpretedOptionOrBuilder getUninterpretedOptionOrBuilder(int i) {
                if (this.uninterpretedOptionBuilder_ == null) {
                    return (UninterpretedOptionOrBuilder) this.uninterpretedOption_.get(i);
                }
                return (UninterpretedOptionOrBuilder) this.uninterpretedOptionBuilder_.getMessageOrBuilder(i);
            }

            public List<? extends UninterpretedOptionOrBuilder> getUninterpretedOptionOrBuilderList() {
                if (this.uninterpretedOptionBuilder_ != null) {
                    return this.uninterpretedOptionBuilder_.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.uninterpretedOption_);
            }

            public Builder addUninterpretedOptionBuilder() {
                return (Builder) getUninterpretedOptionFieldBuilder().addBuilder(UninterpretedOption.getDefaultInstance());
            }

            public Builder addUninterpretedOptionBuilder(int i) {
                return (Builder) getUninterpretedOptionFieldBuilder().addBuilder(i, UninterpretedOption.getDefaultInstance());
            }

            public List<Builder> getUninterpretedOptionBuilderList() {
                return getUninterpretedOptionFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<UninterpretedOption, Builder, UninterpretedOptionOrBuilder> getUninterpretedOptionFieldBuilder() {
                if (this.uninterpretedOptionBuilder_ == null) {
                    this.uninterpretedOptionBuilder_ = new RepeatedFieldBuilder<>(this.uninterpretedOption_, (this.bitField0_ & 64) == 64, getParentForChildren(), isClean());
                    this.uninterpretedOption_ = null;
                }
                return this.uninterpretedOptionBuilder_;
            }
        }

        public enum CType implements ProtocolMessageEnum {
            STRING(0, 0),
            CORD(1, 1),
            STRING_PIECE(2, 2);
            
            public static final int CORD_VALUE = 1;
            public static final int STRING_PIECE_VALUE = 2;
            public static final int STRING_VALUE = 0;
            private static final CType[] VALUES = null;
            private static EnumLiteMap<CType> internalValueMap;
            private final int index;
            private final int value;

            static {
                internalValueMap = new EnumLiteMap<CType>() {
                    public CType findValueByNumber(int i) {
                        return CType.valueOf(i);
                    }
                };
                VALUES = values();
            }

            public final int getNumber() {
                return this.value;
            }

            public static CType valueOf(int i) {
                switch (i) {
                    case 0:
                        return STRING;
                    case 1:
                        return CORD;
                    case 2:
                        return STRING_PIECE;
                    default:
                        return null;
                }
            }

            public static EnumLiteMap<CType> internalGetValueMap() {
                return internalValueMap;
            }

            public final EnumValueDescriptor getValueDescriptor() {
                return (EnumValueDescriptor) getDescriptor().getValues().get(this.index);
            }

            public final EnumDescriptor getDescriptorForType() {
                return getDescriptor();
            }

            public static final EnumDescriptor getDescriptor() {
                return (EnumDescriptor) FieldOptions.getDescriptor().getEnumTypes().get(0);
            }

            public static CType valueOf(EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }

            private CType(int i, int i2) {
                this.index = i;
                this.value = i2;
            }
        }

        private FieldOptions(ExtendableBuilder<FieldOptions, ?> extendableBuilder) {
            super(extendableBuilder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = extendableBuilder.getUnknownFields();
        }

        private FieldOptions(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static FieldOptions getDefaultInstance() {
            return defaultInstance;
        }

        public FieldOptions getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private FieldOptions(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            int readEnum = codedInputStream.readEnum();
                            CType valueOf = CType.valueOf(readEnum);
                            if (valueOf != null) {
                                this.bitField0_ |= 1;
                                this.ctype_ = valueOf;
                                break;
                            } else {
                                newBuilder.mergeVarintField(1, readEnum);
                                break;
                            }
                        case 16:
                            this.bitField0_ |= 2;
                            this.packed_ = codedInputStream.readBool();
                            break;
                        case 24:
                            this.bitField0_ |= 8;
                            this.deprecated_ = codedInputStream.readBool();
                            break;
                        case 40:
                            this.bitField0_ |= 4;
                            this.lazy_ = codedInputStream.readBool();
                            break;
                        case 74:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 16;
                            this.experimentalMapKey_ = readBytes;
                            break;
                        case 80:
                            this.bitField0_ |= 32;
                            this.weak_ = codedInputStream.readBool();
                            break;
                        case 7994:
                            if (!(z2 & true)) {
                                this.uninterpretedOption_ = new ArrayList();
                                z2 |= true;
                            }
                            this.uninterpretedOption_.add(codedInputStream.readMessage(UninterpretedOption.PARSER, extensionRegistryLite));
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
                        this.uninterpretedOption_ = Collections.unmodifiableList(this.uninterpretedOption_);
                    }
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            if (z2 & true) {
                this.uninterpretedOption_ = Collections.unmodifiableList(this.uninterpretedOption_);
            }
            this.unknownFields = newBuilder.build();
            makeExtensionsImmutable();
        }

        public static final Descriptor getDescriptor() {
            return DescriptorProtos.internal_static_google_protobuf_FieldOptions_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return DescriptorProtos.internal_static_google_protobuf_FieldOptions_fieldAccessorTable.ensureFieldAccessorsInitialized(FieldOptions.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<FieldOptions> getParserForType() {
            return PARSER;
        }

        public boolean hasCtype() {
            return (this.bitField0_ & 1) == 1;
        }

        public CType getCtype() {
            return this.ctype_;
        }

        public boolean hasPacked() {
            return (this.bitField0_ & 2) == 2;
        }

        public boolean getPacked() {
            return this.packed_;
        }

        public boolean hasLazy() {
            return (this.bitField0_ & 4) == 4;
        }

        public boolean getLazy() {
            return this.lazy_;
        }

        public boolean hasDeprecated() {
            return (this.bitField0_ & 8) == 8;
        }

        public boolean getDeprecated() {
            return this.deprecated_;
        }

        public boolean hasExperimentalMapKey() {
            return (this.bitField0_ & 16) == 16;
        }

        public String getExperimentalMapKey() {
            Object obj = this.experimentalMapKey_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.experimentalMapKey_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getExperimentalMapKeyBytes() {
            Object obj = this.experimentalMapKey_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.experimentalMapKey_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasWeak() {
            return (this.bitField0_ & 32) == 32;
        }

        public boolean getWeak() {
            return this.weak_;
        }

        public List<UninterpretedOption> getUninterpretedOptionList() {
            return this.uninterpretedOption_;
        }

        public List<? extends UninterpretedOptionOrBuilder> getUninterpretedOptionOrBuilderList() {
            return this.uninterpretedOption_;
        }

        public int getUninterpretedOptionCount() {
            return this.uninterpretedOption_.size();
        }

        public UninterpretedOption getUninterpretedOption(int i) {
            return (UninterpretedOption) this.uninterpretedOption_.get(i);
        }

        public UninterpretedOptionOrBuilder getUninterpretedOptionOrBuilder(int i) {
            return (UninterpretedOptionOrBuilder) this.uninterpretedOption_.get(i);
        }

        private void initFields() {
            this.ctype_ = CType.STRING;
            this.packed_ = false;
            this.lazy_ = false;
            this.deprecated_ = false;
            this.experimentalMapKey_ = "";
            this.weak_ = false;
            this.uninterpretedOption_ = Collections.emptyList();
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            for (int i = 0; i < getUninterpretedOptionCount(); i++) {
                if (!getUninterpretedOption(i).isInitialized()) {
                    this.memoizedIsInitialized = 0;
                    return false;
                }
            }
            if (!extensionsAreInitialized()) {
                this.memoizedIsInitialized = 0;
                return false;
            }
            this.memoizedIsInitialized = 1;
            return true;
        }

        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            ExtensionWriter newExtensionWriter = newExtensionWriter();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeEnum(1, this.ctype_.getNumber());
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeBool(2, this.packed_);
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeBool(3, this.deprecated_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBool(5, this.lazy_);
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeBytes(9, getExperimentalMapKeyBytes());
            }
            if ((this.bitField0_ & 32) == 32) {
                codedOutputStream.writeBool(10, this.weak_);
            }
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.uninterpretedOption_.size()) {
                    codedOutputStream.writeMessage(999, (MessageLite) this.uninterpretedOption_.get(i2));
                    i = i2 + 1;
                } else {
                    newExtensionWriter.writeUntil(PKIFailureInfo.duplicateCertReq, codedOutputStream);
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
                i = CodedOutputStream.computeEnumSize(1, this.ctype_.getNumber()) + 0;
            } else {
                i = 0;
            }
            if ((this.bitField0_ & 2) == 2) {
                i += CodedOutputStream.computeBoolSize(2, this.packed_);
            }
            if ((this.bitField0_ & 8) == 8) {
                i += CodedOutputStream.computeBoolSize(3, this.deprecated_);
            }
            if ((this.bitField0_ & 4) == 4) {
                i += CodedOutputStream.computeBoolSize(5, this.lazy_);
            }
            if ((this.bitField0_ & 16) == 16) {
                i += CodedOutputStream.computeBytesSize(9, getExperimentalMapKeyBytes());
            }
            if ((this.bitField0_ & 32) == 32) {
                i += CodedOutputStream.computeBoolSize(10, this.weak_);
            }
            while (true) {
                int i4 = i;
                if (i2 < this.uninterpretedOption_.size()) {
                    i = CodedOutputStream.computeMessageSize(999, (MessageLite) this.uninterpretedOption_.get(i2)) + i4;
                    i2++;
                } else {
                    int extensionsSerializedSize = extensionsSerializedSize() + i4 + getUnknownFields().getSerializedSize();
                    this.memoizedSerializedSize = extensionsSerializedSize;
                    return extensionsSerializedSize;
                }
            }
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static FieldOptions parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (FieldOptions) PARSER.parseFrom(byteString);
        }

        public static FieldOptions parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (FieldOptions) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static FieldOptions parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (FieldOptions) PARSER.parseFrom(bArr);
        }

        public static FieldOptions parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (FieldOptions) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static FieldOptions parseFrom(InputStream inputStream) throws IOException {
            return (FieldOptions) PARSER.parseFrom(inputStream);
        }

        public static FieldOptions parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (FieldOptions) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static FieldOptions parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (FieldOptions) PARSER.parseDelimitedFrom(inputStream);
        }

        public static FieldOptions parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (FieldOptions) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static FieldOptions parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (FieldOptions) PARSER.parseFrom(codedInputStream);
        }

        public static FieldOptions parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (FieldOptions) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(FieldOptions fieldOptions) {
            return newBuilder().mergeFrom(fieldOptions);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface FieldOptionsOrBuilder extends ExtendableMessageOrBuilder<FieldOptions> {
        CType getCtype();

        boolean getDeprecated();

        String getExperimentalMapKey();

        ByteString getExperimentalMapKeyBytes();

        boolean getLazy();

        boolean getPacked();

        UninterpretedOption getUninterpretedOption(int i);

        int getUninterpretedOptionCount();

        List<UninterpretedOption> getUninterpretedOptionList();

        UninterpretedOptionOrBuilder getUninterpretedOptionOrBuilder(int i);

        List<? extends UninterpretedOptionOrBuilder> getUninterpretedOptionOrBuilderList();

        boolean getWeak();

        boolean hasCtype();

        boolean hasDeprecated();

        boolean hasExperimentalMapKey();

        boolean hasLazy();

        boolean hasPacked();

        boolean hasWeak();
    }

    public static final class FileDescriptorProto extends GeneratedMessage implements FileDescriptorProtoOrBuilder {
        public static final int DEPENDENCY_FIELD_NUMBER = 3;
        public static final int ENUM_TYPE_FIELD_NUMBER = 5;
        public static final int EXTENSION_FIELD_NUMBER = 7;
        public static final int MESSAGE_TYPE_FIELD_NUMBER = 4;
        public static final int NAME_FIELD_NUMBER = 1;
        public static final int OPTIONS_FIELD_NUMBER = 8;
        public static final int PACKAGE_FIELD_NUMBER = 2;
        public static Parser<FileDescriptorProto> PARSER = new AbstractParser<FileDescriptorProto>() {
            public FileDescriptorProto parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new FileDescriptorProto(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int PUBLIC_DEPENDENCY_FIELD_NUMBER = 10;
        public static final int SERVICE_FIELD_NUMBER = 6;
        public static final int SOURCE_CODE_INFO_FIELD_NUMBER = 9;
        public static final int WEAK_DEPENDENCY_FIELD_NUMBER = 11;
        private static final FileDescriptorProto defaultInstance = new FileDescriptorProto(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public LazyStringList dependency_;
        /* access modifiers changed from: private */
        public List<EnumDescriptorProto> enumType_;
        /* access modifiers changed from: private */
        public List<FieldDescriptorProto> extension_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public List<DescriptorProto> messageType_;
        /* access modifiers changed from: private */
        public Object name_;
        /* access modifiers changed from: private */
        public FileOptions options_;
        /* access modifiers changed from: private */
        public Object package_;
        /* access modifiers changed from: private */
        public List<Integer> publicDependency_;
        /* access modifiers changed from: private */
        public List<ServiceDescriptorProto> service_;
        /* access modifiers changed from: private */
        public SourceCodeInfo sourceCodeInfo_;
        private final UnknownFieldSet unknownFields;
        /* access modifiers changed from: private */
        public List<Integer> weakDependency_;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements FileDescriptorProtoOrBuilder {
            private int bitField0_;
            private LazyStringList dependency_;
            private RepeatedFieldBuilder<EnumDescriptorProto, Builder, EnumDescriptorProtoOrBuilder> enumTypeBuilder_;
            private List<EnumDescriptorProto> enumType_;
            private RepeatedFieldBuilder<FieldDescriptorProto, Builder, FieldDescriptorProtoOrBuilder> extensionBuilder_;
            private List<FieldDescriptorProto> extension_;
            private RepeatedFieldBuilder<DescriptorProto, Builder, DescriptorProtoOrBuilder> messageTypeBuilder_;
            private List<DescriptorProto> messageType_;
            private Object name_;
            private SingleFieldBuilder<FileOptions, Builder, FileOptionsOrBuilder> optionsBuilder_;
            private FileOptions options_;
            private Object package_;
            private List<Integer> publicDependency_;
            private RepeatedFieldBuilder<ServiceDescriptorProto, Builder, ServiceDescriptorProtoOrBuilder> serviceBuilder_;
            private List<ServiceDescriptorProto> service_;
            private SingleFieldBuilder<SourceCodeInfo, Builder, SourceCodeInfoOrBuilder> sourceCodeInfoBuilder_;
            private SourceCodeInfo sourceCodeInfo_;
            private List<Integer> weakDependency_;

            public static final Descriptor getDescriptor() {
                return DescriptorProtos.internal_static_google_protobuf_FileDescriptorProto_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return DescriptorProtos.internal_static_google_protobuf_FileDescriptorProto_fieldAccessorTable.ensureFieldAccessorsInitialized(FileDescriptorProto.class, Builder.class);
            }

            private Builder() {
                this.name_ = "";
                this.package_ = "";
                this.dependency_ = LazyStringArrayList.EMPTY;
                this.publicDependency_ = Collections.emptyList();
                this.weakDependency_ = Collections.emptyList();
                this.messageType_ = Collections.emptyList();
                this.enumType_ = Collections.emptyList();
                this.service_ = Collections.emptyList();
                this.extension_ = Collections.emptyList();
                this.options_ = FileOptions.getDefaultInstance();
                this.sourceCodeInfo_ = SourceCodeInfo.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.name_ = "";
                this.package_ = "";
                this.dependency_ = LazyStringArrayList.EMPTY;
                this.publicDependency_ = Collections.emptyList();
                this.weakDependency_ = Collections.emptyList();
                this.messageType_ = Collections.emptyList();
                this.enumType_ = Collections.emptyList();
                this.service_ = Collections.emptyList();
                this.extension_ = Collections.emptyList();
                this.options_ = FileOptions.getDefaultInstance();
                this.sourceCodeInfo_ = SourceCodeInfo.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    getMessageTypeFieldBuilder();
                    getEnumTypeFieldBuilder();
                    getServiceFieldBuilder();
                    getExtensionFieldBuilder();
                    getOptionsFieldBuilder();
                    getSourceCodeInfoFieldBuilder();
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.name_ = "";
                this.bitField0_ &= -2;
                this.package_ = "";
                this.bitField0_ &= -3;
                this.dependency_ = LazyStringArrayList.EMPTY;
                this.bitField0_ &= -5;
                this.publicDependency_ = Collections.emptyList();
                this.bitField0_ &= -9;
                this.weakDependency_ = Collections.emptyList();
                this.bitField0_ &= -17;
                if (this.messageTypeBuilder_ == null) {
                    this.messageType_ = Collections.emptyList();
                    this.bitField0_ &= -33;
                } else {
                    this.messageTypeBuilder_.clear();
                }
                if (this.enumTypeBuilder_ == null) {
                    this.enumType_ = Collections.emptyList();
                    this.bitField0_ &= -65;
                } else {
                    this.enumTypeBuilder_.clear();
                }
                if (this.serviceBuilder_ == null) {
                    this.service_ = Collections.emptyList();
                    this.bitField0_ &= -129;
                } else {
                    this.serviceBuilder_.clear();
                }
                if (this.extensionBuilder_ == null) {
                    this.extension_ = Collections.emptyList();
                    this.bitField0_ &= -257;
                } else {
                    this.extensionBuilder_.clear();
                }
                if (this.optionsBuilder_ == null) {
                    this.options_ = FileOptions.getDefaultInstance();
                } else {
                    this.optionsBuilder_.clear();
                }
                this.bitField0_ &= -513;
                if (this.sourceCodeInfoBuilder_ == null) {
                    this.sourceCodeInfo_ = SourceCodeInfo.getDefaultInstance();
                } else {
                    this.sourceCodeInfoBuilder_.clear();
                }
                this.bitField0_ &= -1025;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return DescriptorProtos.internal_static_google_protobuf_FileDescriptorProto_descriptor;
            }

            public FileDescriptorProto getDefaultInstanceForType() {
                return FileDescriptorProto.getDefaultInstance();
            }

            public FileDescriptorProto build() {
                FileDescriptorProto buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public FileDescriptorProto buildPartial() {
                int i;
                int i2 = 1;
                FileDescriptorProto fileDescriptorProto = new FileDescriptorProto((com.google.protobuf.GeneratedMessage.Builder) this);
                int i3 = this.bitField0_;
                if ((i3 & 1) != 1) {
                    i2 = 0;
                }
                fileDescriptorProto.name_ = this.name_;
                if ((i3 & 2) == 2) {
                    i2 |= 2;
                }
                fileDescriptorProto.package_ = this.package_;
                if ((this.bitField0_ & 4) == 4) {
                    this.dependency_ = this.dependency_.getUnmodifiableView();
                    this.bitField0_ &= -5;
                }
                fileDescriptorProto.dependency_ = this.dependency_;
                if ((this.bitField0_ & 8) == 8) {
                    this.publicDependency_ = Collections.unmodifiableList(this.publicDependency_);
                    this.bitField0_ &= -9;
                }
                fileDescriptorProto.publicDependency_ = this.publicDependency_;
                if ((this.bitField0_ & 16) == 16) {
                    this.weakDependency_ = Collections.unmodifiableList(this.weakDependency_);
                    this.bitField0_ &= -17;
                }
                fileDescriptorProto.weakDependency_ = this.weakDependency_;
                if (this.messageTypeBuilder_ == null) {
                    if ((this.bitField0_ & 32) == 32) {
                        this.messageType_ = Collections.unmodifiableList(this.messageType_);
                        this.bitField0_ &= -33;
                    }
                    fileDescriptorProto.messageType_ = this.messageType_;
                } else {
                    fileDescriptorProto.messageType_ = this.messageTypeBuilder_.build();
                }
                if (this.enumTypeBuilder_ == null) {
                    if ((this.bitField0_ & 64) == 64) {
                        this.enumType_ = Collections.unmodifiableList(this.enumType_);
                        this.bitField0_ &= -65;
                    }
                    fileDescriptorProto.enumType_ = this.enumType_;
                } else {
                    fileDescriptorProto.enumType_ = this.enumTypeBuilder_.build();
                }
                if (this.serviceBuilder_ == null) {
                    if ((this.bitField0_ & 128) == 128) {
                        this.service_ = Collections.unmodifiableList(this.service_);
                        this.bitField0_ &= -129;
                    }
                    fileDescriptorProto.service_ = this.service_;
                } else {
                    fileDescriptorProto.service_ = this.serviceBuilder_.build();
                }
                if (this.extensionBuilder_ == null) {
                    if ((this.bitField0_ & 256) == 256) {
                        this.extension_ = Collections.unmodifiableList(this.extension_);
                        this.bitField0_ &= -257;
                    }
                    fileDescriptorProto.extension_ = this.extension_;
                } else {
                    fileDescriptorProto.extension_ = this.extensionBuilder_.build();
                }
                if ((i3 & 512) == 512) {
                    i = i2 | 4;
                } else {
                    i = i2;
                }
                if (this.optionsBuilder_ == null) {
                    fileDescriptorProto.options_ = this.options_;
                } else {
                    fileDescriptorProto.options_ = (FileOptions) this.optionsBuilder_.build();
                }
                if ((i3 & 1024) == 1024) {
                    i |= 8;
                }
                if (this.sourceCodeInfoBuilder_ == null) {
                    fileDescriptorProto.sourceCodeInfo_ = this.sourceCodeInfo_;
                } else {
                    fileDescriptorProto.sourceCodeInfo_ = (SourceCodeInfo) this.sourceCodeInfoBuilder_.build();
                }
                fileDescriptorProto.bitField0_ = i;
                onBuilt();
                return fileDescriptorProto;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof FileDescriptorProto) {
                    return mergeFrom((FileDescriptorProto) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(FileDescriptorProto fileDescriptorProto) {
                RepeatedFieldBuilder<FieldDescriptorProto, Builder, FieldDescriptorProtoOrBuilder> repeatedFieldBuilder = null;
                if (fileDescriptorProto != FileDescriptorProto.getDefaultInstance()) {
                    if (fileDescriptorProto.hasName()) {
                        this.bitField0_ |= 1;
                        this.name_ = fileDescriptorProto.name_;
                        onChanged();
                    }
                    if (fileDescriptorProto.hasPackage()) {
                        this.bitField0_ |= 2;
                        this.package_ = fileDescriptorProto.package_;
                        onChanged();
                    }
                    if (!fileDescriptorProto.dependency_.isEmpty()) {
                        if (this.dependency_.isEmpty()) {
                            this.dependency_ = fileDescriptorProto.dependency_;
                            this.bitField0_ &= -5;
                        } else {
                            ensureDependencyIsMutable();
                            this.dependency_.addAll(fileDescriptorProto.dependency_);
                        }
                        onChanged();
                    }
                    if (!fileDescriptorProto.publicDependency_.isEmpty()) {
                        if (this.publicDependency_.isEmpty()) {
                            this.publicDependency_ = fileDescriptorProto.publicDependency_;
                            this.bitField0_ &= -9;
                        } else {
                            ensurePublicDependencyIsMutable();
                            this.publicDependency_.addAll(fileDescriptorProto.publicDependency_);
                        }
                        onChanged();
                    }
                    if (!fileDescriptorProto.weakDependency_.isEmpty()) {
                        if (this.weakDependency_.isEmpty()) {
                            this.weakDependency_ = fileDescriptorProto.weakDependency_;
                            this.bitField0_ &= -17;
                        } else {
                            ensureWeakDependencyIsMutable();
                            this.weakDependency_.addAll(fileDescriptorProto.weakDependency_);
                        }
                        onChanged();
                    }
                    if (this.messageTypeBuilder_ == null) {
                        if (!fileDescriptorProto.messageType_.isEmpty()) {
                            if (this.messageType_.isEmpty()) {
                                this.messageType_ = fileDescriptorProto.messageType_;
                                this.bitField0_ &= -33;
                            } else {
                                ensureMessageTypeIsMutable();
                                this.messageType_.addAll(fileDescriptorProto.messageType_);
                            }
                            onChanged();
                        }
                    } else if (!fileDescriptorProto.messageType_.isEmpty()) {
                        if (this.messageTypeBuilder_.isEmpty()) {
                            this.messageTypeBuilder_.dispose();
                            this.messageTypeBuilder_ = null;
                            this.messageType_ = fileDescriptorProto.messageType_;
                            this.bitField0_ &= -33;
                            this.messageTypeBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? getMessageTypeFieldBuilder() : null;
                        } else {
                            this.messageTypeBuilder_.addAllMessages(fileDescriptorProto.messageType_);
                        }
                    }
                    if (this.enumTypeBuilder_ == null) {
                        if (!fileDescriptorProto.enumType_.isEmpty()) {
                            if (this.enumType_.isEmpty()) {
                                this.enumType_ = fileDescriptorProto.enumType_;
                                this.bitField0_ &= -65;
                            } else {
                                ensureEnumTypeIsMutable();
                                this.enumType_.addAll(fileDescriptorProto.enumType_);
                            }
                            onChanged();
                        }
                    } else if (!fileDescriptorProto.enumType_.isEmpty()) {
                        if (this.enumTypeBuilder_.isEmpty()) {
                            this.enumTypeBuilder_.dispose();
                            this.enumTypeBuilder_ = null;
                            this.enumType_ = fileDescriptorProto.enumType_;
                            this.bitField0_ &= -65;
                            this.enumTypeBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? getEnumTypeFieldBuilder() : null;
                        } else {
                            this.enumTypeBuilder_.addAllMessages(fileDescriptorProto.enumType_);
                        }
                    }
                    if (this.serviceBuilder_ == null) {
                        if (!fileDescriptorProto.service_.isEmpty()) {
                            if (this.service_.isEmpty()) {
                                this.service_ = fileDescriptorProto.service_;
                                this.bitField0_ &= -129;
                            } else {
                                ensureServiceIsMutable();
                                this.service_.addAll(fileDescriptorProto.service_);
                            }
                            onChanged();
                        }
                    } else if (!fileDescriptorProto.service_.isEmpty()) {
                        if (this.serviceBuilder_.isEmpty()) {
                            this.serviceBuilder_.dispose();
                            this.serviceBuilder_ = null;
                            this.service_ = fileDescriptorProto.service_;
                            this.bitField0_ &= -129;
                            this.serviceBuilder_ = GeneratedMessage.alwaysUseFieldBuilders ? getServiceFieldBuilder() : null;
                        } else {
                            this.serviceBuilder_.addAllMessages(fileDescriptorProto.service_);
                        }
                    }
                    if (this.extensionBuilder_ == null) {
                        if (!fileDescriptorProto.extension_.isEmpty()) {
                            if (this.extension_.isEmpty()) {
                                this.extension_ = fileDescriptorProto.extension_;
                                this.bitField0_ &= -257;
                            } else {
                                ensureExtensionIsMutable();
                                this.extension_.addAll(fileDescriptorProto.extension_);
                            }
                            onChanged();
                        }
                    } else if (!fileDescriptorProto.extension_.isEmpty()) {
                        if (this.extensionBuilder_.isEmpty()) {
                            this.extensionBuilder_.dispose();
                            this.extensionBuilder_ = null;
                            this.extension_ = fileDescriptorProto.extension_;
                            this.bitField0_ &= -257;
                            if (GeneratedMessage.alwaysUseFieldBuilders) {
                                repeatedFieldBuilder = getExtensionFieldBuilder();
                            }
                            this.extensionBuilder_ = repeatedFieldBuilder;
                        } else {
                            this.extensionBuilder_.addAllMessages(fileDescriptorProto.extension_);
                        }
                    }
                    if (fileDescriptorProto.hasOptions()) {
                        mergeOptions(fileDescriptorProto.getOptions());
                    }
                    if (fileDescriptorProto.hasSourceCodeInfo()) {
                        mergeSourceCodeInfo(fileDescriptorProto.getSourceCodeInfo());
                    }
                    mergeUnknownFields(fileDescriptorProto.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                for (int i = 0; i < getMessageTypeCount(); i++) {
                    if (!getMessageType(i).isInitialized()) {
                        return false;
                    }
                }
                for (int i2 = 0; i2 < getEnumTypeCount(); i2++) {
                    if (!getEnumType(i2).isInitialized()) {
                        return false;
                    }
                }
                for (int i3 = 0; i3 < getServiceCount(); i3++) {
                    if (!getService(i3).isInitialized()) {
                        return false;
                    }
                }
                for (int i4 = 0; i4 < getExtensionCount(); i4++) {
                    if (!getExtension(i4).isInitialized()) {
                        return false;
                    }
                }
                if (!hasOptions() || getOptions().isInitialized()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                FileDescriptorProto fileDescriptorProto;
                FileDescriptorProto fileDescriptorProto2;
                try {
                    FileDescriptorProto fileDescriptorProto3 = (FileDescriptorProto) FileDescriptorProto.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (fileDescriptorProto3 != null) {
                        mergeFrom(fileDescriptorProto3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    fileDescriptorProto2 = (FileDescriptorProto) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    fileDescriptorProto = fileDescriptorProto2;
                    th = th2;
                }
                if (fileDescriptorProto != null) {
                    mergeFrom(fileDescriptorProto);
                }
                throw th;
            }

            public boolean hasName() {
                return (this.bitField0_ & 1) == 1;
            }

            public String getName() {
                Object obj = this.name_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.name_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getNameBytes() {
                Object obj = this.name_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.name_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setName(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.name_ = str;
                onChanged();
                return this;
            }

            public Builder clearName() {
                this.bitField0_ &= -2;
                this.name_ = FileDescriptorProto.getDefaultInstance().getName();
                onChanged();
                return this;
            }

            public Builder setNameBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.name_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasPackage() {
                return (this.bitField0_ & 2) == 2;
            }

            public String getPackage() {
                Object obj = this.package_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.package_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getPackageBytes() {
                Object obj = this.package_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.package_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setPackage(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.package_ = str;
                onChanged();
                return this;
            }

            public Builder clearPackage() {
                this.bitField0_ &= -3;
                this.package_ = FileDescriptorProto.getDefaultInstance().getPackage();
                onChanged();
                return this;
            }

            public Builder setPackageBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.package_ = byteString;
                onChanged();
                return this;
            }

            private void ensureDependencyIsMutable() {
                if ((this.bitField0_ & 4) != 4) {
                    this.dependency_ = new LazyStringArrayList(this.dependency_);
                    this.bitField0_ |= 4;
                }
            }

            public ProtocolStringList getDependencyList() {
                return this.dependency_.getUnmodifiableView();
            }

            public int getDependencyCount() {
                return this.dependency_.size();
            }

            public String getDependency(int i) {
                return (String) this.dependency_.get(i);
            }

            public ByteString getDependencyBytes(int i) {
                return this.dependency_.getByteString(i);
            }

            public Builder setDependency(int i, String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                ensureDependencyIsMutable();
                this.dependency_.set(i, str);
                onChanged();
                return this;
            }

            public Builder addDependency(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                ensureDependencyIsMutable();
                this.dependency_.add(str);
                onChanged();
                return this;
            }

            public Builder addAllDependency(Iterable<String> iterable) {
                ensureDependencyIsMutable();
                com.google.protobuf.AbstractMessageLite.Builder.addAll(iterable, this.dependency_);
                onChanged();
                return this;
            }

            public Builder clearDependency() {
                this.dependency_ = LazyStringArrayList.EMPTY;
                this.bitField0_ &= -5;
                onChanged();
                return this;
            }

            public Builder addDependencyBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                ensureDependencyIsMutable();
                this.dependency_.add(byteString);
                onChanged();
                return this;
            }

            private void ensurePublicDependencyIsMutable() {
                if ((this.bitField0_ & 8) != 8) {
                    this.publicDependency_ = new ArrayList(this.publicDependency_);
                    this.bitField0_ |= 8;
                }
            }

            public List<Integer> getPublicDependencyList() {
                return Collections.unmodifiableList(this.publicDependency_);
            }

            public int getPublicDependencyCount() {
                return this.publicDependency_.size();
            }

            public int getPublicDependency(int i) {
                return ((Integer) this.publicDependency_.get(i)).intValue();
            }

            public Builder setPublicDependency(int i, int i2) {
                ensurePublicDependencyIsMutable();
                this.publicDependency_.set(i, Integer.valueOf(i2));
                onChanged();
                return this;
            }

            public Builder addPublicDependency(int i) {
                ensurePublicDependencyIsMutable();
                this.publicDependency_.add(Integer.valueOf(i));
                onChanged();
                return this;
            }

            public Builder addAllPublicDependency(Iterable<? extends Integer> iterable) {
                ensurePublicDependencyIsMutable();
                com.google.protobuf.AbstractMessageLite.Builder.addAll(iterable, this.publicDependency_);
                onChanged();
                return this;
            }

            public Builder clearPublicDependency() {
                this.publicDependency_ = Collections.emptyList();
                this.bitField0_ &= -9;
                onChanged();
                return this;
            }

            private void ensureWeakDependencyIsMutable() {
                if ((this.bitField0_ & 16) != 16) {
                    this.weakDependency_ = new ArrayList(this.weakDependency_);
                    this.bitField0_ |= 16;
                }
            }

            public List<Integer> getWeakDependencyList() {
                return Collections.unmodifiableList(this.weakDependency_);
            }

            public int getWeakDependencyCount() {
                return this.weakDependency_.size();
            }

            public int getWeakDependency(int i) {
                return ((Integer) this.weakDependency_.get(i)).intValue();
            }

            public Builder setWeakDependency(int i, int i2) {
                ensureWeakDependencyIsMutable();
                this.weakDependency_.set(i, Integer.valueOf(i2));
                onChanged();
                return this;
            }

            public Builder addWeakDependency(int i) {
                ensureWeakDependencyIsMutable();
                this.weakDependency_.add(Integer.valueOf(i));
                onChanged();
                return this;
            }

            public Builder addAllWeakDependency(Iterable<? extends Integer> iterable) {
                ensureWeakDependencyIsMutable();
                com.google.protobuf.AbstractMessageLite.Builder.addAll(iterable, this.weakDependency_);
                onChanged();
                return this;
            }

            public Builder clearWeakDependency() {
                this.weakDependency_ = Collections.emptyList();
                this.bitField0_ &= -17;
                onChanged();
                return this;
            }

            private void ensureMessageTypeIsMutable() {
                if ((this.bitField0_ & 32) != 32) {
                    this.messageType_ = new ArrayList(this.messageType_);
                    this.bitField0_ |= 32;
                }
            }

            public List<DescriptorProto> getMessageTypeList() {
                if (this.messageTypeBuilder_ == null) {
                    return Collections.unmodifiableList(this.messageType_);
                }
                return this.messageTypeBuilder_.getMessageList();
            }

            public int getMessageTypeCount() {
                if (this.messageTypeBuilder_ == null) {
                    return this.messageType_.size();
                }
                return this.messageTypeBuilder_.getCount();
            }

            public DescriptorProto getMessageType(int i) {
                if (this.messageTypeBuilder_ == null) {
                    return (DescriptorProto) this.messageType_.get(i);
                }
                return (DescriptorProto) this.messageTypeBuilder_.getMessage(i);
            }

            public Builder setMessageType(int i, DescriptorProto descriptorProto) {
                if (this.messageTypeBuilder_ != null) {
                    this.messageTypeBuilder_.setMessage(i, descriptorProto);
                } else if (descriptorProto == null) {
                    throw new NullPointerException();
                } else {
                    ensureMessageTypeIsMutable();
                    this.messageType_.set(i, descriptorProto);
                    onChanged();
                }
                return this;
            }

            public Builder setMessageType(int i, Builder builder) {
                if (this.messageTypeBuilder_ == null) {
                    ensureMessageTypeIsMutable();
                    this.messageType_.set(i, builder.build());
                    onChanged();
                } else {
                    this.messageTypeBuilder_.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addMessageType(DescriptorProto descriptorProto) {
                if (this.messageTypeBuilder_ != null) {
                    this.messageTypeBuilder_.addMessage(descriptorProto);
                } else if (descriptorProto == null) {
                    throw new NullPointerException();
                } else {
                    ensureMessageTypeIsMutable();
                    this.messageType_.add(descriptorProto);
                    onChanged();
                }
                return this;
            }

            public Builder addMessageType(int i, DescriptorProto descriptorProto) {
                if (this.messageTypeBuilder_ != null) {
                    this.messageTypeBuilder_.addMessage(i, descriptorProto);
                } else if (descriptorProto == null) {
                    throw new NullPointerException();
                } else {
                    ensureMessageTypeIsMutable();
                    this.messageType_.add(i, descriptorProto);
                    onChanged();
                }
                return this;
            }

            public Builder addMessageType(Builder builder) {
                if (this.messageTypeBuilder_ == null) {
                    ensureMessageTypeIsMutable();
                    this.messageType_.add(builder.build());
                    onChanged();
                } else {
                    this.messageTypeBuilder_.addMessage(builder.build());
                }
                return this;
            }

            public Builder addMessageType(int i, Builder builder) {
                if (this.messageTypeBuilder_ == null) {
                    ensureMessageTypeIsMutable();
                    this.messageType_.add(i, builder.build());
                    onChanged();
                } else {
                    this.messageTypeBuilder_.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllMessageType(Iterable<? extends DescriptorProto> iterable) {
                if (this.messageTypeBuilder_ == null) {
                    ensureMessageTypeIsMutable();
                    com.google.protobuf.AbstractMessageLite.Builder.addAll(iterable, this.messageType_);
                    onChanged();
                } else {
                    this.messageTypeBuilder_.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearMessageType() {
                if (this.messageTypeBuilder_ == null) {
                    this.messageType_ = Collections.emptyList();
                    this.bitField0_ &= -33;
                    onChanged();
                } else {
                    this.messageTypeBuilder_.clear();
                }
                return this;
            }

            public Builder removeMessageType(int i) {
                if (this.messageTypeBuilder_ == null) {
                    ensureMessageTypeIsMutable();
                    this.messageType_.remove(i);
                    onChanged();
                } else {
                    this.messageTypeBuilder_.remove(i);
                }
                return this;
            }

            public Builder getMessageTypeBuilder(int i) {
                return (Builder) getMessageTypeFieldBuilder().getBuilder(i);
            }

            public DescriptorProtoOrBuilder getMessageTypeOrBuilder(int i) {
                if (this.messageTypeBuilder_ == null) {
                    return (DescriptorProtoOrBuilder) this.messageType_.get(i);
                }
                return (DescriptorProtoOrBuilder) this.messageTypeBuilder_.getMessageOrBuilder(i);
            }

            public List<? extends DescriptorProtoOrBuilder> getMessageTypeOrBuilderList() {
                if (this.messageTypeBuilder_ != null) {
                    return this.messageTypeBuilder_.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.messageType_);
            }

            public Builder addMessageTypeBuilder() {
                return (Builder) getMessageTypeFieldBuilder().addBuilder(DescriptorProto.getDefaultInstance());
            }

            public Builder addMessageTypeBuilder(int i) {
                return (Builder) getMessageTypeFieldBuilder().addBuilder(i, DescriptorProto.getDefaultInstance());
            }

            public List<Builder> getMessageTypeBuilderList() {
                return getMessageTypeFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<DescriptorProto, Builder, DescriptorProtoOrBuilder> getMessageTypeFieldBuilder() {
                if (this.messageTypeBuilder_ == null) {
                    this.messageTypeBuilder_ = new RepeatedFieldBuilder<>(this.messageType_, (this.bitField0_ & 32) == 32, getParentForChildren(), isClean());
                    this.messageType_ = null;
                }
                return this.messageTypeBuilder_;
            }

            private void ensureEnumTypeIsMutable() {
                if ((this.bitField0_ & 64) != 64) {
                    this.enumType_ = new ArrayList(this.enumType_);
                    this.bitField0_ |= 64;
                }
            }

            public List<EnumDescriptorProto> getEnumTypeList() {
                if (this.enumTypeBuilder_ == null) {
                    return Collections.unmodifiableList(this.enumType_);
                }
                return this.enumTypeBuilder_.getMessageList();
            }

            public int getEnumTypeCount() {
                if (this.enumTypeBuilder_ == null) {
                    return this.enumType_.size();
                }
                return this.enumTypeBuilder_.getCount();
            }

            public EnumDescriptorProto getEnumType(int i) {
                if (this.enumTypeBuilder_ == null) {
                    return (EnumDescriptorProto) this.enumType_.get(i);
                }
                return (EnumDescriptorProto) this.enumTypeBuilder_.getMessage(i);
            }

            public Builder setEnumType(int i, EnumDescriptorProto enumDescriptorProto) {
                if (this.enumTypeBuilder_ != null) {
                    this.enumTypeBuilder_.setMessage(i, enumDescriptorProto);
                } else if (enumDescriptorProto == null) {
                    throw new NullPointerException();
                } else {
                    ensureEnumTypeIsMutable();
                    this.enumType_.set(i, enumDescriptorProto);
                    onChanged();
                }
                return this;
            }

            public Builder setEnumType(int i, Builder builder) {
                if (this.enumTypeBuilder_ == null) {
                    ensureEnumTypeIsMutable();
                    this.enumType_.set(i, builder.build());
                    onChanged();
                } else {
                    this.enumTypeBuilder_.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addEnumType(EnumDescriptorProto enumDescriptorProto) {
                if (this.enumTypeBuilder_ != null) {
                    this.enumTypeBuilder_.addMessage(enumDescriptorProto);
                } else if (enumDescriptorProto == null) {
                    throw new NullPointerException();
                } else {
                    ensureEnumTypeIsMutable();
                    this.enumType_.add(enumDescriptorProto);
                    onChanged();
                }
                return this;
            }

            public Builder addEnumType(int i, EnumDescriptorProto enumDescriptorProto) {
                if (this.enumTypeBuilder_ != null) {
                    this.enumTypeBuilder_.addMessage(i, enumDescriptorProto);
                } else if (enumDescriptorProto == null) {
                    throw new NullPointerException();
                } else {
                    ensureEnumTypeIsMutable();
                    this.enumType_.add(i, enumDescriptorProto);
                    onChanged();
                }
                return this;
            }

            public Builder addEnumType(Builder builder) {
                if (this.enumTypeBuilder_ == null) {
                    ensureEnumTypeIsMutable();
                    this.enumType_.add(builder.build());
                    onChanged();
                } else {
                    this.enumTypeBuilder_.addMessage(builder.build());
                }
                return this;
            }

            public Builder addEnumType(int i, Builder builder) {
                if (this.enumTypeBuilder_ == null) {
                    ensureEnumTypeIsMutable();
                    this.enumType_.add(i, builder.build());
                    onChanged();
                } else {
                    this.enumTypeBuilder_.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllEnumType(Iterable<? extends EnumDescriptorProto> iterable) {
                if (this.enumTypeBuilder_ == null) {
                    ensureEnumTypeIsMutable();
                    com.google.protobuf.AbstractMessageLite.Builder.addAll(iterable, this.enumType_);
                    onChanged();
                } else {
                    this.enumTypeBuilder_.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearEnumType() {
                if (this.enumTypeBuilder_ == null) {
                    this.enumType_ = Collections.emptyList();
                    this.bitField0_ &= -65;
                    onChanged();
                } else {
                    this.enumTypeBuilder_.clear();
                }
                return this;
            }

            public Builder removeEnumType(int i) {
                if (this.enumTypeBuilder_ == null) {
                    ensureEnumTypeIsMutable();
                    this.enumType_.remove(i);
                    onChanged();
                } else {
                    this.enumTypeBuilder_.remove(i);
                }
                return this;
            }

            public Builder getEnumTypeBuilder(int i) {
                return (Builder) getEnumTypeFieldBuilder().getBuilder(i);
            }

            public EnumDescriptorProtoOrBuilder getEnumTypeOrBuilder(int i) {
                if (this.enumTypeBuilder_ == null) {
                    return (EnumDescriptorProtoOrBuilder) this.enumType_.get(i);
                }
                return (EnumDescriptorProtoOrBuilder) this.enumTypeBuilder_.getMessageOrBuilder(i);
            }

            public List<? extends EnumDescriptorProtoOrBuilder> getEnumTypeOrBuilderList() {
                if (this.enumTypeBuilder_ != null) {
                    return this.enumTypeBuilder_.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.enumType_);
            }

            public Builder addEnumTypeBuilder() {
                return (Builder) getEnumTypeFieldBuilder().addBuilder(EnumDescriptorProto.getDefaultInstance());
            }

            public Builder addEnumTypeBuilder(int i) {
                return (Builder) getEnumTypeFieldBuilder().addBuilder(i, EnumDescriptorProto.getDefaultInstance());
            }

            public List<Builder> getEnumTypeBuilderList() {
                return getEnumTypeFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<EnumDescriptorProto, Builder, EnumDescriptorProtoOrBuilder> getEnumTypeFieldBuilder() {
                if (this.enumTypeBuilder_ == null) {
                    this.enumTypeBuilder_ = new RepeatedFieldBuilder<>(this.enumType_, (this.bitField0_ & 64) == 64, getParentForChildren(), isClean());
                    this.enumType_ = null;
                }
                return this.enumTypeBuilder_;
            }

            private void ensureServiceIsMutable() {
                if ((this.bitField0_ & 128) != 128) {
                    this.service_ = new ArrayList(this.service_);
                    this.bitField0_ |= 128;
                }
            }

            public List<ServiceDescriptorProto> getServiceList() {
                if (this.serviceBuilder_ == null) {
                    return Collections.unmodifiableList(this.service_);
                }
                return this.serviceBuilder_.getMessageList();
            }

            public int getServiceCount() {
                if (this.serviceBuilder_ == null) {
                    return this.service_.size();
                }
                return this.serviceBuilder_.getCount();
            }

            public ServiceDescriptorProto getService(int i) {
                if (this.serviceBuilder_ == null) {
                    return (ServiceDescriptorProto) this.service_.get(i);
                }
                return (ServiceDescriptorProto) this.serviceBuilder_.getMessage(i);
            }

            public Builder setService(int i, ServiceDescriptorProto serviceDescriptorProto) {
                if (this.serviceBuilder_ != null) {
                    this.serviceBuilder_.setMessage(i, serviceDescriptorProto);
                } else if (serviceDescriptorProto == null) {
                    throw new NullPointerException();
                } else {
                    ensureServiceIsMutable();
                    this.service_.set(i, serviceDescriptorProto);
                    onChanged();
                }
                return this;
            }

            public Builder setService(int i, Builder builder) {
                if (this.serviceBuilder_ == null) {
                    ensureServiceIsMutable();
                    this.service_.set(i, builder.build());
                    onChanged();
                } else {
                    this.serviceBuilder_.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addService(ServiceDescriptorProto serviceDescriptorProto) {
                if (this.serviceBuilder_ != null) {
                    this.serviceBuilder_.addMessage(serviceDescriptorProto);
                } else if (serviceDescriptorProto == null) {
                    throw new NullPointerException();
                } else {
                    ensureServiceIsMutable();
                    this.service_.add(serviceDescriptorProto);
                    onChanged();
                }
                return this;
            }

            public Builder addService(int i, ServiceDescriptorProto serviceDescriptorProto) {
                if (this.serviceBuilder_ != null) {
                    this.serviceBuilder_.addMessage(i, serviceDescriptorProto);
                } else if (serviceDescriptorProto == null) {
                    throw new NullPointerException();
                } else {
                    ensureServiceIsMutable();
                    this.service_.add(i, serviceDescriptorProto);
                    onChanged();
                }
                return this;
            }

            public Builder addService(Builder builder) {
                if (this.serviceBuilder_ == null) {
                    ensureServiceIsMutable();
                    this.service_.add(builder.build());
                    onChanged();
                } else {
                    this.serviceBuilder_.addMessage(builder.build());
                }
                return this;
            }

            public Builder addService(int i, Builder builder) {
                if (this.serviceBuilder_ == null) {
                    ensureServiceIsMutable();
                    this.service_.add(i, builder.build());
                    onChanged();
                } else {
                    this.serviceBuilder_.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllService(Iterable<? extends ServiceDescriptorProto> iterable) {
                if (this.serviceBuilder_ == null) {
                    ensureServiceIsMutable();
                    com.google.protobuf.AbstractMessageLite.Builder.addAll(iterable, this.service_);
                    onChanged();
                } else {
                    this.serviceBuilder_.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearService() {
                if (this.serviceBuilder_ == null) {
                    this.service_ = Collections.emptyList();
                    this.bitField0_ &= -129;
                    onChanged();
                } else {
                    this.serviceBuilder_.clear();
                }
                return this;
            }

            public Builder removeService(int i) {
                if (this.serviceBuilder_ == null) {
                    ensureServiceIsMutable();
                    this.service_.remove(i);
                    onChanged();
                } else {
                    this.serviceBuilder_.remove(i);
                }
                return this;
            }

            public Builder getServiceBuilder(int i) {
                return (Builder) getServiceFieldBuilder().getBuilder(i);
            }

            public ServiceDescriptorProtoOrBuilder getServiceOrBuilder(int i) {
                if (this.serviceBuilder_ == null) {
                    return (ServiceDescriptorProtoOrBuilder) this.service_.get(i);
                }
                return (ServiceDescriptorProtoOrBuilder) this.serviceBuilder_.getMessageOrBuilder(i);
            }

            public List<? extends ServiceDescriptorProtoOrBuilder> getServiceOrBuilderList() {
                if (this.serviceBuilder_ != null) {
                    return this.serviceBuilder_.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.service_);
            }

            public Builder addServiceBuilder() {
                return (Builder) getServiceFieldBuilder().addBuilder(ServiceDescriptorProto.getDefaultInstance());
            }

            public Builder addServiceBuilder(int i) {
                return (Builder) getServiceFieldBuilder().addBuilder(i, ServiceDescriptorProto.getDefaultInstance());
            }

            public List<Builder> getServiceBuilderList() {
                return getServiceFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<ServiceDescriptorProto, Builder, ServiceDescriptorProtoOrBuilder> getServiceFieldBuilder() {
                if (this.serviceBuilder_ == null) {
                    this.serviceBuilder_ = new RepeatedFieldBuilder<>(this.service_, (this.bitField0_ & 128) == 128, getParentForChildren(), isClean());
                    this.service_ = null;
                }
                return this.serviceBuilder_;
            }

            private void ensureExtensionIsMutable() {
                if ((this.bitField0_ & 256) != 256) {
                    this.extension_ = new ArrayList(this.extension_);
                    this.bitField0_ |= 256;
                }
            }

            public List<FieldDescriptorProto> getExtensionList() {
                if (this.extensionBuilder_ == null) {
                    return Collections.unmodifiableList(this.extension_);
                }
                return this.extensionBuilder_.getMessageList();
            }

            public int getExtensionCount() {
                if (this.extensionBuilder_ == null) {
                    return this.extension_.size();
                }
                return this.extensionBuilder_.getCount();
            }

            public FieldDescriptorProto getExtension(int i) {
                if (this.extensionBuilder_ == null) {
                    return (FieldDescriptorProto) this.extension_.get(i);
                }
                return (FieldDescriptorProto) this.extensionBuilder_.getMessage(i);
            }

            public Builder setExtension(int i, FieldDescriptorProto fieldDescriptorProto) {
                if (this.extensionBuilder_ != null) {
                    this.extensionBuilder_.setMessage(i, fieldDescriptorProto);
                } else if (fieldDescriptorProto == null) {
                    throw new NullPointerException();
                } else {
                    ensureExtensionIsMutable();
                    this.extension_.set(i, fieldDescriptorProto);
                    onChanged();
                }
                return this;
            }

            public Builder setExtension(int i, Builder builder) {
                if (this.extensionBuilder_ == null) {
                    ensureExtensionIsMutable();
                    this.extension_.set(i, builder.build());
                    onChanged();
                } else {
                    this.extensionBuilder_.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addExtension(FieldDescriptorProto fieldDescriptorProto) {
                if (this.extensionBuilder_ != null) {
                    this.extensionBuilder_.addMessage(fieldDescriptorProto);
                } else if (fieldDescriptorProto == null) {
                    throw new NullPointerException();
                } else {
                    ensureExtensionIsMutable();
                    this.extension_.add(fieldDescriptorProto);
                    onChanged();
                }
                return this;
            }

            public Builder addExtension(int i, FieldDescriptorProto fieldDescriptorProto) {
                if (this.extensionBuilder_ != null) {
                    this.extensionBuilder_.addMessage(i, fieldDescriptorProto);
                } else if (fieldDescriptorProto == null) {
                    throw new NullPointerException();
                } else {
                    ensureExtensionIsMutable();
                    this.extension_.add(i, fieldDescriptorProto);
                    onChanged();
                }
                return this;
            }

            public Builder addExtension(Builder builder) {
                if (this.extensionBuilder_ == null) {
                    ensureExtensionIsMutable();
                    this.extension_.add(builder.build());
                    onChanged();
                } else {
                    this.extensionBuilder_.addMessage(builder.build());
                }
                return this;
            }

            public Builder addExtension(int i, Builder builder) {
                if (this.extensionBuilder_ == null) {
                    ensureExtensionIsMutable();
                    this.extension_.add(i, builder.build());
                    onChanged();
                } else {
                    this.extensionBuilder_.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllExtension(Iterable<? extends FieldDescriptorProto> iterable) {
                if (this.extensionBuilder_ == null) {
                    ensureExtensionIsMutable();
                    com.google.protobuf.AbstractMessageLite.Builder.addAll(iterable, this.extension_);
                    onChanged();
                } else {
                    this.extensionBuilder_.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearExtension() {
                if (this.extensionBuilder_ == null) {
                    this.extension_ = Collections.emptyList();
                    this.bitField0_ &= -257;
                    onChanged();
                } else {
                    this.extensionBuilder_.clear();
                }
                return this;
            }

            public Builder removeExtension(int i) {
                if (this.extensionBuilder_ == null) {
                    ensureExtensionIsMutable();
                    this.extension_.remove(i);
                    onChanged();
                } else {
                    this.extensionBuilder_.remove(i);
                }
                return this;
            }

            public Builder getExtensionBuilder(int i) {
                return (Builder) getExtensionFieldBuilder().getBuilder(i);
            }

            public FieldDescriptorProtoOrBuilder getExtensionOrBuilder(int i) {
                if (this.extensionBuilder_ == null) {
                    return (FieldDescriptorProtoOrBuilder) this.extension_.get(i);
                }
                return (FieldDescriptorProtoOrBuilder) this.extensionBuilder_.getMessageOrBuilder(i);
            }

            public List<? extends FieldDescriptorProtoOrBuilder> getExtensionOrBuilderList() {
                if (this.extensionBuilder_ != null) {
                    return this.extensionBuilder_.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.extension_);
            }

            public Builder addExtensionBuilder() {
                return (Builder) getExtensionFieldBuilder().addBuilder(FieldDescriptorProto.getDefaultInstance());
            }

            public Builder addExtensionBuilder(int i) {
                return (Builder) getExtensionFieldBuilder().addBuilder(i, FieldDescriptorProto.getDefaultInstance());
            }

            public List<Builder> getExtensionBuilderList() {
                return getExtensionFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<FieldDescriptorProto, Builder, FieldDescriptorProtoOrBuilder> getExtensionFieldBuilder() {
                if (this.extensionBuilder_ == null) {
                    this.extensionBuilder_ = new RepeatedFieldBuilder<>(this.extension_, (this.bitField0_ & 256) == 256, getParentForChildren(), isClean());
                    this.extension_ = null;
                }
                return this.extensionBuilder_;
            }

            public boolean hasOptions() {
                return (this.bitField0_ & 512) == 512;
            }

            public FileOptions getOptions() {
                if (this.optionsBuilder_ == null) {
                    return this.options_;
                }
                return (FileOptions) this.optionsBuilder_.getMessage();
            }

            public Builder setOptions(FileOptions fileOptions) {
                if (this.optionsBuilder_ != null) {
                    this.optionsBuilder_.setMessage(fileOptions);
                } else if (fileOptions == null) {
                    throw new NullPointerException();
                } else {
                    this.options_ = fileOptions;
                    onChanged();
                }
                this.bitField0_ |= 512;
                return this;
            }

            public Builder setOptions(Builder builder) {
                if (this.optionsBuilder_ == null) {
                    this.options_ = builder.build();
                    onChanged();
                } else {
                    this.optionsBuilder_.setMessage(builder.build());
                }
                this.bitField0_ |= 512;
                return this;
            }

            public Builder mergeOptions(FileOptions fileOptions) {
                if (this.optionsBuilder_ == null) {
                    if ((this.bitField0_ & 512) != 512 || this.options_ == FileOptions.getDefaultInstance()) {
                        this.options_ = fileOptions;
                    } else {
                        this.options_ = FileOptions.newBuilder(this.options_).mergeFrom(fileOptions).buildPartial();
                    }
                    onChanged();
                } else {
                    this.optionsBuilder_.mergeFrom(fileOptions);
                }
                this.bitField0_ |= 512;
                return this;
            }

            public Builder clearOptions() {
                if (this.optionsBuilder_ == null) {
                    this.options_ = FileOptions.getDefaultInstance();
                    onChanged();
                } else {
                    this.optionsBuilder_.clear();
                }
                this.bitField0_ &= -513;
                return this;
            }

            public Builder getOptionsBuilder() {
                this.bitField0_ |= 512;
                onChanged();
                return (Builder) getOptionsFieldBuilder().getBuilder();
            }

            public FileOptionsOrBuilder getOptionsOrBuilder() {
                if (this.optionsBuilder_ != null) {
                    return (FileOptionsOrBuilder) this.optionsBuilder_.getMessageOrBuilder();
                }
                return this.options_;
            }

            private SingleFieldBuilder<FileOptions, Builder, FileOptionsOrBuilder> getOptionsFieldBuilder() {
                if (this.optionsBuilder_ == null) {
                    this.optionsBuilder_ = new SingleFieldBuilder<>(getOptions(), getParentForChildren(), isClean());
                    this.options_ = null;
                }
                return this.optionsBuilder_;
            }

            public boolean hasSourceCodeInfo() {
                return (this.bitField0_ & 1024) == 1024;
            }

            public SourceCodeInfo getSourceCodeInfo() {
                if (this.sourceCodeInfoBuilder_ == null) {
                    return this.sourceCodeInfo_;
                }
                return (SourceCodeInfo) this.sourceCodeInfoBuilder_.getMessage();
            }

            public Builder setSourceCodeInfo(SourceCodeInfo sourceCodeInfo) {
                if (this.sourceCodeInfoBuilder_ != null) {
                    this.sourceCodeInfoBuilder_.setMessage(sourceCodeInfo);
                } else if (sourceCodeInfo == null) {
                    throw new NullPointerException();
                } else {
                    this.sourceCodeInfo_ = sourceCodeInfo;
                    onChanged();
                }
                this.bitField0_ |= 1024;
                return this;
            }

            public Builder setSourceCodeInfo(Builder builder) {
                if (this.sourceCodeInfoBuilder_ == null) {
                    this.sourceCodeInfo_ = builder.build();
                    onChanged();
                } else {
                    this.sourceCodeInfoBuilder_.setMessage(builder.build());
                }
                this.bitField0_ |= 1024;
                return this;
            }

            public Builder mergeSourceCodeInfo(SourceCodeInfo sourceCodeInfo) {
                if (this.sourceCodeInfoBuilder_ == null) {
                    if ((this.bitField0_ & 1024) != 1024 || this.sourceCodeInfo_ == SourceCodeInfo.getDefaultInstance()) {
                        this.sourceCodeInfo_ = sourceCodeInfo;
                    } else {
                        this.sourceCodeInfo_ = SourceCodeInfo.newBuilder(this.sourceCodeInfo_).mergeFrom(sourceCodeInfo).buildPartial();
                    }
                    onChanged();
                } else {
                    this.sourceCodeInfoBuilder_.mergeFrom(sourceCodeInfo);
                }
                this.bitField0_ |= 1024;
                return this;
            }

            public Builder clearSourceCodeInfo() {
                if (this.sourceCodeInfoBuilder_ == null) {
                    this.sourceCodeInfo_ = SourceCodeInfo.getDefaultInstance();
                    onChanged();
                } else {
                    this.sourceCodeInfoBuilder_.clear();
                }
                this.bitField0_ &= -1025;
                return this;
            }

            public Builder getSourceCodeInfoBuilder() {
                this.bitField0_ |= 1024;
                onChanged();
                return (Builder) getSourceCodeInfoFieldBuilder().getBuilder();
            }

            public SourceCodeInfoOrBuilder getSourceCodeInfoOrBuilder() {
                if (this.sourceCodeInfoBuilder_ != null) {
                    return (SourceCodeInfoOrBuilder) this.sourceCodeInfoBuilder_.getMessageOrBuilder();
                }
                return this.sourceCodeInfo_;
            }

            private SingleFieldBuilder<SourceCodeInfo, Builder, SourceCodeInfoOrBuilder> getSourceCodeInfoFieldBuilder() {
                if (this.sourceCodeInfoBuilder_ == null) {
                    this.sourceCodeInfoBuilder_ = new SingleFieldBuilder<>(getSourceCodeInfo(), getParentForChildren(), isClean());
                    this.sourceCodeInfo_ = null;
                }
                return this.sourceCodeInfoBuilder_;
            }
        }

        private FileDescriptorProto(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private FileDescriptorProto(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static FileDescriptorProto getDefaultInstance() {
            return defaultInstance;
        }

        public FileDescriptorProto getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        /* JADX WARNING: Code restructure failed: missing block: B:8:0x002c, code lost:
            r2 = r1;
            r1 = r0;
         */
        /* JADX WARNING: Removed duplicated region for block: B:102:0x01bf  */
        /* JADX WARNING: Removed duplicated region for block: B:105:0x01cd  */
        /* JADX WARNING: Removed duplicated region for block: B:108:0x01d9  */
        /* JADX WARNING: Removed duplicated region for block: B:111:0x01e5  */
        /* JADX WARNING: Removed duplicated region for block: B:93:0x0199  */
        /* JADX WARNING: Removed duplicated region for block: B:96:0x01a5  */
        /* JADX WARNING: Removed duplicated region for block: B:99:0x01b1  */
        /* JADX WARNING: Unknown top exception splitter block from list: {B:138:0x0250=Splitter:B:138:0x0250, B:87:0x018f=Splitter:B:87:0x018f} */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        private FileDescriptorProto(com.google.protobuf.CodedInputStream r13, com.google.protobuf.ExtensionRegistryLite r14) throws com.google.protobuf.InvalidProtocolBufferException {
            /*
                r12 = this;
                r10 = 64
                r9 = 32
                r8 = 16
                r7 = 4
                r6 = 8
                r12.<init>()
                r0 = -1
                r12.memoizedIsInitialized = r0
                r0 = -1
                r12.memoizedSerializedSize = r0
                r12.initFields()
                r2 = 0
                com.google.protobuf.UnknownFieldSet$Builder r4 = com.google.protobuf.UnknownFieldSet.newBuilder()
                r1 = 0
            L_0x001b:
                if (r1 != 0) goto L_0x0266
                int r0 = r13.readTag()     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                switch(r0) {
                    case 0: goto L_0x002f;
                    case 10: goto L_0x0032;
                    case 18: goto L_0x0041;
                    case 26: goto L_0x0050;
                    case 34: goto L_0x006a;
                    case 42: goto L_0x0086;
                    case 50: goto L_0x00a2;
                    case 58: goto L_0x00c1;
                    case 66: goto L_0x00e0;
                    case 74: goto L_0x010f;
                    case 80: goto L_0x013e;
                    case 82: goto L_0x015d;
                    case 88: goto L_0x01ff;
                    case 90: goto L_0x021e;
                    default: goto L_0x0024;
                }     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
            L_0x0024:
                boolean r0 = r12.parseUnknownField(r13, r4, r14, r0)     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                if (r0 != 0) goto L_0x02f3
                r0 = 1
                r1 = r2
            L_0x002c:
                r2 = r1
                r1 = r0
                goto L_0x001b
            L_0x002f:
                r0 = 1
                r1 = r2
                goto L_0x002c
            L_0x0032:
                com.google.protobuf.ByteString r0 = r13.readBytes()     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                int r3 = r12.bitField0_     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                r3 = r3 | 1
                r12.bitField0_ = r3     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                r12.name_ = r0     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                r0 = r1
                r1 = r2
                goto L_0x002c
            L_0x0041:
                com.google.protobuf.ByteString r0 = r13.readBytes()     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                int r3 = r12.bitField0_     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                r3 = r3 | 2
                r12.bitField0_ = r3     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                r12.package_ = r0     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                r0 = r1
                r1 = r2
                goto L_0x002c
            L_0x0050:
                com.google.protobuf.ByteString r3 = r13.readBytes()     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                r0 = r2 & 4
                if (r0 == r7) goto L_0x02f0
                com.google.protobuf.LazyStringArrayList r0 = new com.google.protobuf.LazyStringArrayList     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                r0.<init>()     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                r12.dependency_ = r0     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                r0 = r2 | 4
            L_0x0061:
                com.google.protobuf.LazyStringList r2 = r12.dependency_     // Catch:{ InvalidProtocolBufferException -> 0x018c, IOException -> 0x024d, all -> 0x02c8 }
                r2.add(r3)     // Catch:{ InvalidProtocolBufferException -> 0x018c, IOException -> 0x024d, all -> 0x02c8 }
                r11 = r1
                r1 = r0
                r0 = r11
                goto L_0x002c
            L_0x006a:
                r0 = r2 & 32
                if (r0 == r9) goto L_0x02ed
                java.util.ArrayList r0 = new java.util.ArrayList     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                r0.<init>()     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                r12.messageType_ = r0     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                r0 = r2 | 32
            L_0x0077:
                java.util.List<com.google.protobuf.DescriptorProtos$DescriptorProto> r2 = r12.messageType_     // Catch:{ InvalidProtocolBufferException -> 0x018c, IOException -> 0x024d, all -> 0x02c8 }
                com.google.protobuf.Parser<com.google.protobuf.DescriptorProtos$DescriptorProto> r3 = com.google.protobuf.DescriptorProtos.DescriptorProto.PARSER     // Catch:{ InvalidProtocolBufferException -> 0x018c, IOException -> 0x024d, all -> 0x02c8 }
                com.google.protobuf.MessageLite r3 = r13.readMessage(r3, r14)     // Catch:{ InvalidProtocolBufferException -> 0x018c, IOException -> 0x024d, all -> 0x02c8 }
                r2.add(r3)     // Catch:{ InvalidProtocolBufferException -> 0x018c, IOException -> 0x024d, all -> 0x02c8 }
                r11 = r1
                r1 = r0
                r0 = r11
                goto L_0x002c
            L_0x0086:
                r0 = r2 & 64
                if (r0 == r10) goto L_0x02ea
                java.util.ArrayList r0 = new java.util.ArrayList     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                r0.<init>()     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                r12.enumType_ = r0     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                r0 = r2 | 64
            L_0x0093:
                java.util.List<com.google.protobuf.DescriptorProtos$EnumDescriptorProto> r2 = r12.enumType_     // Catch:{ InvalidProtocolBufferException -> 0x018c, IOException -> 0x024d, all -> 0x02c8 }
                com.google.protobuf.Parser<com.google.protobuf.DescriptorProtos$EnumDescriptorProto> r3 = com.google.protobuf.DescriptorProtos.EnumDescriptorProto.PARSER     // Catch:{ InvalidProtocolBufferException -> 0x018c, IOException -> 0x024d, all -> 0x02c8 }
                com.google.protobuf.MessageLite r3 = r13.readMessage(r3, r14)     // Catch:{ InvalidProtocolBufferException -> 0x018c, IOException -> 0x024d, all -> 0x02c8 }
                r2.add(r3)     // Catch:{ InvalidProtocolBufferException -> 0x018c, IOException -> 0x024d, all -> 0x02c8 }
                r11 = r1
                r1 = r0
                r0 = r11
                goto L_0x002c
            L_0x00a2:
                r0 = r2 & 128(0x80, float:1.794E-43)
                r3 = 128(0x80, float:1.794E-43)
                if (r0 == r3) goto L_0x02e7
                java.util.ArrayList r0 = new java.util.ArrayList     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                r0.<init>()     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                r12.service_ = r0     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                r0 = r2 | 128(0x80, float:1.794E-43)
            L_0x00b1:
                java.util.List<com.google.protobuf.DescriptorProtos$ServiceDescriptorProto> r2 = r12.service_     // Catch:{ InvalidProtocolBufferException -> 0x018c, IOException -> 0x024d, all -> 0x02c8 }
                com.google.protobuf.Parser<com.google.protobuf.DescriptorProtos$ServiceDescriptorProto> r3 = com.google.protobuf.DescriptorProtos.ServiceDescriptorProto.PARSER     // Catch:{ InvalidProtocolBufferException -> 0x018c, IOException -> 0x024d, all -> 0x02c8 }
                com.google.protobuf.MessageLite r3 = r13.readMessage(r3, r14)     // Catch:{ InvalidProtocolBufferException -> 0x018c, IOException -> 0x024d, all -> 0x02c8 }
                r2.add(r3)     // Catch:{ InvalidProtocolBufferException -> 0x018c, IOException -> 0x024d, all -> 0x02c8 }
                r11 = r1
                r1 = r0
                r0 = r11
                goto L_0x002c
            L_0x00c1:
                r0 = r2 & 256(0x100, float:3.59E-43)
                r3 = 256(0x100, float:3.59E-43)
                if (r0 == r3) goto L_0x02e4
                java.util.ArrayList r0 = new java.util.ArrayList     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                r0.<init>()     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                r12.extension_ = r0     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                r0 = r2 | 256(0x100, float:3.59E-43)
            L_0x00d0:
                java.util.List<com.google.protobuf.DescriptorProtos$FieldDescriptorProto> r2 = r12.extension_     // Catch:{ InvalidProtocolBufferException -> 0x018c, IOException -> 0x024d, all -> 0x02c8 }
                com.google.protobuf.Parser<com.google.protobuf.DescriptorProtos$FieldDescriptorProto> r3 = com.google.protobuf.DescriptorProtos.FieldDescriptorProto.PARSER     // Catch:{ InvalidProtocolBufferException -> 0x018c, IOException -> 0x024d, all -> 0x02c8 }
                com.google.protobuf.MessageLite r3 = r13.readMessage(r3, r14)     // Catch:{ InvalidProtocolBufferException -> 0x018c, IOException -> 0x024d, all -> 0x02c8 }
                r2.add(r3)     // Catch:{ InvalidProtocolBufferException -> 0x018c, IOException -> 0x024d, all -> 0x02c8 }
                r11 = r1
                r1 = r0
                r0 = r11
                goto L_0x002c
            L_0x00e0:
                r0 = 0
                int r3 = r12.bitField0_     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                r3 = r3 & 4
                if (r3 != r7) goto L_0x02e1
                com.google.protobuf.DescriptorProtos$FileOptions r0 = r12.options_     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                com.google.protobuf.DescriptorProtos$FileOptions$Builder r0 = r0.toBuilder()     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                r3 = r0
            L_0x00ee:
                com.google.protobuf.Parser<com.google.protobuf.DescriptorProtos$FileOptions> r0 = com.google.protobuf.DescriptorProtos.FileOptions.PARSER     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                com.google.protobuf.MessageLite r0 = r13.readMessage(r0, r14)     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                com.google.protobuf.DescriptorProtos$FileOptions r0 = (com.google.protobuf.DescriptorProtos.FileOptions) r0     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                r12.options_ = r0     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                if (r3 == 0) goto L_0x0105
                com.google.protobuf.DescriptorProtos$FileOptions r0 = r12.options_     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                r3.mergeFrom(r0)     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                com.google.protobuf.DescriptorProtos$FileOptions r0 = r3.buildPartial()     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                r12.options_ = r0     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
            L_0x0105:
                int r0 = r12.bitField0_     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                r0 = r0 | 4
                r12.bitField0_ = r0     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                r0 = r1
                r1 = r2
                goto L_0x002c
            L_0x010f:
                r0 = 0
                int r3 = r12.bitField0_     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                r3 = r3 & 8
                if (r3 != r6) goto L_0x02de
                com.google.protobuf.DescriptorProtos$SourceCodeInfo r0 = r12.sourceCodeInfo_     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                com.google.protobuf.DescriptorProtos$SourceCodeInfo$Builder r0 = r0.toBuilder()     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                r3 = r0
            L_0x011d:
                com.google.protobuf.Parser<com.google.protobuf.DescriptorProtos$SourceCodeInfo> r0 = com.google.protobuf.DescriptorProtos.SourceCodeInfo.PARSER     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                com.google.protobuf.MessageLite r0 = r13.readMessage(r0, r14)     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                com.google.protobuf.DescriptorProtos$SourceCodeInfo r0 = (com.google.protobuf.DescriptorProtos.SourceCodeInfo) r0     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                r12.sourceCodeInfo_ = r0     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                if (r3 == 0) goto L_0x0134
                com.google.protobuf.DescriptorProtos$SourceCodeInfo r0 = r12.sourceCodeInfo_     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                r3.mergeFrom(r0)     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                com.google.protobuf.DescriptorProtos$SourceCodeInfo r0 = r3.buildPartial()     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                r12.sourceCodeInfo_ = r0     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
            L_0x0134:
                int r0 = r12.bitField0_     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                r0 = r0 | 8
                r12.bitField0_ = r0     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                r0 = r1
                r1 = r2
                goto L_0x002c
            L_0x013e:
                r0 = r2 & 8
                if (r0 == r6) goto L_0x02db
                java.util.ArrayList r0 = new java.util.ArrayList     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                r0.<init>()     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                r12.publicDependency_ = r0     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                r0 = r2 | 8
            L_0x014b:
                java.util.List<java.lang.Integer> r2 = r12.publicDependency_     // Catch:{ InvalidProtocolBufferException -> 0x018c, IOException -> 0x024d, all -> 0x02c8 }
                int r3 = r13.readInt32()     // Catch:{ InvalidProtocolBufferException -> 0x018c, IOException -> 0x024d, all -> 0x02c8 }
                java.lang.Integer r3 = java.lang.Integer.valueOf(r3)     // Catch:{ InvalidProtocolBufferException -> 0x018c, IOException -> 0x024d, all -> 0x02c8 }
                r2.add(r3)     // Catch:{ InvalidProtocolBufferException -> 0x018c, IOException -> 0x024d, all -> 0x02c8 }
                r11 = r1
                r1 = r0
                r0 = r11
                goto L_0x002c
            L_0x015d:
                int r0 = r13.readRawVarint32()     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                int r3 = r13.pushLimit(r0)     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                r0 = r2 & 8
                if (r0 == r6) goto L_0x02d8
                int r0 = r13.getBytesUntilLimit()     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                if (r0 <= 0) goto L_0x02d8
                java.util.ArrayList r0 = new java.util.ArrayList     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                r0.<init>()     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                r12.publicDependency_ = r0     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                r0 = r2 | 8
            L_0x0178:
                int r2 = r13.getBytesUntilLimit()     // Catch:{ InvalidProtocolBufferException -> 0x018c, IOException -> 0x024d, all -> 0x02c8 }
                if (r2 <= 0) goto L_0x01f7
                java.util.List<java.lang.Integer> r2 = r12.publicDependency_     // Catch:{ InvalidProtocolBufferException -> 0x018c, IOException -> 0x024d, all -> 0x02c8 }
                int r5 = r13.readInt32()     // Catch:{ InvalidProtocolBufferException -> 0x018c, IOException -> 0x024d, all -> 0x02c8 }
                java.lang.Integer r5 = java.lang.Integer.valueOf(r5)     // Catch:{ InvalidProtocolBufferException -> 0x018c, IOException -> 0x024d, all -> 0x02c8 }
                r2.add(r5)     // Catch:{ InvalidProtocolBufferException -> 0x018c, IOException -> 0x024d, all -> 0x02c8 }
                goto L_0x0178
            L_0x018c:
                r1 = move-exception
                r2 = r0
                r0 = r1
            L_0x018f:
                com.google.protobuf.InvalidProtocolBufferException r0 = r0.setUnfinishedMessage(r12)     // Catch:{ all -> 0x0194 }
                throw r0     // Catch:{ all -> 0x0194 }
            L_0x0194:
                r0 = move-exception
            L_0x0195:
                r1 = r2 & 4
                if (r1 != r7) goto L_0x01a1
                com.google.protobuf.LazyStringList r1 = r12.dependency_
                com.google.protobuf.LazyStringList r1 = r1.getUnmodifiableView()
                r12.dependency_ = r1
            L_0x01a1:
                r1 = r2 & 32
                if (r1 != r9) goto L_0x01ad
                java.util.List<com.google.protobuf.DescriptorProtos$DescriptorProto> r1 = r12.messageType_
                java.util.List r1 = java.util.Collections.unmodifiableList(r1)
                r12.messageType_ = r1
            L_0x01ad:
                r1 = r2 & 64
                if (r1 != r10) goto L_0x01b9
                java.util.List<com.google.protobuf.DescriptorProtos$EnumDescriptorProto> r1 = r12.enumType_
                java.util.List r1 = java.util.Collections.unmodifiableList(r1)
                r12.enumType_ = r1
            L_0x01b9:
                r1 = r2 & 128(0x80, float:1.794E-43)
                r3 = 128(0x80, float:1.794E-43)
                if (r1 != r3) goto L_0x01c7
                java.util.List<com.google.protobuf.DescriptorProtos$ServiceDescriptorProto> r1 = r12.service_
                java.util.List r1 = java.util.Collections.unmodifiableList(r1)
                r12.service_ = r1
            L_0x01c7:
                r1 = r2 & 256(0x100, float:3.59E-43)
                r3 = 256(0x100, float:3.59E-43)
                if (r1 != r3) goto L_0x01d5
                java.util.List<com.google.protobuf.DescriptorProtos$FieldDescriptorProto> r1 = r12.extension_
                java.util.List r1 = java.util.Collections.unmodifiableList(r1)
                r12.extension_ = r1
            L_0x01d5:
                r1 = r2 & 8
                if (r1 != r6) goto L_0x01e1
                java.util.List<java.lang.Integer> r1 = r12.publicDependency_
                java.util.List r1 = java.util.Collections.unmodifiableList(r1)
                r12.publicDependency_ = r1
            L_0x01e1:
                r1 = r2 & 16
                if (r1 != r8) goto L_0x01ed
                java.util.List<java.lang.Integer> r1 = r12.weakDependency_
                java.util.List r1 = java.util.Collections.unmodifiableList(r1)
                r12.weakDependency_ = r1
            L_0x01ed:
                com.google.protobuf.UnknownFieldSet r1 = r4.build()
                r12.unknownFields = r1
                r12.makeExtensionsImmutable()
                throw r0
            L_0x01f7:
                r13.popLimit(r3)     // Catch:{ InvalidProtocolBufferException -> 0x018c, IOException -> 0x024d, all -> 0x02c8 }
                r11 = r1
                r1 = r0
                r0 = r11
                goto L_0x002c
            L_0x01ff:
                r0 = r2 & 16
                if (r0 == r8) goto L_0x02d5
                java.util.ArrayList r0 = new java.util.ArrayList     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                r0.<init>()     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                r12.weakDependency_ = r0     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                r0 = r2 | 16
            L_0x020c:
                java.util.List<java.lang.Integer> r2 = r12.weakDependency_     // Catch:{ InvalidProtocolBufferException -> 0x018c, IOException -> 0x024d, all -> 0x02c8 }
                int r3 = r13.readInt32()     // Catch:{ InvalidProtocolBufferException -> 0x018c, IOException -> 0x024d, all -> 0x02c8 }
                java.lang.Integer r3 = java.lang.Integer.valueOf(r3)     // Catch:{ InvalidProtocolBufferException -> 0x018c, IOException -> 0x024d, all -> 0x02c8 }
                r2.add(r3)     // Catch:{ InvalidProtocolBufferException -> 0x018c, IOException -> 0x024d, all -> 0x02c8 }
                r11 = r1
                r1 = r0
                r0 = r11
                goto L_0x002c
            L_0x021e:
                int r0 = r13.readRawVarint32()     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                int r3 = r13.pushLimit(r0)     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                r0 = r2 & 16
                if (r0 == r8) goto L_0x02d2
                int r0 = r13.getBytesUntilLimit()     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                if (r0 <= 0) goto L_0x02d2
                java.util.ArrayList r0 = new java.util.ArrayList     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                r0.<init>()     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                r12.weakDependency_ = r0     // Catch:{ InvalidProtocolBufferException -> 0x02cf, IOException -> 0x02cd }
                r0 = r2 | 16
            L_0x0239:
                int r2 = r13.getBytesUntilLimit()     // Catch:{ InvalidProtocolBufferException -> 0x018c, IOException -> 0x024d, all -> 0x02c8 }
                if (r2 <= 0) goto L_0x025e
                java.util.List<java.lang.Integer> r2 = r12.weakDependency_     // Catch:{ InvalidProtocolBufferException -> 0x018c, IOException -> 0x024d, all -> 0x02c8 }
                int r5 = r13.readInt32()     // Catch:{ InvalidProtocolBufferException -> 0x018c, IOException -> 0x024d, all -> 0x02c8 }
                java.lang.Integer r5 = java.lang.Integer.valueOf(r5)     // Catch:{ InvalidProtocolBufferException -> 0x018c, IOException -> 0x024d, all -> 0x02c8 }
                r2.add(r5)     // Catch:{ InvalidProtocolBufferException -> 0x018c, IOException -> 0x024d, all -> 0x02c8 }
                goto L_0x0239
            L_0x024d:
                r1 = move-exception
                r2 = r0
                r0 = r1
            L_0x0250:
                com.google.protobuf.InvalidProtocolBufferException r1 = new com.google.protobuf.InvalidProtocolBufferException     // Catch:{ all -> 0x0194 }
                java.lang.String r0 = r0.getMessage()     // Catch:{ all -> 0x0194 }
                r1.<init>(r0)     // Catch:{ all -> 0x0194 }
                com.google.protobuf.InvalidProtocolBufferException r0 = r1.setUnfinishedMessage(r12)     // Catch:{ all -> 0x0194 }
                throw r0     // Catch:{ all -> 0x0194 }
            L_0x025e:
                r13.popLimit(r3)     // Catch:{ InvalidProtocolBufferException -> 0x018c, IOException -> 0x024d, all -> 0x02c8 }
                r11 = r1
                r1 = r0
                r0 = r11
                goto L_0x002c
            L_0x0266:
                r0 = r2 & 4
                if (r0 != r7) goto L_0x0272
                com.google.protobuf.LazyStringList r0 = r12.dependency_
                com.google.protobuf.LazyStringList r0 = r0.getUnmodifiableView()
                r12.dependency_ = r0
            L_0x0272:
                r0 = r2 & 32
                if (r0 != r9) goto L_0x027e
                java.util.List<com.google.protobuf.DescriptorProtos$DescriptorProto> r0 = r12.messageType_
                java.util.List r0 = java.util.Collections.unmodifiableList(r0)
                r12.messageType_ = r0
            L_0x027e:
                r0 = r2 & 64
                if (r0 != r10) goto L_0x028a
                java.util.List<com.google.protobuf.DescriptorProtos$EnumDescriptorProto> r0 = r12.enumType_
                java.util.List r0 = java.util.Collections.unmodifiableList(r0)
                r12.enumType_ = r0
            L_0x028a:
                r0 = r2 & 128(0x80, float:1.794E-43)
                r1 = 128(0x80, float:1.794E-43)
                if (r0 != r1) goto L_0x0298
                java.util.List<com.google.protobuf.DescriptorProtos$ServiceDescriptorProto> r0 = r12.service_
                java.util.List r0 = java.util.Collections.unmodifiableList(r0)
                r12.service_ = r0
            L_0x0298:
                r0 = r2 & 256(0x100, float:3.59E-43)
                r1 = 256(0x100, float:3.59E-43)
                if (r0 != r1) goto L_0x02a6
                java.util.List<com.google.protobuf.DescriptorProtos$FieldDescriptorProto> r0 = r12.extension_
                java.util.List r0 = java.util.Collections.unmodifiableList(r0)
                r12.extension_ = r0
            L_0x02a6:
                r0 = r2 & 8
                if (r0 != r6) goto L_0x02b2
                java.util.List<java.lang.Integer> r0 = r12.publicDependency_
                java.util.List r0 = java.util.Collections.unmodifiableList(r0)
                r12.publicDependency_ = r0
            L_0x02b2:
                r0 = r2 & 16
                if (r0 != r8) goto L_0x02be
                java.util.List<java.lang.Integer> r0 = r12.weakDependency_
                java.util.List r0 = java.util.Collections.unmodifiableList(r0)
                r12.weakDependency_ = r0
            L_0x02be:
                com.google.protobuf.UnknownFieldSet r0 = r4.build()
                r12.unknownFields = r0
                r12.makeExtensionsImmutable()
                return
            L_0x02c8:
                r1 = move-exception
                r2 = r0
                r0 = r1
                goto L_0x0195
            L_0x02cd:
                r0 = move-exception
                goto L_0x0250
            L_0x02cf:
                r0 = move-exception
                goto L_0x018f
            L_0x02d2:
                r0 = r2
                goto L_0x0239
            L_0x02d5:
                r0 = r2
                goto L_0x020c
            L_0x02d8:
                r0 = r2
                goto L_0x0178
            L_0x02db:
                r0 = r2
                goto L_0x014b
            L_0x02de:
                r3 = r0
                goto L_0x011d
            L_0x02e1:
                r3 = r0
                goto L_0x00ee
            L_0x02e4:
                r0 = r2
                goto L_0x00d0
            L_0x02e7:
                r0 = r2
                goto L_0x00b1
            L_0x02ea:
                r0 = r2
                goto L_0x0093
            L_0x02ed:
                r0 = r2
                goto L_0x0077
            L_0x02f0:
                r0 = r2
                goto L_0x0061
            L_0x02f3:
                r0 = r1
                r1 = r2
                goto L_0x002c
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.DescriptorProtos.FileDescriptorProto.<init>(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):void");
        }

        public static final Descriptor getDescriptor() {
            return DescriptorProtos.internal_static_google_protobuf_FileDescriptorProto_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return DescriptorProtos.internal_static_google_protobuf_FileDescriptorProto_fieldAccessorTable.ensureFieldAccessorsInitialized(FileDescriptorProto.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<FileDescriptorProto> getParserForType() {
            return PARSER;
        }

        public boolean hasName() {
            return (this.bitField0_ & 1) == 1;
        }

        public String getName() {
            Object obj = this.name_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.name_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getNameBytes() {
            Object obj = this.name_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.name_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasPackage() {
            return (this.bitField0_ & 2) == 2;
        }

        public String getPackage() {
            Object obj = this.package_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.package_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getPackageBytes() {
            Object obj = this.package_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.package_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public ProtocolStringList getDependencyList() {
            return this.dependency_;
        }

        public int getDependencyCount() {
            return this.dependency_.size();
        }

        public String getDependency(int i) {
            return (String) this.dependency_.get(i);
        }

        public ByteString getDependencyBytes(int i) {
            return this.dependency_.getByteString(i);
        }

        public List<Integer> getPublicDependencyList() {
            return this.publicDependency_;
        }

        public int getPublicDependencyCount() {
            return this.publicDependency_.size();
        }

        public int getPublicDependency(int i) {
            return ((Integer) this.publicDependency_.get(i)).intValue();
        }

        public List<Integer> getWeakDependencyList() {
            return this.weakDependency_;
        }

        public int getWeakDependencyCount() {
            return this.weakDependency_.size();
        }

        public int getWeakDependency(int i) {
            return ((Integer) this.weakDependency_.get(i)).intValue();
        }

        public List<DescriptorProto> getMessageTypeList() {
            return this.messageType_;
        }

        public List<? extends DescriptorProtoOrBuilder> getMessageTypeOrBuilderList() {
            return this.messageType_;
        }

        public int getMessageTypeCount() {
            return this.messageType_.size();
        }

        public DescriptorProto getMessageType(int i) {
            return (DescriptorProto) this.messageType_.get(i);
        }

        public DescriptorProtoOrBuilder getMessageTypeOrBuilder(int i) {
            return (DescriptorProtoOrBuilder) this.messageType_.get(i);
        }

        public List<EnumDescriptorProto> getEnumTypeList() {
            return this.enumType_;
        }

        public List<? extends EnumDescriptorProtoOrBuilder> getEnumTypeOrBuilderList() {
            return this.enumType_;
        }

        public int getEnumTypeCount() {
            return this.enumType_.size();
        }

        public EnumDescriptorProto getEnumType(int i) {
            return (EnumDescriptorProto) this.enumType_.get(i);
        }

        public EnumDescriptorProtoOrBuilder getEnumTypeOrBuilder(int i) {
            return (EnumDescriptorProtoOrBuilder) this.enumType_.get(i);
        }

        public List<ServiceDescriptorProto> getServiceList() {
            return this.service_;
        }

        public List<? extends ServiceDescriptorProtoOrBuilder> getServiceOrBuilderList() {
            return this.service_;
        }

        public int getServiceCount() {
            return this.service_.size();
        }

        public ServiceDescriptorProto getService(int i) {
            return (ServiceDescriptorProto) this.service_.get(i);
        }

        public ServiceDescriptorProtoOrBuilder getServiceOrBuilder(int i) {
            return (ServiceDescriptorProtoOrBuilder) this.service_.get(i);
        }

        public List<FieldDescriptorProto> getExtensionList() {
            return this.extension_;
        }

        public List<? extends FieldDescriptorProtoOrBuilder> getExtensionOrBuilderList() {
            return this.extension_;
        }

        public int getExtensionCount() {
            return this.extension_.size();
        }

        public FieldDescriptorProto getExtension(int i) {
            return (FieldDescriptorProto) this.extension_.get(i);
        }

        public FieldDescriptorProtoOrBuilder getExtensionOrBuilder(int i) {
            return (FieldDescriptorProtoOrBuilder) this.extension_.get(i);
        }

        public boolean hasOptions() {
            return (this.bitField0_ & 4) == 4;
        }

        public FileOptions getOptions() {
            return this.options_;
        }

        public FileOptionsOrBuilder getOptionsOrBuilder() {
            return this.options_;
        }

        public boolean hasSourceCodeInfo() {
            return (this.bitField0_ & 8) == 8;
        }

        public SourceCodeInfo getSourceCodeInfo() {
            return this.sourceCodeInfo_;
        }

        public SourceCodeInfoOrBuilder getSourceCodeInfoOrBuilder() {
            return this.sourceCodeInfo_;
        }

        private void initFields() {
            this.name_ = "";
            this.package_ = "";
            this.dependency_ = LazyStringArrayList.EMPTY;
            this.publicDependency_ = Collections.emptyList();
            this.weakDependency_ = Collections.emptyList();
            this.messageType_ = Collections.emptyList();
            this.enumType_ = Collections.emptyList();
            this.service_ = Collections.emptyList();
            this.extension_ = Collections.emptyList();
            this.options_ = FileOptions.getDefaultInstance();
            this.sourceCodeInfo_ = SourceCodeInfo.getDefaultInstance();
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            for (int i = 0; i < getMessageTypeCount(); i++) {
                if (!getMessageType(i).isInitialized()) {
                    this.memoizedIsInitialized = 0;
                    return false;
                }
            }
            for (int i2 = 0; i2 < getEnumTypeCount(); i2++) {
                if (!getEnumType(i2).isInitialized()) {
                    this.memoizedIsInitialized = 0;
                    return false;
                }
            }
            for (int i3 = 0; i3 < getServiceCount(); i3++) {
                if (!getService(i3).isInitialized()) {
                    this.memoizedIsInitialized = 0;
                    return false;
                }
            }
            for (int i4 = 0; i4 < getExtensionCount(); i4++) {
                if (!getExtension(i4).isInitialized()) {
                    this.memoizedIsInitialized = 0;
                    return false;
                }
            }
            if (!hasOptions() || getOptions().isInitialized()) {
                this.memoizedIsInitialized = 1;
                return true;
            }
            this.memoizedIsInitialized = 0;
            return false;
        }

        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeBytes(1, getNameBytes());
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeBytes(2, getPackageBytes());
            }
            for (int i = 0; i < this.dependency_.size(); i++) {
                codedOutputStream.writeBytes(3, this.dependency_.getByteString(i));
            }
            for (int i2 = 0; i2 < this.messageType_.size(); i2++) {
                codedOutputStream.writeMessage(4, (MessageLite) this.messageType_.get(i2));
            }
            for (int i3 = 0; i3 < this.enumType_.size(); i3++) {
                codedOutputStream.writeMessage(5, (MessageLite) this.enumType_.get(i3));
            }
            for (int i4 = 0; i4 < this.service_.size(); i4++) {
                codedOutputStream.writeMessage(6, (MessageLite) this.service_.get(i4));
            }
            for (int i5 = 0; i5 < this.extension_.size(); i5++) {
                codedOutputStream.writeMessage(7, (MessageLite) this.extension_.get(i5));
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeMessage(8, this.options_);
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeMessage(9, this.sourceCodeInfo_);
            }
            for (int i6 = 0; i6 < this.publicDependency_.size(); i6++) {
                codedOutputStream.writeInt32(10, ((Integer) this.publicDependency_.get(i6)).intValue());
            }
            for (int i7 = 0; i7 < this.weakDependency_.size(); i7++) {
                codedOutputStream.writeInt32(11, ((Integer) this.weakDependency_.get(i7)).intValue());
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        public int getSerializedSize() {
            int i;
            int i2 = 0;
            int i3 = this.memoizedSerializedSize;
            if (i3 != -1) {
                return i3;
            }
            if ((this.bitField0_ & 1) == 1) {
                i = CodedOutputStream.computeBytesSize(1, getNameBytes()) + 0;
            } else {
                i = 0;
            }
            if ((this.bitField0_ & 2) == 2) {
                i += CodedOutputStream.computeBytesSize(2, getPackageBytes());
            }
            int i4 = 0;
            for (int i5 = 0; i5 < this.dependency_.size(); i5++) {
                i4 += CodedOutputStream.computeBytesSizeNoTag(this.dependency_.getByteString(i5));
            }
            int size = i + i4 + (getDependencyList().size() * 1);
            for (int i6 = 0; i6 < this.messageType_.size(); i6++) {
                size += CodedOutputStream.computeMessageSize(4, (MessageLite) this.messageType_.get(i6));
            }
            for (int i7 = 0; i7 < this.enumType_.size(); i7++) {
                size += CodedOutputStream.computeMessageSize(5, (MessageLite) this.enumType_.get(i7));
            }
            for (int i8 = 0; i8 < this.service_.size(); i8++) {
                size += CodedOutputStream.computeMessageSize(6, (MessageLite) this.service_.get(i8));
            }
            for (int i9 = 0; i9 < this.extension_.size(); i9++) {
                size += CodedOutputStream.computeMessageSize(7, (MessageLite) this.extension_.get(i9));
            }
            if ((this.bitField0_ & 4) == 4) {
                size += CodedOutputStream.computeMessageSize(8, this.options_);
            }
            if ((this.bitField0_ & 8) == 8) {
                size += CodedOutputStream.computeMessageSize(9, this.sourceCodeInfo_);
            }
            int i10 = 0;
            for (int i11 = 0; i11 < this.publicDependency_.size(); i11++) {
                i10 += CodedOutputStream.computeInt32SizeNoTag(((Integer) this.publicDependency_.get(i11)).intValue());
            }
            int size2 = size + i10 + (getPublicDependencyList().size() * 1);
            int i12 = 0;
            while (i2 < this.weakDependency_.size()) {
                i2++;
                i12 = CodedOutputStream.computeInt32SizeNoTag(((Integer) this.weakDependency_.get(i2)).intValue()) + i12;
            }
            int size3 = size2 + i12 + (getWeakDependencyList().size() * 1) + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = size3;
            return size3;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static FileDescriptorProto parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (FileDescriptorProto) PARSER.parseFrom(byteString);
        }

        public static FileDescriptorProto parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (FileDescriptorProto) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static FileDescriptorProto parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (FileDescriptorProto) PARSER.parseFrom(bArr);
        }

        public static FileDescriptorProto parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (FileDescriptorProto) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static FileDescriptorProto parseFrom(InputStream inputStream) throws IOException {
            return (FileDescriptorProto) PARSER.parseFrom(inputStream);
        }

        public static FileDescriptorProto parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (FileDescriptorProto) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static FileDescriptorProto parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (FileDescriptorProto) PARSER.parseDelimitedFrom(inputStream);
        }

        public static FileDescriptorProto parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (FileDescriptorProto) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static FileDescriptorProto parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (FileDescriptorProto) PARSER.parseFrom(codedInputStream);
        }

        public static FileDescriptorProto parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (FileDescriptorProto) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(FileDescriptorProto fileDescriptorProto) {
            return newBuilder().mergeFrom(fileDescriptorProto);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface FileDescriptorProtoOrBuilder extends MessageOrBuilder {
        String getDependency(int i);

        ByteString getDependencyBytes(int i);

        int getDependencyCount();

        ProtocolStringList getDependencyList();

        EnumDescriptorProto getEnumType(int i);

        int getEnumTypeCount();

        List<EnumDescriptorProto> getEnumTypeList();

        EnumDescriptorProtoOrBuilder getEnumTypeOrBuilder(int i);

        List<? extends EnumDescriptorProtoOrBuilder> getEnumTypeOrBuilderList();

        FieldDescriptorProto getExtension(int i);

        int getExtensionCount();

        List<FieldDescriptorProto> getExtensionList();

        FieldDescriptorProtoOrBuilder getExtensionOrBuilder(int i);

        List<? extends FieldDescriptorProtoOrBuilder> getExtensionOrBuilderList();

        DescriptorProto getMessageType(int i);

        int getMessageTypeCount();

        List<DescriptorProto> getMessageTypeList();

        DescriptorProtoOrBuilder getMessageTypeOrBuilder(int i);

        List<? extends DescriptorProtoOrBuilder> getMessageTypeOrBuilderList();

        String getName();

        ByteString getNameBytes();

        FileOptions getOptions();

        FileOptionsOrBuilder getOptionsOrBuilder();

        String getPackage();

        ByteString getPackageBytes();

        int getPublicDependency(int i);

        int getPublicDependencyCount();

        List<Integer> getPublicDependencyList();

        ServiceDescriptorProto getService(int i);

        int getServiceCount();

        List<ServiceDescriptorProto> getServiceList();

        ServiceDescriptorProtoOrBuilder getServiceOrBuilder(int i);

        List<? extends ServiceDescriptorProtoOrBuilder> getServiceOrBuilderList();

        SourceCodeInfo getSourceCodeInfo();

        SourceCodeInfoOrBuilder getSourceCodeInfoOrBuilder();

        int getWeakDependency(int i);

        int getWeakDependencyCount();

        List<Integer> getWeakDependencyList();

        boolean hasName();

        boolean hasOptions();

        boolean hasPackage();

        boolean hasSourceCodeInfo();
    }

    public static final class FileDescriptorSet extends GeneratedMessage implements FileDescriptorSetOrBuilder {
        public static final int FILE_FIELD_NUMBER = 1;
        public static Parser<FileDescriptorSet> PARSER = new AbstractParser<FileDescriptorSet>() {
            public FileDescriptorSet parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new FileDescriptorSet(codedInputStream, extensionRegistryLite);
            }
        };
        private static final FileDescriptorSet defaultInstance = new FileDescriptorSet(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public List<FileDescriptorProto> file_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements FileDescriptorSetOrBuilder {
            private int bitField0_;
            private RepeatedFieldBuilder<FileDescriptorProto, Builder, FileDescriptorProtoOrBuilder> fileBuilder_;
            private List<FileDescriptorProto> file_;

            public static final Descriptor getDescriptor() {
                return DescriptorProtos.internal_static_google_protobuf_FileDescriptorSet_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return DescriptorProtos.internal_static_google_protobuf_FileDescriptorSet_fieldAccessorTable.ensureFieldAccessorsInitialized(FileDescriptorSet.class, Builder.class);
            }

            private Builder() {
                this.file_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.file_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    getFileFieldBuilder();
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                if (this.fileBuilder_ == null) {
                    this.file_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                } else {
                    this.fileBuilder_.clear();
                }
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return DescriptorProtos.internal_static_google_protobuf_FileDescriptorSet_descriptor;
            }

            public FileDescriptorSet getDefaultInstanceForType() {
                return FileDescriptorSet.getDefaultInstance();
            }

            public FileDescriptorSet build() {
                FileDescriptorSet buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public FileDescriptorSet buildPartial() {
                FileDescriptorSet fileDescriptorSet = new FileDescriptorSet((com.google.protobuf.GeneratedMessage.Builder) this);
                int i = this.bitField0_;
                if (this.fileBuilder_ == null) {
                    if ((this.bitField0_ & 1) == 1) {
                        this.file_ = Collections.unmodifiableList(this.file_);
                        this.bitField0_ &= -2;
                    }
                    fileDescriptorSet.file_ = this.file_;
                } else {
                    fileDescriptorSet.file_ = this.fileBuilder_.build();
                }
                onBuilt();
                return fileDescriptorSet;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof FileDescriptorSet) {
                    return mergeFrom((FileDescriptorSet) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(FileDescriptorSet fileDescriptorSet) {
                RepeatedFieldBuilder<FileDescriptorProto, Builder, FileDescriptorProtoOrBuilder> repeatedFieldBuilder = null;
                if (fileDescriptorSet != FileDescriptorSet.getDefaultInstance()) {
                    if (this.fileBuilder_ == null) {
                        if (!fileDescriptorSet.file_.isEmpty()) {
                            if (this.file_.isEmpty()) {
                                this.file_ = fileDescriptorSet.file_;
                                this.bitField0_ &= -2;
                            } else {
                                ensureFileIsMutable();
                                this.file_.addAll(fileDescriptorSet.file_);
                            }
                            onChanged();
                        }
                    } else if (!fileDescriptorSet.file_.isEmpty()) {
                        if (this.fileBuilder_.isEmpty()) {
                            this.fileBuilder_.dispose();
                            this.fileBuilder_ = null;
                            this.file_ = fileDescriptorSet.file_;
                            this.bitField0_ &= -2;
                            if (GeneratedMessage.alwaysUseFieldBuilders) {
                                repeatedFieldBuilder = getFileFieldBuilder();
                            }
                            this.fileBuilder_ = repeatedFieldBuilder;
                        } else {
                            this.fileBuilder_.addAllMessages(fileDescriptorSet.file_);
                        }
                    }
                    mergeUnknownFields(fileDescriptorSet.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                for (int i = 0; i < getFileCount(); i++) {
                    if (!getFile(i).isInitialized()) {
                        return false;
                    }
                }
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                FileDescriptorSet fileDescriptorSet;
                FileDescriptorSet fileDescriptorSet2;
                try {
                    FileDescriptorSet fileDescriptorSet3 = (FileDescriptorSet) FileDescriptorSet.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (fileDescriptorSet3 != null) {
                        mergeFrom(fileDescriptorSet3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    fileDescriptorSet2 = (FileDescriptorSet) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    fileDescriptorSet = fileDescriptorSet2;
                    th = th2;
                }
                if (fileDescriptorSet != null) {
                    mergeFrom(fileDescriptorSet);
                }
                throw th;
            }

            private void ensureFileIsMutable() {
                if ((this.bitField0_ & 1) != 1) {
                    this.file_ = new ArrayList(this.file_);
                    this.bitField0_ |= 1;
                }
            }

            public List<FileDescriptorProto> getFileList() {
                if (this.fileBuilder_ == null) {
                    return Collections.unmodifiableList(this.file_);
                }
                return this.fileBuilder_.getMessageList();
            }

            public int getFileCount() {
                if (this.fileBuilder_ == null) {
                    return this.file_.size();
                }
                return this.fileBuilder_.getCount();
            }

            public FileDescriptorProto getFile(int i) {
                if (this.fileBuilder_ == null) {
                    return (FileDescriptorProto) this.file_.get(i);
                }
                return (FileDescriptorProto) this.fileBuilder_.getMessage(i);
            }

            public Builder setFile(int i, FileDescriptorProto fileDescriptorProto) {
                if (this.fileBuilder_ != null) {
                    this.fileBuilder_.setMessage(i, fileDescriptorProto);
                } else if (fileDescriptorProto == null) {
                    throw new NullPointerException();
                } else {
                    ensureFileIsMutable();
                    this.file_.set(i, fileDescriptorProto);
                    onChanged();
                }
                return this;
            }

            public Builder setFile(int i, Builder builder) {
                if (this.fileBuilder_ == null) {
                    ensureFileIsMutable();
                    this.file_.set(i, builder.build());
                    onChanged();
                } else {
                    this.fileBuilder_.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addFile(FileDescriptorProto fileDescriptorProto) {
                if (this.fileBuilder_ != null) {
                    this.fileBuilder_.addMessage(fileDescriptorProto);
                } else if (fileDescriptorProto == null) {
                    throw new NullPointerException();
                } else {
                    ensureFileIsMutable();
                    this.file_.add(fileDescriptorProto);
                    onChanged();
                }
                return this;
            }

            public Builder addFile(int i, FileDescriptorProto fileDescriptorProto) {
                if (this.fileBuilder_ != null) {
                    this.fileBuilder_.addMessage(i, fileDescriptorProto);
                } else if (fileDescriptorProto == null) {
                    throw new NullPointerException();
                } else {
                    ensureFileIsMutable();
                    this.file_.add(i, fileDescriptorProto);
                    onChanged();
                }
                return this;
            }

            public Builder addFile(Builder builder) {
                if (this.fileBuilder_ == null) {
                    ensureFileIsMutable();
                    this.file_.add(builder.build());
                    onChanged();
                } else {
                    this.fileBuilder_.addMessage(builder.build());
                }
                return this;
            }

            public Builder addFile(int i, Builder builder) {
                if (this.fileBuilder_ == null) {
                    ensureFileIsMutable();
                    this.file_.add(i, builder.build());
                    onChanged();
                } else {
                    this.fileBuilder_.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllFile(Iterable<? extends FileDescriptorProto> iterable) {
                if (this.fileBuilder_ == null) {
                    ensureFileIsMutable();
                    com.google.protobuf.AbstractMessageLite.Builder.addAll(iterable, this.file_);
                    onChanged();
                } else {
                    this.fileBuilder_.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearFile() {
                if (this.fileBuilder_ == null) {
                    this.file_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                    onChanged();
                } else {
                    this.fileBuilder_.clear();
                }
                return this;
            }

            public Builder removeFile(int i) {
                if (this.fileBuilder_ == null) {
                    ensureFileIsMutable();
                    this.file_.remove(i);
                    onChanged();
                } else {
                    this.fileBuilder_.remove(i);
                }
                return this;
            }

            public Builder getFileBuilder(int i) {
                return (Builder) getFileFieldBuilder().getBuilder(i);
            }

            public FileDescriptorProtoOrBuilder getFileOrBuilder(int i) {
                if (this.fileBuilder_ == null) {
                    return (FileDescriptorProtoOrBuilder) this.file_.get(i);
                }
                return (FileDescriptorProtoOrBuilder) this.fileBuilder_.getMessageOrBuilder(i);
            }

            public List<? extends FileDescriptorProtoOrBuilder> getFileOrBuilderList() {
                if (this.fileBuilder_ != null) {
                    return this.fileBuilder_.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.file_);
            }

            public Builder addFileBuilder() {
                return (Builder) getFileFieldBuilder().addBuilder(FileDescriptorProto.getDefaultInstance());
            }

            public Builder addFileBuilder(int i) {
                return (Builder) getFileFieldBuilder().addBuilder(i, FileDescriptorProto.getDefaultInstance());
            }

            public List<Builder> getFileBuilderList() {
                return getFileFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<FileDescriptorProto, Builder, FileDescriptorProtoOrBuilder> getFileFieldBuilder() {
                boolean z = true;
                if (this.fileBuilder_ == null) {
                    List<FileDescriptorProto> list = this.file_;
                    if ((this.bitField0_ & 1) != 1) {
                        z = false;
                    }
                    this.fileBuilder_ = new RepeatedFieldBuilder<>(list, z, getParentForChildren(), isClean());
                    this.file_ = null;
                }
                return this.fileBuilder_;
            }
        }

        private FileDescriptorSet(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private FileDescriptorSet(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static FileDescriptorSet getDefaultInstance() {
            return defaultInstance;
        }

        public FileDescriptorSet getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private FileDescriptorSet(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                this.file_ = new ArrayList();
                                z2 |= true;
                            }
                            this.file_.add(codedInputStream.readMessage(FileDescriptorProto.PARSER, extensionRegistryLite));
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
                        this.file_ = Collections.unmodifiableList(this.file_);
                    }
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            if (z2 && true) {
                this.file_ = Collections.unmodifiableList(this.file_);
            }
            this.unknownFields = newBuilder.build();
            makeExtensionsImmutable();
        }

        public static final Descriptor getDescriptor() {
            return DescriptorProtos.internal_static_google_protobuf_FileDescriptorSet_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return DescriptorProtos.internal_static_google_protobuf_FileDescriptorSet_fieldAccessorTable.ensureFieldAccessorsInitialized(FileDescriptorSet.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<FileDescriptorSet> getParserForType() {
            return PARSER;
        }

        public List<FileDescriptorProto> getFileList() {
            return this.file_;
        }

        public List<? extends FileDescriptorProtoOrBuilder> getFileOrBuilderList() {
            return this.file_;
        }

        public int getFileCount() {
            return this.file_.size();
        }

        public FileDescriptorProto getFile(int i) {
            return (FileDescriptorProto) this.file_.get(i);
        }

        public FileDescriptorProtoOrBuilder getFileOrBuilder(int i) {
            return (FileDescriptorProtoOrBuilder) this.file_.get(i);
        }

        private void initFields() {
            this.file_ = Collections.emptyList();
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            for (int i = 0; i < getFileCount(); i++) {
                if (!getFile(i).isInitialized()) {
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
                if (i2 < this.file_.size()) {
                    codedOutputStream.writeMessage(1, (MessageLite) this.file_.get(i2));
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
            for (int i3 = 0; i3 < this.file_.size(); i3++) {
                i2 += CodedOutputStream.computeMessageSize(1, (MessageLite) this.file_.get(i3));
            }
            int serializedSize = getUnknownFields().getSerializedSize() + i2;
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static FileDescriptorSet parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (FileDescriptorSet) PARSER.parseFrom(byteString);
        }

        public static FileDescriptorSet parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (FileDescriptorSet) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static FileDescriptorSet parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (FileDescriptorSet) PARSER.parseFrom(bArr);
        }

        public static FileDescriptorSet parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (FileDescriptorSet) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static FileDescriptorSet parseFrom(InputStream inputStream) throws IOException {
            return (FileDescriptorSet) PARSER.parseFrom(inputStream);
        }

        public static FileDescriptorSet parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (FileDescriptorSet) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static FileDescriptorSet parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (FileDescriptorSet) PARSER.parseDelimitedFrom(inputStream);
        }

        public static FileDescriptorSet parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (FileDescriptorSet) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static FileDescriptorSet parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (FileDescriptorSet) PARSER.parseFrom(codedInputStream);
        }

        public static FileDescriptorSet parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (FileDescriptorSet) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(FileDescriptorSet fileDescriptorSet) {
            return newBuilder().mergeFrom(fileDescriptorSet);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface FileDescriptorSetOrBuilder extends MessageOrBuilder {
        FileDescriptorProto getFile(int i);

        int getFileCount();

        List<FileDescriptorProto> getFileList();

        FileDescriptorProtoOrBuilder getFileOrBuilder(int i);

        List<? extends FileDescriptorProtoOrBuilder> getFileOrBuilderList();
    }

    public static final class FileOptions extends ExtendableMessage<FileOptions> implements FileOptionsOrBuilder {
        public static final int CC_GENERIC_SERVICES_FIELD_NUMBER = 16;
        public static final int DEPRECATED_FIELD_NUMBER = 23;
        public static final int GO_PACKAGE_FIELD_NUMBER = 11;
        public static final int JAVA_GENERATE_EQUALS_AND_HASH_FIELD_NUMBER = 20;
        public static final int JAVA_GENERIC_SERVICES_FIELD_NUMBER = 17;
        public static final int JAVA_MULTIPLE_FILES_FIELD_NUMBER = 10;
        public static final int JAVA_OUTER_CLASSNAME_FIELD_NUMBER = 8;
        public static final int JAVA_PACKAGE_FIELD_NUMBER = 1;
        public static final int JAVA_STRING_CHECK_UTF8_FIELD_NUMBER = 27;
        public static final int OPTIMIZE_FOR_FIELD_NUMBER = 9;
        public static Parser<FileOptions> PARSER = new AbstractParser<FileOptions>() {
            public FileOptions parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new FileOptions(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int PY_GENERIC_SERVICES_FIELD_NUMBER = 18;
        public static final int UNINTERPRETED_OPTION_FIELD_NUMBER = 999;
        private static final FileOptions defaultInstance = new FileOptions(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public boolean ccGenericServices_;
        /* access modifiers changed from: private */
        public boolean deprecated_;
        /* access modifiers changed from: private */
        public Object goPackage_;
        /* access modifiers changed from: private */
        public boolean javaGenerateEqualsAndHash_;
        /* access modifiers changed from: private */
        public boolean javaGenericServices_;
        /* access modifiers changed from: private */
        public boolean javaMultipleFiles_;
        /* access modifiers changed from: private */
        public Object javaOuterClassname_;
        /* access modifiers changed from: private */
        public Object javaPackage_;
        /* access modifiers changed from: private */
        public boolean javaStringCheckUtf8_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public OptimizeMode optimizeFor_;
        /* access modifiers changed from: private */
        public boolean pyGenericServices_;
        /* access modifiers changed from: private */
        public List<UninterpretedOption> uninterpretedOption_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends ExtendableBuilder<FileOptions, Builder> implements FileOptionsOrBuilder {
            private int bitField0_;
            private boolean ccGenericServices_;
            private boolean deprecated_;
            private Object goPackage_;
            private boolean javaGenerateEqualsAndHash_;
            private boolean javaGenericServices_;
            private boolean javaMultipleFiles_;
            private Object javaOuterClassname_;
            private Object javaPackage_;
            private boolean javaStringCheckUtf8_;
            private OptimizeMode optimizeFor_;
            private boolean pyGenericServices_;
            private RepeatedFieldBuilder<UninterpretedOption, Builder, UninterpretedOptionOrBuilder> uninterpretedOptionBuilder_;
            private List<UninterpretedOption> uninterpretedOption_;

            public static final Descriptor getDescriptor() {
                return DescriptorProtos.internal_static_google_protobuf_FileOptions_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return DescriptorProtos.internal_static_google_protobuf_FileOptions_fieldAccessorTable.ensureFieldAccessorsInitialized(FileOptions.class, Builder.class);
            }

            private Builder() {
                this.javaPackage_ = "";
                this.javaOuterClassname_ = "";
                this.optimizeFor_ = OptimizeMode.SPEED;
                this.goPackage_ = "";
                this.uninterpretedOption_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.javaPackage_ = "";
                this.javaOuterClassname_ = "";
                this.optimizeFor_ = OptimizeMode.SPEED;
                this.goPackage_ = "";
                this.uninterpretedOption_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    getUninterpretedOptionFieldBuilder();
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.javaPackage_ = "";
                this.bitField0_ &= -2;
                this.javaOuterClassname_ = "";
                this.bitField0_ &= -3;
                this.javaMultipleFiles_ = false;
                this.bitField0_ &= -5;
                this.javaGenerateEqualsAndHash_ = false;
                this.bitField0_ &= -9;
                this.javaStringCheckUtf8_ = false;
                this.bitField0_ &= -17;
                this.optimizeFor_ = OptimizeMode.SPEED;
                this.bitField0_ &= -33;
                this.goPackage_ = "";
                this.bitField0_ &= -65;
                this.ccGenericServices_ = false;
                this.bitField0_ &= -129;
                this.javaGenericServices_ = false;
                this.bitField0_ &= -257;
                this.pyGenericServices_ = false;
                this.bitField0_ &= -513;
                this.deprecated_ = false;
                this.bitField0_ &= -1025;
                if (this.uninterpretedOptionBuilder_ == null) {
                    this.uninterpretedOption_ = Collections.emptyList();
                    this.bitField0_ &= -2049;
                } else {
                    this.uninterpretedOptionBuilder_.clear();
                }
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return DescriptorProtos.internal_static_google_protobuf_FileOptions_descriptor;
            }

            public FileOptions getDefaultInstanceForType() {
                return FileOptions.getDefaultInstance();
            }

            public FileOptions build() {
                FileOptions buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public FileOptions buildPartial() {
                int i = 1;
                FileOptions fileOptions = new FileOptions((ExtendableBuilder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                fileOptions.javaPackage_ = this.javaPackage_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                fileOptions.javaOuterClassname_ = this.javaOuterClassname_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                fileOptions.javaMultipleFiles_ = this.javaMultipleFiles_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                fileOptions.javaGenerateEqualsAndHash_ = this.javaGenerateEqualsAndHash_;
                if ((i2 & 16) == 16) {
                    i |= 16;
                }
                fileOptions.javaStringCheckUtf8_ = this.javaStringCheckUtf8_;
                if ((i2 & 32) == 32) {
                    i |= 32;
                }
                fileOptions.optimizeFor_ = this.optimizeFor_;
                if ((i2 & 64) == 64) {
                    i |= 64;
                }
                fileOptions.goPackage_ = this.goPackage_;
                if ((i2 & 128) == 128) {
                    i |= 128;
                }
                fileOptions.ccGenericServices_ = this.ccGenericServices_;
                if ((i2 & 256) == 256) {
                    i |= 256;
                }
                fileOptions.javaGenericServices_ = this.javaGenericServices_;
                if ((i2 & 512) == 512) {
                    i |= 512;
                }
                fileOptions.pyGenericServices_ = this.pyGenericServices_;
                if ((i2 & 1024) == 1024) {
                    i |= 1024;
                }
                fileOptions.deprecated_ = this.deprecated_;
                if (this.uninterpretedOptionBuilder_ == null) {
                    if ((this.bitField0_ & 2048) == 2048) {
                        this.uninterpretedOption_ = Collections.unmodifiableList(this.uninterpretedOption_);
                        this.bitField0_ &= -2049;
                    }
                    fileOptions.uninterpretedOption_ = this.uninterpretedOption_;
                } else {
                    fileOptions.uninterpretedOption_ = this.uninterpretedOptionBuilder_.build();
                }
                fileOptions.bitField0_ = i;
                onBuilt();
                return fileOptions;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof FileOptions) {
                    return mergeFrom((FileOptions) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(FileOptions fileOptions) {
                RepeatedFieldBuilder<UninterpretedOption, Builder, UninterpretedOptionOrBuilder> repeatedFieldBuilder = null;
                if (fileOptions != FileOptions.getDefaultInstance()) {
                    if (fileOptions.hasJavaPackage()) {
                        this.bitField0_ |= 1;
                        this.javaPackage_ = fileOptions.javaPackage_;
                        onChanged();
                    }
                    if (fileOptions.hasJavaOuterClassname()) {
                        this.bitField0_ |= 2;
                        this.javaOuterClassname_ = fileOptions.javaOuterClassname_;
                        onChanged();
                    }
                    if (fileOptions.hasJavaMultipleFiles()) {
                        setJavaMultipleFiles(fileOptions.getJavaMultipleFiles());
                    }
                    if (fileOptions.hasJavaGenerateEqualsAndHash()) {
                        setJavaGenerateEqualsAndHash(fileOptions.getJavaGenerateEqualsAndHash());
                    }
                    if (fileOptions.hasJavaStringCheckUtf8()) {
                        setJavaStringCheckUtf8(fileOptions.getJavaStringCheckUtf8());
                    }
                    if (fileOptions.hasOptimizeFor()) {
                        setOptimizeFor(fileOptions.getOptimizeFor());
                    }
                    if (fileOptions.hasGoPackage()) {
                        this.bitField0_ |= 64;
                        this.goPackage_ = fileOptions.goPackage_;
                        onChanged();
                    }
                    if (fileOptions.hasCcGenericServices()) {
                        setCcGenericServices(fileOptions.getCcGenericServices());
                    }
                    if (fileOptions.hasJavaGenericServices()) {
                        setJavaGenericServices(fileOptions.getJavaGenericServices());
                    }
                    if (fileOptions.hasPyGenericServices()) {
                        setPyGenericServices(fileOptions.getPyGenericServices());
                    }
                    if (fileOptions.hasDeprecated()) {
                        setDeprecated(fileOptions.getDeprecated());
                    }
                    if (this.uninterpretedOptionBuilder_ == null) {
                        if (!fileOptions.uninterpretedOption_.isEmpty()) {
                            if (this.uninterpretedOption_.isEmpty()) {
                                this.uninterpretedOption_ = fileOptions.uninterpretedOption_;
                                this.bitField0_ &= -2049;
                            } else {
                                ensureUninterpretedOptionIsMutable();
                                this.uninterpretedOption_.addAll(fileOptions.uninterpretedOption_);
                            }
                            onChanged();
                        }
                    } else if (!fileOptions.uninterpretedOption_.isEmpty()) {
                        if (this.uninterpretedOptionBuilder_.isEmpty()) {
                            this.uninterpretedOptionBuilder_.dispose();
                            this.uninterpretedOptionBuilder_ = null;
                            this.uninterpretedOption_ = fileOptions.uninterpretedOption_;
                            this.bitField0_ &= -2049;
                            if (GeneratedMessage.alwaysUseFieldBuilders) {
                                repeatedFieldBuilder = getUninterpretedOptionFieldBuilder();
                            }
                            this.uninterpretedOptionBuilder_ = repeatedFieldBuilder;
                        } else {
                            this.uninterpretedOptionBuilder_.addAllMessages(fileOptions.uninterpretedOption_);
                        }
                    }
                    mergeExtensionFields(fileOptions);
                    mergeUnknownFields(fileOptions.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                for (int i = 0; i < getUninterpretedOptionCount(); i++) {
                    if (!getUninterpretedOption(i).isInitialized()) {
                        return false;
                    }
                }
                if (extensionsAreInitialized()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                FileOptions fileOptions;
                FileOptions fileOptions2;
                try {
                    FileOptions fileOptions3 = (FileOptions) FileOptions.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (fileOptions3 != null) {
                        mergeFrom(fileOptions3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    fileOptions2 = (FileOptions) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    fileOptions = fileOptions2;
                    th = th2;
                }
                if (fileOptions != null) {
                    mergeFrom(fileOptions);
                }
                throw th;
            }

            public boolean hasJavaPackage() {
                return (this.bitField0_ & 1) == 1;
            }

            public String getJavaPackage() {
                Object obj = this.javaPackage_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.javaPackage_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getJavaPackageBytes() {
                Object obj = this.javaPackage_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.javaPackage_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setJavaPackage(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.javaPackage_ = str;
                onChanged();
                return this;
            }

            public Builder clearJavaPackage() {
                this.bitField0_ &= -2;
                this.javaPackage_ = FileOptions.getDefaultInstance().getJavaPackage();
                onChanged();
                return this;
            }

            public Builder setJavaPackageBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.javaPackage_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasJavaOuterClassname() {
                return (this.bitField0_ & 2) == 2;
            }

            public String getJavaOuterClassname() {
                Object obj = this.javaOuterClassname_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.javaOuterClassname_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getJavaOuterClassnameBytes() {
                Object obj = this.javaOuterClassname_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.javaOuterClassname_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setJavaOuterClassname(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.javaOuterClassname_ = str;
                onChanged();
                return this;
            }

            public Builder clearJavaOuterClassname() {
                this.bitField0_ &= -3;
                this.javaOuterClassname_ = FileOptions.getDefaultInstance().getJavaOuterClassname();
                onChanged();
                return this;
            }

            public Builder setJavaOuterClassnameBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.javaOuterClassname_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasJavaMultipleFiles() {
                return (this.bitField0_ & 4) == 4;
            }

            public boolean getJavaMultipleFiles() {
                return this.javaMultipleFiles_;
            }

            public Builder setJavaMultipleFiles(boolean z) {
                this.bitField0_ |= 4;
                this.javaMultipleFiles_ = z;
                onChanged();
                return this;
            }

            public Builder clearJavaMultipleFiles() {
                this.bitField0_ &= -5;
                this.javaMultipleFiles_ = false;
                onChanged();
                return this;
            }

            public boolean hasJavaGenerateEqualsAndHash() {
                return (this.bitField0_ & 8) == 8;
            }

            public boolean getJavaGenerateEqualsAndHash() {
                return this.javaGenerateEqualsAndHash_;
            }

            public Builder setJavaGenerateEqualsAndHash(boolean z) {
                this.bitField0_ |= 8;
                this.javaGenerateEqualsAndHash_ = z;
                onChanged();
                return this;
            }

            public Builder clearJavaGenerateEqualsAndHash() {
                this.bitField0_ &= -9;
                this.javaGenerateEqualsAndHash_ = false;
                onChanged();
                return this;
            }

            public boolean hasJavaStringCheckUtf8() {
                return (this.bitField0_ & 16) == 16;
            }

            public boolean getJavaStringCheckUtf8() {
                return this.javaStringCheckUtf8_;
            }

            public Builder setJavaStringCheckUtf8(boolean z) {
                this.bitField0_ |= 16;
                this.javaStringCheckUtf8_ = z;
                onChanged();
                return this;
            }

            public Builder clearJavaStringCheckUtf8() {
                this.bitField0_ &= -17;
                this.javaStringCheckUtf8_ = false;
                onChanged();
                return this;
            }

            public boolean hasOptimizeFor() {
                return (this.bitField0_ & 32) == 32;
            }

            public OptimizeMode getOptimizeFor() {
                return this.optimizeFor_;
            }

            public Builder setOptimizeFor(OptimizeMode optimizeMode) {
                if (optimizeMode == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 32;
                this.optimizeFor_ = optimizeMode;
                onChanged();
                return this;
            }

            public Builder clearOptimizeFor() {
                this.bitField0_ &= -33;
                this.optimizeFor_ = OptimizeMode.SPEED;
                onChanged();
                return this;
            }

            public boolean hasGoPackage() {
                return (this.bitField0_ & 64) == 64;
            }

            public String getGoPackage() {
                Object obj = this.goPackage_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.goPackage_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getGoPackageBytes() {
                Object obj = this.goPackage_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.goPackage_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setGoPackage(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 64;
                this.goPackage_ = str;
                onChanged();
                return this;
            }

            public Builder clearGoPackage() {
                this.bitField0_ &= -65;
                this.goPackage_ = FileOptions.getDefaultInstance().getGoPackage();
                onChanged();
                return this;
            }

            public Builder setGoPackageBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 64;
                this.goPackage_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasCcGenericServices() {
                return (this.bitField0_ & 128) == 128;
            }

            public boolean getCcGenericServices() {
                return this.ccGenericServices_;
            }

            public Builder setCcGenericServices(boolean z) {
                this.bitField0_ |= 128;
                this.ccGenericServices_ = z;
                onChanged();
                return this;
            }

            public Builder clearCcGenericServices() {
                this.bitField0_ &= -129;
                this.ccGenericServices_ = false;
                onChanged();
                return this;
            }

            public boolean hasJavaGenericServices() {
                return (this.bitField0_ & 256) == 256;
            }

            public boolean getJavaGenericServices() {
                return this.javaGenericServices_;
            }

            public Builder setJavaGenericServices(boolean z) {
                this.bitField0_ |= 256;
                this.javaGenericServices_ = z;
                onChanged();
                return this;
            }

            public Builder clearJavaGenericServices() {
                this.bitField0_ &= -257;
                this.javaGenericServices_ = false;
                onChanged();
                return this;
            }

            public boolean hasPyGenericServices() {
                return (this.bitField0_ & 512) == 512;
            }

            public boolean getPyGenericServices() {
                return this.pyGenericServices_;
            }

            public Builder setPyGenericServices(boolean z) {
                this.bitField0_ |= 512;
                this.pyGenericServices_ = z;
                onChanged();
                return this;
            }

            public Builder clearPyGenericServices() {
                this.bitField0_ &= -513;
                this.pyGenericServices_ = false;
                onChanged();
                return this;
            }

            public boolean hasDeprecated() {
                return (this.bitField0_ & 1024) == 1024;
            }

            public boolean getDeprecated() {
                return this.deprecated_;
            }

            public Builder setDeprecated(boolean z) {
                this.bitField0_ |= 1024;
                this.deprecated_ = z;
                onChanged();
                return this;
            }

            public Builder clearDeprecated() {
                this.bitField0_ &= -1025;
                this.deprecated_ = false;
                onChanged();
                return this;
            }

            private void ensureUninterpretedOptionIsMutable() {
                if ((this.bitField0_ & 2048) != 2048) {
                    this.uninterpretedOption_ = new ArrayList(this.uninterpretedOption_);
                    this.bitField0_ |= 2048;
                }
            }

            public List<UninterpretedOption> getUninterpretedOptionList() {
                if (this.uninterpretedOptionBuilder_ == null) {
                    return Collections.unmodifiableList(this.uninterpretedOption_);
                }
                return this.uninterpretedOptionBuilder_.getMessageList();
            }

            public int getUninterpretedOptionCount() {
                if (this.uninterpretedOptionBuilder_ == null) {
                    return this.uninterpretedOption_.size();
                }
                return this.uninterpretedOptionBuilder_.getCount();
            }

            public UninterpretedOption getUninterpretedOption(int i) {
                if (this.uninterpretedOptionBuilder_ == null) {
                    return (UninterpretedOption) this.uninterpretedOption_.get(i);
                }
                return (UninterpretedOption) this.uninterpretedOptionBuilder_.getMessage(i);
            }

            public Builder setUninterpretedOption(int i, UninterpretedOption uninterpretedOption) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.setMessage(i, uninterpretedOption);
                } else if (uninterpretedOption == null) {
                    throw new NullPointerException();
                } else {
                    ensureUninterpretedOptionIsMutable();
                    this.uninterpretedOption_.set(i, uninterpretedOption);
                    onChanged();
                }
                return this;
            }

            public Builder setUninterpretedOption(int i, Builder builder) {
                if (this.uninterpretedOptionBuilder_ == null) {
                    ensureUninterpretedOptionIsMutable();
                    this.uninterpretedOption_.set(i, builder.build());
                    onChanged();
                } else {
                    this.uninterpretedOptionBuilder_.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addUninterpretedOption(UninterpretedOption uninterpretedOption) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.addMessage(uninterpretedOption);
                } else if (uninterpretedOption == null) {
                    throw new NullPointerException();
                } else {
                    ensureUninterpretedOptionIsMutable();
                    this.uninterpretedOption_.add(uninterpretedOption);
                    onChanged();
                }
                return this;
            }

            public Builder addUninterpretedOption(int i, UninterpretedOption uninterpretedOption) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.addMessage(i, uninterpretedOption);
                } else if (uninterpretedOption == null) {
                    throw new NullPointerException();
                } else {
                    ensureUninterpretedOptionIsMutable();
                    this.uninterpretedOption_.add(i, uninterpretedOption);
                    onChanged();
                }
                return this;
            }

            public Builder addUninterpretedOption(Builder builder) {
                if (this.uninterpretedOptionBuilder_ == null) {
                    ensureUninterpretedOptionIsMutable();
                    this.uninterpretedOption_.add(builder.build());
                    onChanged();
                } else {
                    this.uninterpretedOptionBuilder_.addMessage(builder.build());
                }
                return this;
            }

            public Builder addUninterpretedOption(int i, Builder builder) {
                if (this.uninterpretedOptionBuilder_ == null) {
                    ensureUninterpretedOptionIsMutable();
                    this.uninterpretedOption_.add(i, builder.build());
                    onChanged();
                } else {
                    this.uninterpretedOptionBuilder_.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllUninterpretedOption(Iterable<? extends UninterpretedOption> iterable) {
                if (this.uninterpretedOptionBuilder_ == null) {
                    ensureUninterpretedOptionIsMutable();
                    com.google.protobuf.AbstractMessageLite.Builder.addAll(iterable, this.uninterpretedOption_);
                    onChanged();
                } else {
                    this.uninterpretedOptionBuilder_.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearUninterpretedOption() {
                if (this.uninterpretedOptionBuilder_ == null) {
                    this.uninterpretedOption_ = Collections.emptyList();
                    this.bitField0_ &= -2049;
                    onChanged();
                } else {
                    this.uninterpretedOptionBuilder_.clear();
                }
                return this;
            }

            public Builder removeUninterpretedOption(int i) {
                if (this.uninterpretedOptionBuilder_ == null) {
                    ensureUninterpretedOptionIsMutable();
                    this.uninterpretedOption_.remove(i);
                    onChanged();
                } else {
                    this.uninterpretedOptionBuilder_.remove(i);
                }
                return this;
            }

            public Builder getUninterpretedOptionBuilder(int i) {
                return (Builder) getUninterpretedOptionFieldBuilder().getBuilder(i);
            }

            public UninterpretedOptionOrBuilder getUninterpretedOptionOrBuilder(int i) {
                if (this.uninterpretedOptionBuilder_ == null) {
                    return (UninterpretedOptionOrBuilder) this.uninterpretedOption_.get(i);
                }
                return (UninterpretedOptionOrBuilder) this.uninterpretedOptionBuilder_.getMessageOrBuilder(i);
            }

            public List<? extends UninterpretedOptionOrBuilder> getUninterpretedOptionOrBuilderList() {
                if (this.uninterpretedOptionBuilder_ != null) {
                    return this.uninterpretedOptionBuilder_.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.uninterpretedOption_);
            }

            public Builder addUninterpretedOptionBuilder() {
                return (Builder) getUninterpretedOptionFieldBuilder().addBuilder(UninterpretedOption.getDefaultInstance());
            }

            public Builder addUninterpretedOptionBuilder(int i) {
                return (Builder) getUninterpretedOptionFieldBuilder().addBuilder(i, UninterpretedOption.getDefaultInstance());
            }

            public List<Builder> getUninterpretedOptionBuilderList() {
                return getUninterpretedOptionFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<UninterpretedOption, Builder, UninterpretedOptionOrBuilder> getUninterpretedOptionFieldBuilder() {
                if (this.uninterpretedOptionBuilder_ == null) {
                    this.uninterpretedOptionBuilder_ = new RepeatedFieldBuilder<>(this.uninterpretedOption_, (this.bitField0_ & 2048) == 2048, getParentForChildren(), isClean());
                    this.uninterpretedOption_ = null;
                }
                return this.uninterpretedOptionBuilder_;
            }
        }

        public enum OptimizeMode implements ProtocolMessageEnum {
            SPEED(0, 1),
            CODE_SIZE(1, 2),
            LITE_RUNTIME(2, 3);
            
            public static final int CODE_SIZE_VALUE = 2;
            public static final int LITE_RUNTIME_VALUE = 3;
            public static final int SPEED_VALUE = 1;
            private static final OptimizeMode[] VALUES = null;
            private static EnumLiteMap<OptimizeMode> internalValueMap;
            private final int index;
            private final int value;

            static {
                internalValueMap = new EnumLiteMap<OptimizeMode>() {
                    public OptimizeMode findValueByNumber(int i) {
                        return OptimizeMode.valueOf(i);
                    }
                };
                VALUES = values();
            }

            public final int getNumber() {
                return this.value;
            }

            public static OptimizeMode valueOf(int i) {
                switch (i) {
                    case 1:
                        return SPEED;
                    case 2:
                        return CODE_SIZE;
                    case 3:
                        return LITE_RUNTIME;
                    default:
                        return null;
                }
            }

            public static EnumLiteMap<OptimizeMode> internalGetValueMap() {
                return internalValueMap;
            }

            public final EnumValueDescriptor getValueDescriptor() {
                return (EnumValueDescriptor) getDescriptor().getValues().get(this.index);
            }

            public final EnumDescriptor getDescriptorForType() {
                return getDescriptor();
            }

            public static final EnumDescriptor getDescriptor() {
                return (EnumDescriptor) FileOptions.getDescriptor().getEnumTypes().get(0);
            }

            public static OptimizeMode valueOf(EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }

            private OptimizeMode(int i, int i2) {
                this.index = i;
                this.value = i2;
            }
        }

        private FileOptions(ExtendableBuilder<FileOptions, ?> extendableBuilder) {
            super(extendableBuilder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = extendableBuilder.getUnknownFields();
        }

        private FileOptions(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static FileOptions getDefaultInstance() {
            return defaultInstance;
        }

        public FileOptions getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private FileOptions(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 1;
                            this.javaPackage_ = readBytes;
                            break;
                        case 66:
                            ByteString readBytes2 = codedInputStream.readBytes();
                            this.bitField0_ |= 2;
                            this.javaOuterClassname_ = readBytes2;
                            break;
                        case 72:
                            int readEnum = codedInputStream.readEnum();
                            OptimizeMode valueOf = OptimizeMode.valueOf(readEnum);
                            if (valueOf != null) {
                                this.bitField0_ |= 32;
                                this.optimizeFor_ = valueOf;
                                break;
                            } else {
                                newBuilder.mergeVarintField(9, readEnum);
                                break;
                            }
                        case 80:
                            this.bitField0_ |= 4;
                            this.javaMultipleFiles_ = codedInputStream.readBool();
                            break;
                        case 90:
                            ByteString readBytes3 = codedInputStream.readBytes();
                            this.bitField0_ |= 64;
                            this.goPackage_ = readBytes3;
                            break;
                        case 128:
                            this.bitField0_ |= 128;
                            this.ccGenericServices_ = codedInputStream.readBool();
                            break;
                        case 136:
                            this.bitField0_ |= 256;
                            this.javaGenericServices_ = codedInputStream.readBool();
                            break;
                        case CipherSuite.TLS_DHE_PSK_WITH_AES_128_CBC_SHA /*144*/:
                            this.bitField0_ |= 512;
                            this.pyGenericServices_ = codedInputStream.readBool();
                            break;
                        case 160:
                            this.bitField0_ |= 8;
                            this.javaGenerateEqualsAndHash_ = codedInputStream.readBool();
                            break;
                        case CipherSuite.TLS_RSA_PSK_WITH_NULL_SHA256 /*184*/:
                            this.bitField0_ |= 1024;
                            this.deprecated_ = codedInputStream.readBool();
                            break;
                        case 216:
                            this.bitField0_ |= 16;
                            this.javaStringCheckUtf8_ = codedInputStream.readBool();
                            break;
                        case 7994:
                            if (!(z2 & true)) {
                                this.uninterpretedOption_ = new ArrayList();
                                z2 |= true;
                            }
                            this.uninterpretedOption_.add(codedInputStream.readMessage(UninterpretedOption.PARSER, extensionRegistryLite));
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
                        this.uninterpretedOption_ = Collections.unmodifiableList(this.uninterpretedOption_);
                    }
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            if (z2 & true) {
                this.uninterpretedOption_ = Collections.unmodifiableList(this.uninterpretedOption_);
            }
            this.unknownFields = newBuilder.build();
            makeExtensionsImmutable();
        }

        public static final Descriptor getDescriptor() {
            return DescriptorProtos.internal_static_google_protobuf_FileOptions_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return DescriptorProtos.internal_static_google_protobuf_FileOptions_fieldAccessorTable.ensureFieldAccessorsInitialized(FileOptions.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<FileOptions> getParserForType() {
            return PARSER;
        }

        public boolean hasJavaPackage() {
            return (this.bitField0_ & 1) == 1;
        }

        public String getJavaPackage() {
            Object obj = this.javaPackage_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.javaPackage_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getJavaPackageBytes() {
            Object obj = this.javaPackage_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.javaPackage_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasJavaOuterClassname() {
            return (this.bitField0_ & 2) == 2;
        }

        public String getJavaOuterClassname() {
            Object obj = this.javaOuterClassname_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.javaOuterClassname_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getJavaOuterClassnameBytes() {
            Object obj = this.javaOuterClassname_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.javaOuterClassname_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasJavaMultipleFiles() {
            return (this.bitField0_ & 4) == 4;
        }

        public boolean getJavaMultipleFiles() {
            return this.javaMultipleFiles_;
        }

        public boolean hasJavaGenerateEqualsAndHash() {
            return (this.bitField0_ & 8) == 8;
        }

        public boolean getJavaGenerateEqualsAndHash() {
            return this.javaGenerateEqualsAndHash_;
        }

        public boolean hasJavaStringCheckUtf8() {
            return (this.bitField0_ & 16) == 16;
        }

        public boolean getJavaStringCheckUtf8() {
            return this.javaStringCheckUtf8_;
        }

        public boolean hasOptimizeFor() {
            return (this.bitField0_ & 32) == 32;
        }

        public OptimizeMode getOptimizeFor() {
            return this.optimizeFor_;
        }

        public boolean hasGoPackage() {
            return (this.bitField0_ & 64) == 64;
        }

        public String getGoPackage() {
            Object obj = this.goPackage_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.goPackage_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getGoPackageBytes() {
            Object obj = this.goPackage_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.goPackage_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasCcGenericServices() {
            return (this.bitField0_ & 128) == 128;
        }

        public boolean getCcGenericServices() {
            return this.ccGenericServices_;
        }

        public boolean hasJavaGenericServices() {
            return (this.bitField0_ & 256) == 256;
        }

        public boolean getJavaGenericServices() {
            return this.javaGenericServices_;
        }

        public boolean hasPyGenericServices() {
            return (this.bitField0_ & 512) == 512;
        }

        public boolean getPyGenericServices() {
            return this.pyGenericServices_;
        }

        public boolean hasDeprecated() {
            return (this.bitField0_ & 1024) == 1024;
        }

        public boolean getDeprecated() {
            return this.deprecated_;
        }

        public List<UninterpretedOption> getUninterpretedOptionList() {
            return this.uninterpretedOption_;
        }

        public List<? extends UninterpretedOptionOrBuilder> getUninterpretedOptionOrBuilderList() {
            return this.uninterpretedOption_;
        }

        public int getUninterpretedOptionCount() {
            return this.uninterpretedOption_.size();
        }

        public UninterpretedOption getUninterpretedOption(int i) {
            return (UninterpretedOption) this.uninterpretedOption_.get(i);
        }

        public UninterpretedOptionOrBuilder getUninterpretedOptionOrBuilder(int i) {
            return (UninterpretedOptionOrBuilder) this.uninterpretedOption_.get(i);
        }

        private void initFields() {
            this.javaPackage_ = "";
            this.javaOuterClassname_ = "";
            this.javaMultipleFiles_ = false;
            this.javaGenerateEqualsAndHash_ = false;
            this.javaStringCheckUtf8_ = false;
            this.optimizeFor_ = OptimizeMode.SPEED;
            this.goPackage_ = "";
            this.ccGenericServices_ = false;
            this.javaGenericServices_ = false;
            this.pyGenericServices_ = false;
            this.deprecated_ = false;
            this.uninterpretedOption_ = Collections.emptyList();
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            for (int i = 0; i < getUninterpretedOptionCount(); i++) {
                if (!getUninterpretedOption(i).isInitialized()) {
                    this.memoizedIsInitialized = 0;
                    return false;
                }
            }
            if (!extensionsAreInitialized()) {
                this.memoizedIsInitialized = 0;
                return false;
            }
            this.memoizedIsInitialized = 1;
            return true;
        }

        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            ExtensionWriter newExtensionWriter = newExtensionWriter();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeBytes(1, getJavaPackageBytes());
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeBytes(8, getJavaOuterClassnameBytes());
            }
            if ((this.bitField0_ & 32) == 32) {
                codedOutputStream.writeEnum(9, this.optimizeFor_.getNumber());
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBool(10, this.javaMultipleFiles_);
            }
            if ((this.bitField0_ & 64) == 64) {
                codedOutputStream.writeBytes(11, getGoPackageBytes());
            }
            if ((this.bitField0_ & 128) == 128) {
                codedOutputStream.writeBool(16, this.ccGenericServices_);
            }
            if ((this.bitField0_ & 256) == 256) {
                codedOutputStream.writeBool(17, this.javaGenericServices_);
            }
            if ((this.bitField0_ & 512) == 512) {
                codedOutputStream.writeBool(18, this.pyGenericServices_);
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeBool(20, this.javaGenerateEqualsAndHash_);
            }
            if ((this.bitField0_ & 1024) == 1024) {
                codedOutputStream.writeBool(23, this.deprecated_);
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeBool(27, this.javaStringCheckUtf8_);
            }
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.uninterpretedOption_.size()) {
                    codedOutputStream.writeMessage(999, (MessageLite) this.uninterpretedOption_.get(i2));
                    i = i2 + 1;
                } else {
                    newExtensionWriter.writeUntil(PKIFailureInfo.duplicateCertReq, codedOutputStream);
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
                i = CodedOutputStream.computeBytesSize(1, getJavaPackageBytes()) + 0;
            } else {
                i = 0;
            }
            if ((this.bitField0_ & 2) == 2) {
                i += CodedOutputStream.computeBytesSize(8, getJavaOuterClassnameBytes());
            }
            if ((this.bitField0_ & 32) == 32) {
                i += CodedOutputStream.computeEnumSize(9, this.optimizeFor_.getNumber());
            }
            if ((this.bitField0_ & 4) == 4) {
                i += CodedOutputStream.computeBoolSize(10, this.javaMultipleFiles_);
            }
            if ((this.bitField0_ & 64) == 64) {
                i += CodedOutputStream.computeBytesSize(11, getGoPackageBytes());
            }
            if ((this.bitField0_ & 128) == 128) {
                i += CodedOutputStream.computeBoolSize(16, this.ccGenericServices_);
            }
            if ((this.bitField0_ & 256) == 256) {
                i += CodedOutputStream.computeBoolSize(17, this.javaGenericServices_);
            }
            if ((this.bitField0_ & 512) == 512) {
                i += CodedOutputStream.computeBoolSize(18, this.pyGenericServices_);
            }
            if ((this.bitField0_ & 8) == 8) {
                i += CodedOutputStream.computeBoolSize(20, this.javaGenerateEqualsAndHash_);
            }
            if ((this.bitField0_ & 1024) == 1024) {
                i += CodedOutputStream.computeBoolSize(23, this.deprecated_);
            }
            if ((this.bitField0_ & 16) == 16) {
                i += CodedOutputStream.computeBoolSize(27, this.javaStringCheckUtf8_);
            }
            while (true) {
                int i4 = i;
                if (i2 < this.uninterpretedOption_.size()) {
                    i = CodedOutputStream.computeMessageSize(999, (MessageLite) this.uninterpretedOption_.get(i2)) + i4;
                    i2++;
                } else {
                    int extensionsSerializedSize = extensionsSerializedSize() + i4 + getUnknownFields().getSerializedSize();
                    this.memoizedSerializedSize = extensionsSerializedSize;
                    return extensionsSerializedSize;
                }
            }
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static FileOptions parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (FileOptions) PARSER.parseFrom(byteString);
        }

        public static FileOptions parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (FileOptions) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static FileOptions parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (FileOptions) PARSER.parseFrom(bArr);
        }

        public static FileOptions parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (FileOptions) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static FileOptions parseFrom(InputStream inputStream) throws IOException {
            return (FileOptions) PARSER.parseFrom(inputStream);
        }

        public static FileOptions parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (FileOptions) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static FileOptions parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (FileOptions) PARSER.parseDelimitedFrom(inputStream);
        }

        public static FileOptions parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (FileOptions) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static FileOptions parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (FileOptions) PARSER.parseFrom(codedInputStream);
        }

        public static FileOptions parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (FileOptions) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(FileOptions fileOptions) {
            return newBuilder().mergeFrom(fileOptions);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface FileOptionsOrBuilder extends ExtendableMessageOrBuilder<FileOptions> {
        boolean getCcGenericServices();

        boolean getDeprecated();

        String getGoPackage();

        ByteString getGoPackageBytes();

        boolean getJavaGenerateEqualsAndHash();

        boolean getJavaGenericServices();

        boolean getJavaMultipleFiles();

        String getJavaOuterClassname();

        ByteString getJavaOuterClassnameBytes();

        String getJavaPackage();

        ByteString getJavaPackageBytes();

        boolean getJavaStringCheckUtf8();

        OptimizeMode getOptimizeFor();

        boolean getPyGenericServices();

        UninterpretedOption getUninterpretedOption(int i);

        int getUninterpretedOptionCount();

        List<UninterpretedOption> getUninterpretedOptionList();

        UninterpretedOptionOrBuilder getUninterpretedOptionOrBuilder(int i);

        List<? extends UninterpretedOptionOrBuilder> getUninterpretedOptionOrBuilderList();

        boolean hasCcGenericServices();

        boolean hasDeprecated();

        boolean hasGoPackage();

        boolean hasJavaGenerateEqualsAndHash();

        boolean hasJavaGenericServices();

        boolean hasJavaMultipleFiles();

        boolean hasJavaOuterClassname();

        boolean hasJavaPackage();

        boolean hasJavaStringCheckUtf8();

        boolean hasOptimizeFor();

        boolean hasPyGenericServices();
    }

    public static final class MessageOptions extends ExtendableMessage<MessageOptions> implements MessageOptionsOrBuilder {
        public static final int DEPRECATED_FIELD_NUMBER = 3;
        public static final int MESSAGE_SET_WIRE_FORMAT_FIELD_NUMBER = 1;
        public static final int NO_STANDARD_DESCRIPTOR_ACCESSOR_FIELD_NUMBER = 2;
        public static Parser<MessageOptions> PARSER = new AbstractParser<MessageOptions>() {
            public MessageOptions parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new MessageOptions(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int UNINTERPRETED_OPTION_FIELD_NUMBER = 999;
        private static final MessageOptions defaultInstance = new MessageOptions(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public boolean deprecated_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public boolean messageSetWireFormat_;
        /* access modifiers changed from: private */
        public boolean noStandardDescriptorAccessor_;
        /* access modifiers changed from: private */
        public List<UninterpretedOption> uninterpretedOption_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends ExtendableBuilder<MessageOptions, Builder> implements MessageOptionsOrBuilder {
            private int bitField0_;
            private boolean deprecated_;
            private boolean messageSetWireFormat_;
            private boolean noStandardDescriptorAccessor_;
            private RepeatedFieldBuilder<UninterpretedOption, Builder, UninterpretedOptionOrBuilder> uninterpretedOptionBuilder_;
            private List<UninterpretedOption> uninterpretedOption_;

            public static final Descriptor getDescriptor() {
                return DescriptorProtos.internal_static_google_protobuf_MessageOptions_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return DescriptorProtos.internal_static_google_protobuf_MessageOptions_fieldAccessorTable.ensureFieldAccessorsInitialized(MessageOptions.class, Builder.class);
            }

            private Builder() {
                this.uninterpretedOption_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.uninterpretedOption_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    getUninterpretedOptionFieldBuilder();
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.messageSetWireFormat_ = false;
                this.bitField0_ &= -2;
                this.noStandardDescriptorAccessor_ = false;
                this.bitField0_ &= -3;
                this.deprecated_ = false;
                this.bitField0_ &= -5;
                if (this.uninterpretedOptionBuilder_ == null) {
                    this.uninterpretedOption_ = Collections.emptyList();
                    this.bitField0_ &= -9;
                } else {
                    this.uninterpretedOptionBuilder_.clear();
                }
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return DescriptorProtos.internal_static_google_protobuf_MessageOptions_descriptor;
            }

            public MessageOptions getDefaultInstanceForType() {
                return MessageOptions.getDefaultInstance();
            }

            public MessageOptions build() {
                MessageOptions buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public MessageOptions buildPartial() {
                int i = 1;
                MessageOptions messageOptions = new MessageOptions((ExtendableBuilder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                messageOptions.messageSetWireFormat_ = this.messageSetWireFormat_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                messageOptions.noStandardDescriptorAccessor_ = this.noStandardDescriptorAccessor_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                messageOptions.deprecated_ = this.deprecated_;
                if (this.uninterpretedOptionBuilder_ == null) {
                    if ((this.bitField0_ & 8) == 8) {
                        this.uninterpretedOption_ = Collections.unmodifiableList(this.uninterpretedOption_);
                        this.bitField0_ &= -9;
                    }
                    messageOptions.uninterpretedOption_ = this.uninterpretedOption_;
                } else {
                    messageOptions.uninterpretedOption_ = this.uninterpretedOptionBuilder_.build();
                }
                messageOptions.bitField0_ = i;
                onBuilt();
                return messageOptions;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof MessageOptions) {
                    return mergeFrom((MessageOptions) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(MessageOptions messageOptions) {
                RepeatedFieldBuilder<UninterpretedOption, Builder, UninterpretedOptionOrBuilder> repeatedFieldBuilder = null;
                if (messageOptions != MessageOptions.getDefaultInstance()) {
                    if (messageOptions.hasMessageSetWireFormat()) {
                        setMessageSetWireFormat(messageOptions.getMessageSetWireFormat());
                    }
                    if (messageOptions.hasNoStandardDescriptorAccessor()) {
                        setNoStandardDescriptorAccessor(messageOptions.getNoStandardDescriptorAccessor());
                    }
                    if (messageOptions.hasDeprecated()) {
                        setDeprecated(messageOptions.getDeprecated());
                    }
                    if (this.uninterpretedOptionBuilder_ == null) {
                        if (!messageOptions.uninterpretedOption_.isEmpty()) {
                            if (this.uninterpretedOption_.isEmpty()) {
                                this.uninterpretedOption_ = messageOptions.uninterpretedOption_;
                                this.bitField0_ &= -9;
                            } else {
                                ensureUninterpretedOptionIsMutable();
                                this.uninterpretedOption_.addAll(messageOptions.uninterpretedOption_);
                            }
                            onChanged();
                        }
                    } else if (!messageOptions.uninterpretedOption_.isEmpty()) {
                        if (this.uninterpretedOptionBuilder_.isEmpty()) {
                            this.uninterpretedOptionBuilder_.dispose();
                            this.uninterpretedOptionBuilder_ = null;
                            this.uninterpretedOption_ = messageOptions.uninterpretedOption_;
                            this.bitField0_ &= -9;
                            if (GeneratedMessage.alwaysUseFieldBuilders) {
                                repeatedFieldBuilder = getUninterpretedOptionFieldBuilder();
                            }
                            this.uninterpretedOptionBuilder_ = repeatedFieldBuilder;
                        } else {
                            this.uninterpretedOptionBuilder_.addAllMessages(messageOptions.uninterpretedOption_);
                        }
                    }
                    mergeExtensionFields(messageOptions);
                    mergeUnknownFields(messageOptions.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                for (int i = 0; i < getUninterpretedOptionCount(); i++) {
                    if (!getUninterpretedOption(i).isInitialized()) {
                        return false;
                    }
                }
                if (extensionsAreInitialized()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                MessageOptions messageOptions;
                MessageOptions messageOptions2;
                try {
                    MessageOptions messageOptions3 = (MessageOptions) MessageOptions.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (messageOptions3 != null) {
                        mergeFrom(messageOptions3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    messageOptions2 = (MessageOptions) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    messageOptions = messageOptions2;
                    th = th2;
                }
                if (messageOptions != null) {
                    mergeFrom(messageOptions);
                }
                throw th;
            }

            public boolean hasMessageSetWireFormat() {
                return (this.bitField0_ & 1) == 1;
            }

            public boolean getMessageSetWireFormat() {
                return this.messageSetWireFormat_;
            }

            public Builder setMessageSetWireFormat(boolean z) {
                this.bitField0_ |= 1;
                this.messageSetWireFormat_ = z;
                onChanged();
                return this;
            }

            public Builder clearMessageSetWireFormat() {
                this.bitField0_ &= -2;
                this.messageSetWireFormat_ = false;
                onChanged();
                return this;
            }

            public boolean hasNoStandardDescriptorAccessor() {
                return (this.bitField0_ & 2) == 2;
            }

            public boolean getNoStandardDescriptorAccessor() {
                return this.noStandardDescriptorAccessor_;
            }

            public Builder setNoStandardDescriptorAccessor(boolean z) {
                this.bitField0_ |= 2;
                this.noStandardDescriptorAccessor_ = z;
                onChanged();
                return this;
            }

            public Builder clearNoStandardDescriptorAccessor() {
                this.bitField0_ &= -3;
                this.noStandardDescriptorAccessor_ = false;
                onChanged();
                return this;
            }

            public boolean hasDeprecated() {
                return (this.bitField0_ & 4) == 4;
            }

            public boolean getDeprecated() {
                return this.deprecated_;
            }

            public Builder setDeprecated(boolean z) {
                this.bitField0_ |= 4;
                this.deprecated_ = z;
                onChanged();
                return this;
            }

            public Builder clearDeprecated() {
                this.bitField0_ &= -5;
                this.deprecated_ = false;
                onChanged();
                return this;
            }

            private void ensureUninterpretedOptionIsMutable() {
                if ((this.bitField0_ & 8) != 8) {
                    this.uninterpretedOption_ = new ArrayList(this.uninterpretedOption_);
                    this.bitField0_ |= 8;
                }
            }

            public List<UninterpretedOption> getUninterpretedOptionList() {
                if (this.uninterpretedOptionBuilder_ == null) {
                    return Collections.unmodifiableList(this.uninterpretedOption_);
                }
                return this.uninterpretedOptionBuilder_.getMessageList();
            }

            public int getUninterpretedOptionCount() {
                if (this.uninterpretedOptionBuilder_ == null) {
                    return this.uninterpretedOption_.size();
                }
                return this.uninterpretedOptionBuilder_.getCount();
            }

            public UninterpretedOption getUninterpretedOption(int i) {
                if (this.uninterpretedOptionBuilder_ == null) {
                    return (UninterpretedOption) this.uninterpretedOption_.get(i);
                }
                return (UninterpretedOption) this.uninterpretedOptionBuilder_.getMessage(i);
            }

            public Builder setUninterpretedOption(int i, UninterpretedOption uninterpretedOption) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.setMessage(i, uninterpretedOption);
                } else if (uninterpretedOption == null) {
                    throw new NullPointerException();
                } else {
                    ensureUninterpretedOptionIsMutable();
                    this.uninterpretedOption_.set(i, uninterpretedOption);
                    onChanged();
                }
                return this;
            }

            public Builder setUninterpretedOption(int i, Builder builder) {
                if (this.uninterpretedOptionBuilder_ == null) {
                    ensureUninterpretedOptionIsMutable();
                    this.uninterpretedOption_.set(i, builder.build());
                    onChanged();
                } else {
                    this.uninterpretedOptionBuilder_.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addUninterpretedOption(UninterpretedOption uninterpretedOption) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.addMessage(uninterpretedOption);
                } else if (uninterpretedOption == null) {
                    throw new NullPointerException();
                } else {
                    ensureUninterpretedOptionIsMutable();
                    this.uninterpretedOption_.add(uninterpretedOption);
                    onChanged();
                }
                return this;
            }

            public Builder addUninterpretedOption(int i, UninterpretedOption uninterpretedOption) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.addMessage(i, uninterpretedOption);
                } else if (uninterpretedOption == null) {
                    throw new NullPointerException();
                } else {
                    ensureUninterpretedOptionIsMutable();
                    this.uninterpretedOption_.add(i, uninterpretedOption);
                    onChanged();
                }
                return this;
            }

            public Builder addUninterpretedOption(Builder builder) {
                if (this.uninterpretedOptionBuilder_ == null) {
                    ensureUninterpretedOptionIsMutable();
                    this.uninterpretedOption_.add(builder.build());
                    onChanged();
                } else {
                    this.uninterpretedOptionBuilder_.addMessage(builder.build());
                }
                return this;
            }

            public Builder addUninterpretedOption(int i, Builder builder) {
                if (this.uninterpretedOptionBuilder_ == null) {
                    ensureUninterpretedOptionIsMutable();
                    this.uninterpretedOption_.add(i, builder.build());
                    onChanged();
                } else {
                    this.uninterpretedOptionBuilder_.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllUninterpretedOption(Iterable<? extends UninterpretedOption> iterable) {
                if (this.uninterpretedOptionBuilder_ == null) {
                    ensureUninterpretedOptionIsMutable();
                    com.google.protobuf.AbstractMessageLite.Builder.addAll(iterable, this.uninterpretedOption_);
                    onChanged();
                } else {
                    this.uninterpretedOptionBuilder_.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearUninterpretedOption() {
                if (this.uninterpretedOptionBuilder_ == null) {
                    this.uninterpretedOption_ = Collections.emptyList();
                    this.bitField0_ &= -9;
                    onChanged();
                } else {
                    this.uninterpretedOptionBuilder_.clear();
                }
                return this;
            }

            public Builder removeUninterpretedOption(int i) {
                if (this.uninterpretedOptionBuilder_ == null) {
                    ensureUninterpretedOptionIsMutable();
                    this.uninterpretedOption_.remove(i);
                    onChanged();
                } else {
                    this.uninterpretedOptionBuilder_.remove(i);
                }
                return this;
            }

            public Builder getUninterpretedOptionBuilder(int i) {
                return (Builder) getUninterpretedOptionFieldBuilder().getBuilder(i);
            }

            public UninterpretedOptionOrBuilder getUninterpretedOptionOrBuilder(int i) {
                if (this.uninterpretedOptionBuilder_ == null) {
                    return (UninterpretedOptionOrBuilder) this.uninterpretedOption_.get(i);
                }
                return (UninterpretedOptionOrBuilder) this.uninterpretedOptionBuilder_.getMessageOrBuilder(i);
            }

            public List<? extends UninterpretedOptionOrBuilder> getUninterpretedOptionOrBuilderList() {
                if (this.uninterpretedOptionBuilder_ != null) {
                    return this.uninterpretedOptionBuilder_.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.uninterpretedOption_);
            }

            public Builder addUninterpretedOptionBuilder() {
                return (Builder) getUninterpretedOptionFieldBuilder().addBuilder(UninterpretedOption.getDefaultInstance());
            }

            public Builder addUninterpretedOptionBuilder(int i) {
                return (Builder) getUninterpretedOptionFieldBuilder().addBuilder(i, UninterpretedOption.getDefaultInstance());
            }

            public List<Builder> getUninterpretedOptionBuilderList() {
                return getUninterpretedOptionFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<UninterpretedOption, Builder, UninterpretedOptionOrBuilder> getUninterpretedOptionFieldBuilder() {
                if (this.uninterpretedOptionBuilder_ == null) {
                    this.uninterpretedOptionBuilder_ = new RepeatedFieldBuilder<>(this.uninterpretedOption_, (this.bitField0_ & 8) == 8, getParentForChildren(), isClean());
                    this.uninterpretedOption_ = null;
                }
                return this.uninterpretedOptionBuilder_;
            }
        }

        private MessageOptions(ExtendableBuilder<MessageOptions, ?> extendableBuilder) {
            super(extendableBuilder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = extendableBuilder.getUnknownFields();
        }

        private MessageOptions(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static MessageOptions getDefaultInstance() {
            return defaultInstance;
        }

        public MessageOptions getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private MessageOptions(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.messageSetWireFormat_ = codedInputStream.readBool();
                            break;
                        case 16:
                            this.bitField0_ |= 2;
                            this.noStandardDescriptorAccessor_ = codedInputStream.readBool();
                            break;
                        case 24:
                            this.bitField0_ |= 4;
                            this.deprecated_ = codedInputStream.readBool();
                            break;
                        case 7994:
                            if (!(z2 & true)) {
                                this.uninterpretedOption_ = new ArrayList();
                                z2 |= true;
                            }
                            this.uninterpretedOption_.add(codedInputStream.readMessage(UninterpretedOption.PARSER, extensionRegistryLite));
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
                        this.uninterpretedOption_ = Collections.unmodifiableList(this.uninterpretedOption_);
                    }
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            if (z2 & true) {
                this.uninterpretedOption_ = Collections.unmodifiableList(this.uninterpretedOption_);
            }
            this.unknownFields = newBuilder.build();
            makeExtensionsImmutable();
        }

        public static final Descriptor getDescriptor() {
            return DescriptorProtos.internal_static_google_protobuf_MessageOptions_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return DescriptorProtos.internal_static_google_protobuf_MessageOptions_fieldAccessorTable.ensureFieldAccessorsInitialized(MessageOptions.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<MessageOptions> getParserForType() {
            return PARSER;
        }

        public boolean hasMessageSetWireFormat() {
            return (this.bitField0_ & 1) == 1;
        }

        public boolean getMessageSetWireFormat() {
            return this.messageSetWireFormat_;
        }

        public boolean hasNoStandardDescriptorAccessor() {
            return (this.bitField0_ & 2) == 2;
        }

        public boolean getNoStandardDescriptorAccessor() {
            return this.noStandardDescriptorAccessor_;
        }

        public boolean hasDeprecated() {
            return (this.bitField0_ & 4) == 4;
        }

        public boolean getDeprecated() {
            return this.deprecated_;
        }

        public List<UninterpretedOption> getUninterpretedOptionList() {
            return this.uninterpretedOption_;
        }

        public List<? extends UninterpretedOptionOrBuilder> getUninterpretedOptionOrBuilderList() {
            return this.uninterpretedOption_;
        }

        public int getUninterpretedOptionCount() {
            return this.uninterpretedOption_.size();
        }

        public UninterpretedOption getUninterpretedOption(int i) {
            return (UninterpretedOption) this.uninterpretedOption_.get(i);
        }

        public UninterpretedOptionOrBuilder getUninterpretedOptionOrBuilder(int i) {
            return (UninterpretedOptionOrBuilder) this.uninterpretedOption_.get(i);
        }

        private void initFields() {
            this.messageSetWireFormat_ = false;
            this.noStandardDescriptorAccessor_ = false;
            this.deprecated_ = false;
            this.uninterpretedOption_ = Collections.emptyList();
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            for (int i = 0; i < getUninterpretedOptionCount(); i++) {
                if (!getUninterpretedOption(i).isInitialized()) {
                    this.memoizedIsInitialized = 0;
                    return false;
                }
            }
            if (!extensionsAreInitialized()) {
                this.memoizedIsInitialized = 0;
                return false;
            }
            this.memoizedIsInitialized = 1;
            return true;
        }

        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            ExtensionWriter newExtensionWriter = newExtensionWriter();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeBool(1, this.messageSetWireFormat_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeBool(2, this.noStandardDescriptorAccessor_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBool(3, this.deprecated_);
            }
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.uninterpretedOption_.size()) {
                    codedOutputStream.writeMessage(999, (MessageLite) this.uninterpretedOption_.get(i2));
                    i = i2 + 1;
                } else {
                    newExtensionWriter.writeUntil(PKIFailureInfo.duplicateCertReq, codedOutputStream);
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
                i = CodedOutputStream.computeBoolSize(1, this.messageSetWireFormat_) + 0;
            } else {
                i = 0;
            }
            if ((this.bitField0_ & 2) == 2) {
                i += CodedOutputStream.computeBoolSize(2, this.noStandardDescriptorAccessor_);
            }
            if ((this.bitField0_ & 4) == 4) {
                i += CodedOutputStream.computeBoolSize(3, this.deprecated_);
            }
            while (true) {
                int i4 = i;
                if (i2 < this.uninterpretedOption_.size()) {
                    i = CodedOutputStream.computeMessageSize(999, (MessageLite) this.uninterpretedOption_.get(i2)) + i4;
                    i2++;
                } else {
                    int extensionsSerializedSize = extensionsSerializedSize() + i4 + getUnknownFields().getSerializedSize();
                    this.memoizedSerializedSize = extensionsSerializedSize;
                    return extensionsSerializedSize;
                }
            }
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static MessageOptions parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (MessageOptions) PARSER.parseFrom(byteString);
        }

        public static MessageOptions parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (MessageOptions) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static MessageOptions parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (MessageOptions) PARSER.parseFrom(bArr);
        }

        public static MessageOptions parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (MessageOptions) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static MessageOptions parseFrom(InputStream inputStream) throws IOException {
            return (MessageOptions) PARSER.parseFrom(inputStream);
        }

        public static MessageOptions parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (MessageOptions) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static MessageOptions parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (MessageOptions) PARSER.parseDelimitedFrom(inputStream);
        }

        public static MessageOptions parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (MessageOptions) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static MessageOptions parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (MessageOptions) PARSER.parseFrom(codedInputStream);
        }

        public static MessageOptions parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (MessageOptions) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(MessageOptions messageOptions) {
            return newBuilder().mergeFrom(messageOptions);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface MessageOptionsOrBuilder extends ExtendableMessageOrBuilder<MessageOptions> {
        boolean getDeprecated();

        boolean getMessageSetWireFormat();

        boolean getNoStandardDescriptorAccessor();

        UninterpretedOption getUninterpretedOption(int i);

        int getUninterpretedOptionCount();

        List<UninterpretedOption> getUninterpretedOptionList();

        UninterpretedOptionOrBuilder getUninterpretedOptionOrBuilder(int i);

        List<? extends UninterpretedOptionOrBuilder> getUninterpretedOptionOrBuilderList();

        boolean hasDeprecated();

        boolean hasMessageSetWireFormat();

        boolean hasNoStandardDescriptorAccessor();
    }

    public static final class MethodDescriptorProto extends GeneratedMessage implements MethodDescriptorProtoOrBuilder {
        public static final int INPUT_TYPE_FIELD_NUMBER = 2;
        public static final int NAME_FIELD_NUMBER = 1;
        public static final int OPTIONS_FIELD_NUMBER = 4;
        public static final int OUTPUT_TYPE_FIELD_NUMBER = 3;
        public static Parser<MethodDescriptorProto> PARSER = new AbstractParser<MethodDescriptorProto>() {
            public MethodDescriptorProto parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new MethodDescriptorProto(codedInputStream, extensionRegistryLite);
            }
        };
        private static final MethodDescriptorProto defaultInstance = new MethodDescriptorProto(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public Object inputType_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public Object name_;
        /* access modifiers changed from: private */
        public MethodOptions options_;
        /* access modifiers changed from: private */
        public Object outputType_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements MethodDescriptorProtoOrBuilder {
            private int bitField0_;
            private Object inputType_;
            private Object name_;
            private SingleFieldBuilder<MethodOptions, Builder, MethodOptionsOrBuilder> optionsBuilder_;
            private MethodOptions options_;
            private Object outputType_;

            public static final Descriptor getDescriptor() {
                return DescriptorProtos.internal_static_google_protobuf_MethodDescriptorProto_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return DescriptorProtos.internal_static_google_protobuf_MethodDescriptorProto_fieldAccessorTable.ensureFieldAccessorsInitialized(MethodDescriptorProto.class, Builder.class);
            }

            private Builder() {
                this.name_ = "";
                this.inputType_ = "";
                this.outputType_ = "";
                this.options_ = MethodOptions.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.name_ = "";
                this.inputType_ = "";
                this.outputType_ = "";
                this.options_ = MethodOptions.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    getOptionsFieldBuilder();
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.name_ = "";
                this.bitField0_ &= -2;
                this.inputType_ = "";
                this.bitField0_ &= -3;
                this.outputType_ = "";
                this.bitField0_ &= -5;
                if (this.optionsBuilder_ == null) {
                    this.options_ = MethodOptions.getDefaultInstance();
                } else {
                    this.optionsBuilder_.clear();
                }
                this.bitField0_ &= -9;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return DescriptorProtos.internal_static_google_protobuf_MethodDescriptorProto_descriptor;
            }

            public MethodDescriptorProto getDefaultInstanceForType() {
                return MethodDescriptorProto.getDefaultInstance();
            }

            public MethodDescriptorProto build() {
                MethodDescriptorProto buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public MethodDescriptorProto buildPartial() {
                int i;
                int i2 = 1;
                MethodDescriptorProto methodDescriptorProto = new MethodDescriptorProto((com.google.protobuf.GeneratedMessage.Builder) this);
                int i3 = this.bitField0_;
                if ((i3 & 1) != 1) {
                    i2 = 0;
                }
                methodDescriptorProto.name_ = this.name_;
                if ((i3 & 2) == 2) {
                    i2 |= 2;
                }
                methodDescriptorProto.inputType_ = this.inputType_;
                if ((i3 & 4) == 4) {
                    i2 |= 4;
                }
                methodDescriptorProto.outputType_ = this.outputType_;
                if ((i3 & 8) == 8) {
                    i = i2 | 8;
                } else {
                    i = i2;
                }
                if (this.optionsBuilder_ == null) {
                    methodDescriptorProto.options_ = this.options_;
                } else {
                    methodDescriptorProto.options_ = (MethodOptions) this.optionsBuilder_.build();
                }
                methodDescriptorProto.bitField0_ = i;
                onBuilt();
                return methodDescriptorProto;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof MethodDescriptorProto) {
                    return mergeFrom((MethodDescriptorProto) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(MethodDescriptorProto methodDescriptorProto) {
                if (methodDescriptorProto != MethodDescriptorProto.getDefaultInstance()) {
                    if (methodDescriptorProto.hasName()) {
                        this.bitField0_ |= 1;
                        this.name_ = methodDescriptorProto.name_;
                        onChanged();
                    }
                    if (methodDescriptorProto.hasInputType()) {
                        this.bitField0_ |= 2;
                        this.inputType_ = methodDescriptorProto.inputType_;
                        onChanged();
                    }
                    if (methodDescriptorProto.hasOutputType()) {
                        this.bitField0_ |= 4;
                        this.outputType_ = methodDescriptorProto.outputType_;
                        onChanged();
                    }
                    if (methodDescriptorProto.hasOptions()) {
                        mergeOptions(methodDescriptorProto.getOptions());
                    }
                    mergeUnknownFields(methodDescriptorProto.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                if (!hasOptions() || getOptions().isInitialized()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                MethodDescriptorProto methodDescriptorProto;
                MethodDescriptorProto methodDescriptorProto2;
                try {
                    MethodDescriptorProto methodDescriptorProto3 = (MethodDescriptorProto) MethodDescriptorProto.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (methodDescriptorProto3 != null) {
                        mergeFrom(methodDescriptorProto3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    methodDescriptorProto2 = (MethodDescriptorProto) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    methodDescriptorProto = methodDescriptorProto2;
                    th = th2;
                }
                if (methodDescriptorProto != null) {
                    mergeFrom(methodDescriptorProto);
                }
                throw th;
            }

            public boolean hasName() {
                return (this.bitField0_ & 1) == 1;
            }

            public String getName() {
                Object obj = this.name_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.name_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getNameBytes() {
                Object obj = this.name_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.name_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setName(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.name_ = str;
                onChanged();
                return this;
            }

            public Builder clearName() {
                this.bitField0_ &= -2;
                this.name_ = MethodDescriptorProto.getDefaultInstance().getName();
                onChanged();
                return this;
            }

            public Builder setNameBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.name_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasInputType() {
                return (this.bitField0_ & 2) == 2;
            }

            public String getInputType() {
                Object obj = this.inputType_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.inputType_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getInputTypeBytes() {
                Object obj = this.inputType_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.inputType_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setInputType(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.inputType_ = str;
                onChanged();
                return this;
            }

            public Builder clearInputType() {
                this.bitField0_ &= -3;
                this.inputType_ = MethodDescriptorProto.getDefaultInstance().getInputType();
                onChanged();
                return this;
            }

            public Builder setInputTypeBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.inputType_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasOutputType() {
                return (this.bitField0_ & 4) == 4;
            }

            public String getOutputType() {
                Object obj = this.outputType_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.outputType_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getOutputTypeBytes() {
                Object obj = this.outputType_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.outputType_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setOutputType(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.outputType_ = str;
                onChanged();
                return this;
            }

            public Builder clearOutputType() {
                this.bitField0_ &= -5;
                this.outputType_ = MethodDescriptorProto.getDefaultInstance().getOutputType();
                onChanged();
                return this;
            }

            public Builder setOutputTypeBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.outputType_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasOptions() {
                return (this.bitField0_ & 8) == 8;
            }

            public MethodOptions getOptions() {
                if (this.optionsBuilder_ == null) {
                    return this.options_;
                }
                return (MethodOptions) this.optionsBuilder_.getMessage();
            }

            public Builder setOptions(MethodOptions methodOptions) {
                if (this.optionsBuilder_ != null) {
                    this.optionsBuilder_.setMessage(methodOptions);
                } else if (methodOptions == null) {
                    throw new NullPointerException();
                } else {
                    this.options_ = methodOptions;
                    onChanged();
                }
                this.bitField0_ |= 8;
                return this;
            }

            public Builder setOptions(Builder builder) {
                if (this.optionsBuilder_ == null) {
                    this.options_ = builder.build();
                    onChanged();
                } else {
                    this.optionsBuilder_.setMessage(builder.build());
                }
                this.bitField0_ |= 8;
                return this;
            }

            public Builder mergeOptions(MethodOptions methodOptions) {
                if (this.optionsBuilder_ == null) {
                    if ((this.bitField0_ & 8) != 8 || this.options_ == MethodOptions.getDefaultInstance()) {
                        this.options_ = methodOptions;
                    } else {
                        this.options_ = MethodOptions.newBuilder(this.options_).mergeFrom(methodOptions).buildPartial();
                    }
                    onChanged();
                } else {
                    this.optionsBuilder_.mergeFrom(methodOptions);
                }
                this.bitField0_ |= 8;
                return this;
            }

            public Builder clearOptions() {
                if (this.optionsBuilder_ == null) {
                    this.options_ = MethodOptions.getDefaultInstance();
                    onChanged();
                } else {
                    this.optionsBuilder_.clear();
                }
                this.bitField0_ &= -9;
                return this;
            }

            public Builder getOptionsBuilder() {
                this.bitField0_ |= 8;
                onChanged();
                return (Builder) getOptionsFieldBuilder().getBuilder();
            }

            public MethodOptionsOrBuilder getOptionsOrBuilder() {
                if (this.optionsBuilder_ != null) {
                    return (MethodOptionsOrBuilder) this.optionsBuilder_.getMessageOrBuilder();
                }
                return this.options_;
            }

            private SingleFieldBuilder<MethodOptions, Builder, MethodOptionsOrBuilder> getOptionsFieldBuilder() {
                if (this.optionsBuilder_ == null) {
                    this.optionsBuilder_ = new SingleFieldBuilder<>(getOptions(), getParentForChildren(), isClean());
                    this.options_ = null;
                }
                return this.optionsBuilder_;
            }
        }

        private MethodDescriptorProto(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private MethodDescriptorProto(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static MethodDescriptorProto getDefaultInstance() {
            return defaultInstance;
        }

        public MethodDescriptorProto getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private MethodDescriptorProto(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                        case 10:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 1;
                            this.name_ = readBytes;
                            z = z2;
                            break;
                        case 18:
                            ByteString readBytes2 = codedInputStream.readBytes();
                            this.bitField0_ |= 2;
                            this.inputType_ = readBytes2;
                            z = z2;
                            break;
                        case 26:
                            ByteString readBytes3 = codedInputStream.readBytes();
                            this.bitField0_ |= 4;
                            this.outputType_ = readBytes3;
                            z = z2;
                            break;
                        case 34:
                            if ((this.bitField0_ & 8) == 8) {
                                builder = this.options_.toBuilder();
                            } else {
                                builder = null;
                            }
                            this.options_ = (MethodOptions) codedInputStream.readMessage(MethodOptions.PARSER, extensionRegistryLite);
                            if (builder != null) {
                                builder.mergeFrom(this.options_);
                                this.options_ = builder.buildPartial();
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
            return DescriptorProtos.internal_static_google_protobuf_MethodDescriptorProto_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return DescriptorProtos.internal_static_google_protobuf_MethodDescriptorProto_fieldAccessorTable.ensureFieldAccessorsInitialized(MethodDescriptorProto.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<MethodDescriptorProto> getParserForType() {
            return PARSER;
        }

        public boolean hasName() {
            return (this.bitField0_ & 1) == 1;
        }

        public String getName() {
            Object obj = this.name_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.name_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getNameBytes() {
            Object obj = this.name_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.name_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasInputType() {
            return (this.bitField0_ & 2) == 2;
        }

        public String getInputType() {
            Object obj = this.inputType_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.inputType_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getInputTypeBytes() {
            Object obj = this.inputType_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.inputType_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasOutputType() {
            return (this.bitField0_ & 4) == 4;
        }

        public String getOutputType() {
            Object obj = this.outputType_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.outputType_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getOutputTypeBytes() {
            Object obj = this.outputType_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.outputType_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasOptions() {
            return (this.bitField0_ & 8) == 8;
        }

        public MethodOptions getOptions() {
            return this.options_;
        }

        public MethodOptionsOrBuilder getOptionsOrBuilder() {
            return this.options_;
        }

        private void initFields() {
            this.name_ = "";
            this.inputType_ = "";
            this.outputType_ = "";
            this.options_ = MethodOptions.getDefaultInstance();
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasOptions() || getOptions().isInitialized()) {
                this.memoizedIsInitialized = 1;
                return true;
            }
            this.memoizedIsInitialized = 0;
            return false;
        }

        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeBytes(1, getNameBytes());
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeBytes(2, getInputTypeBytes());
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBytes(3, getOutputTypeBytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeMessage(4, this.options_);
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
                i2 = 0 + CodedOutputStream.computeBytesSize(1, getNameBytes());
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeBytesSize(2, getInputTypeBytes());
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeBytesSize(3, getOutputTypeBytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeMessageSize(4, this.options_);
            }
            int serializedSize = i2 + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static MethodDescriptorProto parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (MethodDescriptorProto) PARSER.parseFrom(byteString);
        }

        public static MethodDescriptorProto parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (MethodDescriptorProto) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static MethodDescriptorProto parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (MethodDescriptorProto) PARSER.parseFrom(bArr);
        }

        public static MethodDescriptorProto parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (MethodDescriptorProto) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static MethodDescriptorProto parseFrom(InputStream inputStream) throws IOException {
            return (MethodDescriptorProto) PARSER.parseFrom(inputStream);
        }

        public static MethodDescriptorProto parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (MethodDescriptorProto) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static MethodDescriptorProto parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (MethodDescriptorProto) PARSER.parseDelimitedFrom(inputStream);
        }

        public static MethodDescriptorProto parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (MethodDescriptorProto) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static MethodDescriptorProto parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (MethodDescriptorProto) PARSER.parseFrom(codedInputStream);
        }

        public static MethodDescriptorProto parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (MethodDescriptorProto) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(MethodDescriptorProto methodDescriptorProto) {
            return newBuilder().mergeFrom(methodDescriptorProto);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface MethodDescriptorProtoOrBuilder extends MessageOrBuilder {
        String getInputType();

        ByteString getInputTypeBytes();

        String getName();

        ByteString getNameBytes();

        MethodOptions getOptions();

        MethodOptionsOrBuilder getOptionsOrBuilder();

        String getOutputType();

        ByteString getOutputTypeBytes();

        boolean hasInputType();

        boolean hasName();

        boolean hasOptions();

        boolean hasOutputType();
    }

    public static final class MethodOptions extends ExtendableMessage<MethodOptions> implements MethodOptionsOrBuilder {
        public static final int DEPRECATED_FIELD_NUMBER = 33;
        public static Parser<MethodOptions> PARSER = new AbstractParser<MethodOptions>() {
            public MethodOptions parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new MethodOptions(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int UNINTERPRETED_OPTION_FIELD_NUMBER = 999;
        private static final MethodOptions defaultInstance = new MethodOptions(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public boolean deprecated_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public List<UninterpretedOption> uninterpretedOption_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends ExtendableBuilder<MethodOptions, Builder> implements MethodOptionsOrBuilder {
            private int bitField0_;
            private boolean deprecated_;
            private RepeatedFieldBuilder<UninterpretedOption, Builder, UninterpretedOptionOrBuilder> uninterpretedOptionBuilder_;
            private List<UninterpretedOption> uninterpretedOption_;

            public static final Descriptor getDescriptor() {
                return DescriptorProtos.internal_static_google_protobuf_MethodOptions_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return DescriptorProtos.internal_static_google_protobuf_MethodOptions_fieldAccessorTable.ensureFieldAccessorsInitialized(MethodOptions.class, Builder.class);
            }

            private Builder() {
                this.uninterpretedOption_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.uninterpretedOption_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    getUninterpretedOptionFieldBuilder();
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.deprecated_ = false;
                this.bitField0_ &= -2;
                if (this.uninterpretedOptionBuilder_ == null) {
                    this.uninterpretedOption_ = Collections.emptyList();
                    this.bitField0_ &= -3;
                } else {
                    this.uninterpretedOptionBuilder_.clear();
                }
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return DescriptorProtos.internal_static_google_protobuf_MethodOptions_descriptor;
            }

            public MethodOptions getDefaultInstanceForType() {
                return MethodOptions.getDefaultInstance();
            }

            public MethodOptions build() {
                MethodOptions buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public MethodOptions buildPartial() {
                int i = 1;
                MethodOptions methodOptions = new MethodOptions((ExtendableBuilder) this);
                if ((this.bitField0_ & 1) != 1) {
                    i = 0;
                }
                methodOptions.deprecated_ = this.deprecated_;
                if (this.uninterpretedOptionBuilder_ == null) {
                    if ((this.bitField0_ & 2) == 2) {
                        this.uninterpretedOption_ = Collections.unmodifiableList(this.uninterpretedOption_);
                        this.bitField0_ &= -3;
                    }
                    methodOptions.uninterpretedOption_ = this.uninterpretedOption_;
                } else {
                    methodOptions.uninterpretedOption_ = this.uninterpretedOptionBuilder_.build();
                }
                methodOptions.bitField0_ = i;
                onBuilt();
                return methodOptions;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof MethodOptions) {
                    return mergeFrom((MethodOptions) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(MethodOptions methodOptions) {
                RepeatedFieldBuilder<UninterpretedOption, Builder, UninterpretedOptionOrBuilder> repeatedFieldBuilder = null;
                if (methodOptions != MethodOptions.getDefaultInstance()) {
                    if (methodOptions.hasDeprecated()) {
                        setDeprecated(methodOptions.getDeprecated());
                    }
                    if (this.uninterpretedOptionBuilder_ == null) {
                        if (!methodOptions.uninterpretedOption_.isEmpty()) {
                            if (this.uninterpretedOption_.isEmpty()) {
                                this.uninterpretedOption_ = methodOptions.uninterpretedOption_;
                                this.bitField0_ &= -3;
                            } else {
                                ensureUninterpretedOptionIsMutable();
                                this.uninterpretedOption_.addAll(methodOptions.uninterpretedOption_);
                            }
                            onChanged();
                        }
                    } else if (!methodOptions.uninterpretedOption_.isEmpty()) {
                        if (this.uninterpretedOptionBuilder_.isEmpty()) {
                            this.uninterpretedOptionBuilder_.dispose();
                            this.uninterpretedOptionBuilder_ = null;
                            this.uninterpretedOption_ = methodOptions.uninterpretedOption_;
                            this.bitField0_ &= -3;
                            if (GeneratedMessage.alwaysUseFieldBuilders) {
                                repeatedFieldBuilder = getUninterpretedOptionFieldBuilder();
                            }
                            this.uninterpretedOptionBuilder_ = repeatedFieldBuilder;
                        } else {
                            this.uninterpretedOptionBuilder_.addAllMessages(methodOptions.uninterpretedOption_);
                        }
                    }
                    mergeExtensionFields(methodOptions);
                    mergeUnknownFields(methodOptions.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                for (int i = 0; i < getUninterpretedOptionCount(); i++) {
                    if (!getUninterpretedOption(i).isInitialized()) {
                        return false;
                    }
                }
                if (extensionsAreInitialized()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                MethodOptions methodOptions;
                MethodOptions methodOptions2;
                try {
                    MethodOptions methodOptions3 = (MethodOptions) MethodOptions.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (methodOptions3 != null) {
                        mergeFrom(methodOptions3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    methodOptions2 = (MethodOptions) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    methodOptions = methodOptions2;
                    th = th2;
                }
                if (methodOptions != null) {
                    mergeFrom(methodOptions);
                }
                throw th;
            }

            public boolean hasDeprecated() {
                return (this.bitField0_ & 1) == 1;
            }

            public boolean getDeprecated() {
                return this.deprecated_;
            }

            public Builder setDeprecated(boolean z) {
                this.bitField0_ |= 1;
                this.deprecated_ = z;
                onChanged();
                return this;
            }

            public Builder clearDeprecated() {
                this.bitField0_ &= -2;
                this.deprecated_ = false;
                onChanged();
                return this;
            }

            private void ensureUninterpretedOptionIsMutable() {
                if ((this.bitField0_ & 2) != 2) {
                    this.uninterpretedOption_ = new ArrayList(this.uninterpretedOption_);
                    this.bitField0_ |= 2;
                }
            }

            public List<UninterpretedOption> getUninterpretedOptionList() {
                if (this.uninterpretedOptionBuilder_ == null) {
                    return Collections.unmodifiableList(this.uninterpretedOption_);
                }
                return this.uninterpretedOptionBuilder_.getMessageList();
            }

            public int getUninterpretedOptionCount() {
                if (this.uninterpretedOptionBuilder_ == null) {
                    return this.uninterpretedOption_.size();
                }
                return this.uninterpretedOptionBuilder_.getCount();
            }

            public UninterpretedOption getUninterpretedOption(int i) {
                if (this.uninterpretedOptionBuilder_ == null) {
                    return (UninterpretedOption) this.uninterpretedOption_.get(i);
                }
                return (UninterpretedOption) this.uninterpretedOptionBuilder_.getMessage(i);
            }

            public Builder setUninterpretedOption(int i, UninterpretedOption uninterpretedOption) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.setMessage(i, uninterpretedOption);
                } else if (uninterpretedOption == null) {
                    throw new NullPointerException();
                } else {
                    ensureUninterpretedOptionIsMutable();
                    this.uninterpretedOption_.set(i, uninterpretedOption);
                    onChanged();
                }
                return this;
            }

            public Builder setUninterpretedOption(int i, Builder builder) {
                if (this.uninterpretedOptionBuilder_ == null) {
                    ensureUninterpretedOptionIsMutable();
                    this.uninterpretedOption_.set(i, builder.build());
                    onChanged();
                } else {
                    this.uninterpretedOptionBuilder_.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addUninterpretedOption(UninterpretedOption uninterpretedOption) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.addMessage(uninterpretedOption);
                } else if (uninterpretedOption == null) {
                    throw new NullPointerException();
                } else {
                    ensureUninterpretedOptionIsMutable();
                    this.uninterpretedOption_.add(uninterpretedOption);
                    onChanged();
                }
                return this;
            }

            public Builder addUninterpretedOption(int i, UninterpretedOption uninterpretedOption) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.addMessage(i, uninterpretedOption);
                } else if (uninterpretedOption == null) {
                    throw new NullPointerException();
                } else {
                    ensureUninterpretedOptionIsMutable();
                    this.uninterpretedOption_.add(i, uninterpretedOption);
                    onChanged();
                }
                return this;
            }

            public Builder addUninterpretedOption(Builder builder) {
                if (this.uninterpretedOptionBuilder_ == null) {
                    ensureUninterpretedOptionIsMutable();
                    this.uninterpretedOption_.add(builder.build());
                    onChanged();
                } else {
                    this.uninterpretedOptionBuilder_.addMessage(builder.build());
                }
                return this;
            }

            public Builder addUninterpretedOption(int i, Builder builder) {
                if (this.uninterpretedOptionBuilder_ == null) {
                    ensureUninterpretedOptionIsMutable();
                    this.uninterpretedOption_.add(i, builder.build());
                    onChanged();
                } else {
                    this.uninterpretedOptionBuilder_.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllUninterpretedOption(Iterable<? extends UninterpretedOption> iterable) {
                if (this.uninterpretedOptionBuilder_ == null) {
                    ensureUninterpretedOptionIsMutable();
                    com.google.protobuf.AbstractMessageLite.Builder.addAll(iterable, this.uninterpretedOption_);
                    onChanged();
                } else {
                    this.uninterpretedOptionBuilder_.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearUninterpretedOption() {
                if (this.uninterpretedOptionBuilder_ == null) {
                    this.uninterpretedOption_ = Collections.emptyList();
                    this.bitField0_ &= -3;
                    onChanged();
                } else {
                    this.uninterpretedOptionBuilder_.clear();
                }
                return this;
            }

            public Builder removeUninterpretedOption(int i) {
                if (this.uninterpretedOptionBuilder_ == null) {
                    ensureUninterpretedOptionIsMutable();
                    this.uninterpretedOption_.remove(i);
                    onChanged();
                } else {
                    this.uninterpretedOptionBuilder_.remove(i);
                }
                return this;
            }

            public Builder getUninterpretedOptionBuilder(int i) {
                return (Builder) getUninterpretedOptionFieldBuilder().getBuilder(i);
            }

            public UninterpretedOptionOrBuilder getUninterpretedOptionOrBuilder(int i) {
                if (this.uninterpretedOptionBuilder_ == null) {
                    return (UninterpretedOptionOrBuilder) this.uninterpretedOption_.get(i);
                }
                return (UninterpretedOptionOrBuilder) this.uninterpretedOptionBuilder_.getMessageOrBuilder(i);
            }

            public List<? extends UninterpretedOptionOrBuilder> getUninterpretedOptionOrBuilderList() {
                if (this.uninterpretedOptionBuilder_ != null) {
                    return this.uninterpretedOptionBuilder_.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.uninterpretedOption_);
            }

            public Builder addUninterpretedOptionBuilder() {
                return (Builder) getUninterpretedOptionFieldBuilder().addBuilder(UninterpretedOption.getDefaultInstance());
            }

            public Builder addUninterpretedOptionBuilder(int i) {
                return (Builder) getUninterpretedOptionFieldBuilder().addBuilder(i, UninterpretedOption.getDefaultInstance());
            }

            public List<Builder> getUninterpretedOptionBuilderList() {
                return getUninterpretedOptionFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<UninterpretedOption, Builder, UninterpretedOptionOrBuilder> getUninterpretedOptionFieldBuilder() {
                if (this.uninterpretedOptionBuilder_ == null) {
                    this.uninterpretedOptionBuilder_ = new RepeatedFieldBuilder<>(this.uninterpretedOption_, (this.bitField0_ & 2) == 2, getParentForChildren(), isClean());
                    this.uninterpretedOption_ = null;
                }
                return this.uninterpretedOptionBuilder_;
            }
        }

        private MethodOptions(ExtendableBuilder<MethodOptions, ?> extendableBuilder) {
            super(extendableBuilder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = extendableBuilder.getUnknownFields();
        }

        private MethodOptions(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static MethodOptions getDefaultInstance() {
            return defaultInstance;
        }

        public MethodOptions getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private MethodOptions(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                        case 264:
                            this.bitField0_ |= 1;
                            this.deprecated_ = codedInputStream.readBool();
                            break;
                        case 7994:
                            if (!(z2 & true)) {
                                this.uninterpretedOption_ = new ArrayList();
                                z2 |= true;
                            }
                            this.uninterpretedOption_.add(codedInputStream.readMessage(UninterpretedOption.PARSER, extensionRegistryLite));
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
                        this.uninterpretedOption_ = Collections.unmodifiableList(this.uninterpretedOption_);
                    }
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            if (z2 & true) {
                this.uninterpretedOption_ = Collections.unmodifiableList(this.uninterpretedOption_);
            }
            this.unknownFields = newBuilder.build();
            makeExtensionsImmutable();
        }

        public static final Descriptor getDescriptor() {
            return DescriptorProtos.internal_static_google_protobuf_MethodOptions_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return DescriptorProtos.internal_static_google_protobuf_MethodOptions_fieldAccessorTable.ensureFieldAccessorsInitialized(MethodOptions.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<MethodOptions> getParserForType() {
            return PARSER;
        }

        public boolean hasDeprecated() {
            return (this.bitField0_ & 1) == 1;
        }

        public boolean getDeprecated() {
            return this.deprecated_;
        }

        public List<UninterpretedOption> getUninterpretedOptionList() {
            return this.uninterpretedOption_;
        }

        public List<? extends UninterpretedOptionOrBuilder> getUninterpretedOptionOrBuilderList() {
            return this.uninterpretedOption_;
        }

        public int getUninterpretedOptionCount() {
            return this.uninterpretedOption_.size();
        }

        public UninterpretedOption getUninterpretedOption(int i) {
            return (UninterpretedOption) this.uninterpretedOption_.get(i);
        }

        public UninterpretedOptionOrBuilder getUninterpretedOptionOrBuilder(int i) {
            return (UninterpretedOptionOrBuilder) this.uninterpretedOption_.get(i);
        }

        private void initFields() {
            this.deprecated_ = false;
            this.uninterpretedOption_ = Collections.emptyList();
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            for (int i = 0; i < getUninterpretedOptionCount(); i++) {
                if (!getUninterpretedOption(i).isInitialized()) {
                    this.memoizedIsInitialized = 0;
                    return false;
                }
            }
            if (!extensionsAreInitialized()) {
                this.memoizedIsInitialized = 0;
                return false;
            }
            this.memoizedIsInitialized = 1;
            return true;
        }

        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            ExtensionWriter newExtensionWriter = newExtensionWriter();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeBool(33, this.deprecated_);
            }
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.uninterpretedOption_.size()) {
                    codedOutputStream.writeMessage(999, (MessageLite) this.uninterpretedOption_.get(i2));
                    i = i2 + 1;
                } else {
                    newExtensionWriter.writeUntil(PKIFailureInfo.duplicateCertReq, codedOutputStream);
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
                i = CodedOutputStream.computeBoolSize(33, this.deprecated_) + 0;
            } else {
                i = 0;
            }
            while (true) {
                int i4 = i;
                if (i2 < this.uninterpretedOption_.size()) {
                    i = CodedOutputStream.computeMessageSize(999, (MessageLite) this.uninterpretedOption_.get(i2)) + i4;
                    i2++;
                } else {
                    int extensionsSerializedSize = extensionsSerializedSize() + i4 + getUnknownFields().getSerializedSize();
                    this.memoizedSerializedSize = extensionsSerializedSize;
                    return extensionsSerializedSize;
                }
            }
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static MethodOptions parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (MethodOptions) PARSER.parseFrom(byteString);
        }

        public static MethodOptions parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (MethodOptions) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static MethodOptions parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (MethodOptions) PARSER.parseFrom(bArr);
        }

        public static MethodOptions parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (MethodOptions) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static MethodOptions parseFrom(InputStream inputStream) throws IOException {
            return (MethodOptions) PARSER.parseFrom(inputStream);
        }

        public static MethodOptions parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (MethodOptions) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static MethodOptions parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (MethodOptions) PARSER.parseDelimitedFrom(inputStream);
        }

        public static MethodOptions parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (MethodOptions) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static MethodOptions parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (MethodOptions) PARSER.parseFrom(codedInputStream);
        }

        public static MethodOptions parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (MethodOptions) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(MethodOptions methodOptions) {
            return newBuilder().mergeFrom(methodOptions);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface MethodOptionsOrBuilder extends ExtendableMessageOrBuilder<MethodOptions> {
        boolean getDeprecated();

        UninterpretedOption getUninterpretedOption(int i);

        int getUninterpretedOptionCount();

        List<UninterpretedOption> getUninterpretedOptionList();

        UninterpretedOptionOrBuilder getUninterpretedOptionOrBuilder(int i);

        List<? extends UninterpretedOptionOrBuilder> getUninterpretedOptionOrBuilderList();

        boolean hasDeprecated();
    }

    public static final class OneofDescriptorProto extends GeneratedMessage implements OneofDescriptorProtoOrBuilder {
        public static final int NAME_FIELD_NUMBER = 1;
        public static Parser<OneofDescriptorProto> PARSER = new AbstractParser<OneofDescriptorProto>() {
            public OneofDescriptorProto parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new OneofDescriptorProto(codedInputStream, extensionRegistryLite);
            }
        };
        private static final OneofDescriptorProto defaultInstance = new OneofDescriptorProto(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public Object name_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements OneofDescriptorProtoOrBuilder {
            private int bitField0_;
            private Object name_;

            public static final Descriptor getDescriptor() {
                return DescriptorProtos.internal_static_google_protobuf_OneofDescriptorProto_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return DescriptorProtos.internal_static_google_protobuf_OneofDescriptorProto_fieldAccessorTable.ensureFieldAccessorsInitialized(OneofDescriptorProto.class, Builder.class);
            }

            private Builder() {
                this.name_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.name_ = "";
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.name_ = "";
                this.bitField0_ &= -2;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return DescriptorProtos.internal_static_google_protobuf_OneofDescriptorProto_descriptor;
            }

            public OneofDescriptorProto getDefaultInstanceForType() {
                return OneofDescriptorProto.getDefaultInstance();
            }

            public OneofDescriptorProto build() {
                OneofDescriptorProto buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public OneofDescriptorProto buildPartial() {
                int i = 1;
                OneofDescriptorProto oneofDescriptorProto = new OneofDescriptorProto((com.google.protobuf.GeneratedMessage.Builder) this);
                if ((this.bitField0_ & 1) != 1) {
                    i = 0;
                }
                oneofDescriptorProto.name_ = this.name_;
                oneofDescriptorProto.bitField0_ = i;
                onBuilt();
                return oneofDescriptorProto;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof OneofDescriptorProto) {
                    return mergeFrom((OneofDescriptorProto) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(OneofDescriptorProto oneofDescriptorProto) {
                if (oneofDescriptorProto != OneofDescriptorProto.getDefaultInstance()) {
                    if (oneofDescriptorProto.hasName()) {
                        this.bitField0_ |= 1;
                        this.name_ = oneofDescriptorProto.name_;
                        onChanged();
                    }
                    mergeUnknownFields(oneofDescriptorProto.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                OneofDescriptorProto oneofDescriptorProto;
                OneofDescriptorProto oneofDescriptorProto2;
                try {
                    OneofDescriptorProto oneofDescriptorProto3 = (OneofDescriptorProto) OneofDescriptorProto.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (oneofDescriptorProto3 != null) {
                        mergeFrom(oneofDescriptorProto3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    oneofDescriptorProto2 = (OneofDescriptorProto) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    oneofDescriptorProto = oneofDescriptorProto2;
                    th = th2;
                }
                if (oneofDescriptorProto != null) {
                    mergeFrom(oneofDescriptorProto);
                }
                throw th;
            }

            public boolean hasName() {
                return (this.bitField0_ & 1) == 1;
            }

            public String getName() {
                Object obj = this.name_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.name_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getNameBytes() {
                Object obj = this.name_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.name_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setName(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.name_ = str;
                onChanged();
                return this;
            }

            public Builder clearName() {
                this.bitField0_ &= -2;
                this.name_ = OneofDescriptorProto.getDefaultInstance().getName();
                onChanged();
                return this;
            }

            public Builder setNameBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.name_ = byteString;
                onChanged();
                return this;
            }
        }

        private OneofDescriptorProto(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private OneofDescriptorProto(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static OneofDescriptorProto getDefaultInstance() {
            return defaultInstance;
        }

        public OneofDescriptorProto getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private OneofDescriptorProto(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.name_ = readBytes;
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
            return DescriptorProtos.internal_static_google_protobuf_OneofDescriptorProto_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return DescriptorProtos.internal_static_google_protobuf_OneofDescriptorProto_fieldAccessorTable.ensureFieldAccessorsInitialized(OneofDescriptorProto.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<OneofDescriptorProto> getParserForType() {
            return PARSER;
        }

        public boolean hasName() {
            return (this.bitField0_ & 1) == 1;
        }

        public String getName() {
            Object obj = this.name_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.name_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getNameBytes() {
            Object obj = this.name_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.name_ = copyFromUtf8;
            return copyFromUtf8;
        }

        private void initFields() {
            this.name_ = "";
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
                codedOutputStream.writeBytes(1, getNameBytes());
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
                i2 = 0 + CodedOutputStream.computeBytesSize(1, getNameBytes());
            }
            int serializedSize = i2 + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static OneofDescriptorProto parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (OneofDescriptorProto) PARSER.parseFrom(byteString);
        }

        public static OneofDescriptorProto parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (OneofDescriptorProto) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static OneofDescriptorProto parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (OneofDescriptorProto) PARSER.parseFrom(bArr);
        }

        public static OneofDescriptorProto parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (OneofDescriptorProto) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static OneofDescriptorProto parseFrom(InputStream inputStream) throws IOException {
            return (OneofDescriptorProto) PARSER.parseFrom(inputStream);
        }

        public static OneofDescriptorProto parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (OneofDescriptorProto) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static OneofDescriptorProto parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (OneofDescriptorProto) PARSER.parseDelimitedFrom(inputStream);
        }

        public static OneofDescriptorProto parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (OneofDescriptorProto) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static OneofDescriptorProto parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (OneofDescriptorProto) PARSER.parseFrom(codedInputStream);
        }

        public static OneofDescriptorProto parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (OneofDescriptorProto) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(OneofDescriptorProto oneofDescriptorProto) {
            return newBuilder().mergeFrom(oneofDescriptorProto);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface OneofDescriptorProtoOrBuilder extends MessageOrBuilder {
        String getName();

        ByteString getNameBytes();

        boolean hasName();
    }

    public static final class ServiceDescriptorProto extends GeneratedMessage implements ServiceDescriptorProtoOrBuilder {
        public static final int METHOD_FIELD_NUMBER = 2;
        public static final int NAME_FIELD_NUMBER = 1;
        public static final int OPTIONS_FIELD_NUMBER = 3;
        public static Parser<ServiceDescriptorProto> PARSER = new AbstractParser<ServiceDescriptorProto>() {
            public ServiceDescriptorProto parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new ServiceDescriptorProto(codedInputStream, extensionRegistryLite);
            }
        };
        private static final ServiceDescriptorProto defaultInstance = new ServiceDescriptorProto(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public List<MethodDescriptorProto> method_;
        /* access modifiers changed from: private */
        public Object name_;
        /* access modifiers changed from: private */
        public ServiceOptions options_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements ServiceDescriptorProtoOrBuilder {
            private int bitField0_;
            private RepeatedFieldBuilder<MethodDescriptorProto, Builder, MethodDescriptorProtoOrBuilder> methodBuilder_;
            private List<MethodDescriptorProto> method_;
            private Object name_;
            private SingleFieldBuilder<ServiceOptions, Builder, ServiceOptionsOrBuilder> optionsBuilder_;
            private ServiceOptions options_;

            public static final Descriptor getDescriptor() {
                return DescriptorProtos.internal_static_google_protobuf_ServiceDescriptorProto_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return DescriptorProtos.internal_static_google_protobuf_ServiceDescriptorProto_fieldAccessorTable.ensureFieldAccessorsInitialized(ServiceDescriptorProto.class, Builder.class);
            }

            private Builder() {
                this.name_ = "";
                this.method_ = Collections.emptyList();
                this.options_ = ServiceOptions.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.name_ = "";
                this.method_ = Collections.emptyList();
                this.options_ = ServiceOptions.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    getMethodFieldBuilder();
                    getOptionsFieldBuilder();
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.name_ = "";
                this.bitField0_ &= -2;
                if (this.methodBuilder_ == null) {
                    this.method_ = Collections.emptyList();
                    this.bitField0_ &= -3;
                } else {
                    this.methodBuilder_.clear();
                }
                if (this.optionsBuilder_ == null) {
                    this.options_ = ServiceOptions.getDefaultInstance();
                } else {
                    this.optionsBuilder_.clear();
                }
                this.bitField0_ &= -5;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return DescriptorProtos.internal_static_google_protobuf_ServiceDescriptorProto_descriptor;
            }

            public ServiceDescriptorProto getDefaultInstanceForType() {
                return ServiceDescriptorProto.getDefaultInstance();
            }

            public ServiceDescriptorProto build() {
                ServiceDescriptorProto buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public ServiceDescriptorProto buildPartial() {
                int i;
                int i2 = 1;
                ServiceDescriptorProto serviceDescriptorProto = new ServiceDescriptorProto((com.google.protobuf.GeneratedMessage.Builder) this);
                int i3 = this.bitField0_;
                if ((i3 & 1) != 1) {
                    i2 = 0;
                }
                serviceDescriptorProto.name_ = this.name_;
                if (this.methodBuilder_ == null) {
                    if ((this.bitField0_ & 2) == 2) {
                        this.method_ = Collections.unmodifiableList(this.method_);
                        this.bitField0_ &= -3;
                    }
                    serviceDescriptorProto.method_ = this.method_;
                } else {
                    serviceDescriptorProto.method_ = this.methodBuilder_.build();
                }
                if ((i3 & 4) == 4) {
                    i = i2 | 2;
                } else {
                    i = i2;
                }
                if (this.optionsBuilder_ == null) {
                    serviceDescriptorProto.options_ = this.options_;
                } else {
                    serviceDescriptorProto.options_ = (ServiceOptions) this.optionsBuilder_.build();
                }
                serviceDescriptorProto.bitField0_ = i;
                onBuilt();
                return serviceDescriptorProto;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof ServiceDescriptorProto) {
                    return mergeFrom((ServiceDescriptorProto) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(ServiceDescriptorProto serviceDescriptorProto) {
                RepeatedFieldBuilder<MethodDescriptorProto, Builder, MethodDescriptorProtoOrBuilder> repeatedFieldBuilder = null;
                if (serviceDescriptorProto != ServiceDescriptorProto.getDefaultInstance()) {
                    if (serviceDescriptorProto.hasName()) {
                        this.bitField0_ |= 1;
                        this.name_ = serviceDescriptorProto.name_;
                        onChanged();
                    }
                    if (this.methodBuilder_ == null) {
                        if (!serviceDescriptorProto.method_.isEmpty()) {
                            if (this.method_.isEmpty()) {
                                this.method_ = serviceDescriptorProto.method_;
                                this.bitField0_ &= -3;
                            } else {
                                ensureMethodIsMutable();
                                this.method_.addAll(serviceDescriptorProto.method_);
                            }
                            onChanged();
                        }
                    } else if (!serviceDescriptorProto.method_.isEmpty()) {
                        if (this.methodBuilder_.isEmpty()) {
                            this.methodBuilder_.dispose();
                            this.methodBuilder_ = null;
                            this.method_ = serviceDescriptorProto.method_;
                            this.bitField0_ &= -3;
                            if (GeneratedMessage.alwaysUseFieldBuilders) {
                                repeatedFieldBuilder = getMethodFieldBuilder();
                            }
                            this.methodBuilder_ = repeatedFieldBuilder;
                        } else {
                            this.methodBuilder_.addAllMessages(serviceDescriptorProto.method_);
                        }
                    }
                    if (serviceDescriptorProto.hasOptions()) {
                        mergeOptions(serviceDescriptorProto.getOptions());
                    }
                    mergeUnknownFields(serviceDescriptorProto.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                for (int i = 0; i < getMethodCount(); i++) {
                    if (!getMethod(i).isInitialized()) {
                        return false;
                    }
                }
                if (!hasOptions() || getOptions().isInitialized()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                ServiceDescriptorProto serviceDescriptorProto;
                ServiceDescriptorProto serviceDescriptorProto2;
                try {
                    ServiceDescriptorProto serviceDescriptorProto3 = (ServiceDescriptorProto) ServiceDescriptorProto.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (serviceDescriptorProto3 != null) {
                        mergeFrom(serviceDescriptorProto3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    serviceDescriptorProto2 = (ServiceDescriptorProto) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    serviceDescriptorProto = serviceDescriptorProto2;
                    th = th2;
                }
                if (serviceDescriptorProto != null) {
                    mergeFrom(serviceDescriptorProto);
                }
                throw th;
            }

            public boolean hasName() {
                return (this.bitField0_ & 1) == 1;
            }

            public String getName() {
                Object obj = this.name_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.name_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getNameBytes() {
                Object obj = this.name_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.name_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setName(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.name_ = str;
                onChanged();
                return this;
            }

            public Builder clearName() {
                this.bitField0_ &= -2;
                this.name_ = ServiceDescriptorProto.getDefaultInstance().getName();
                onChanged();
                return this;
            }

            public Builder setNameBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.name_ = byteString;
                onChanged();
                return this;
            }

            private void ensureMethodIsMutable() {
                if ((this.bitField0_ & 2) != 2) {
                    this.method_ = new ArrayList(this.method_);
                    this.bitField0_ |= 2;
                }
            }

            public List<MethodDescriptorProto> getMethodList() {
                if (this.methodBuilder_ == null) {
                    return Collections.unmodifiableList(this.method_);
                }
                return this.methodBuilder_.getMessageList();
            }

            public int getMethodCount() {
                if (this.methodBuilder_ == null) {
                    return this.method_.size();
                }
                return this.methodBuilder_.getCount();
            }

            public MethodDescriptorProto getMethod(int i) {
                if (this.methodBuilder_ == null) {
                    return (MethodDescriptorProto) this.method_.get(i);
                }
                return (MethodDescriptorProto) this.methodBuilder_.getMessage(i);
            }

            public Builder setMethod(int i, MethodDescriptorProto methodDescriptorProto) {
                if (this.methodBuilder_ != null) {
                    this.methodBuilder_.setMessage(i, methodDescriptorProto);
                } else if (methodDescriptorProto == null) {
                    throw new NullPointerException();
                } else {
                    ensureMethodIsMutable();
                    this.method_.set(i, methodDescriptorProto);
                    onChanged();
                }
                return this;
            }

            public Builder setMethod(int i, Builder builder) {
                if (this.methodBuilder_ == null) {
                    ensureMethodIsMutable();
                    this.method_.set(i, builder.build());
                    onChanged();
                } else {
                    this.methodBuilder_.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addMethod(MethodDescriptorProto methodDescriptorProto) {
                if (this.methodBuilder_ != null) {
                    this.methodBuilder_.addMessage(methodDescriptorProto);
                } else if (methodDescriptorProto == null) {
                    throw new NullPointerException();
                } else {
                    ensureMethodIsMutable();
                    this.method_.add(methodDescriptorProto);
                    onChanged();
                }
                return this;
            }

            public Builder addMethod(int i, MethodDescriptorProto methodDescriptorProto) {
                if (this.methodBuilder_ != null) {
                    this.methodBuilder_.addMessage(i, methodDescriptorProto);
                } else if (methodDescriptorProto == null) {
                    throw new NullPointerException();
                } else {
                    ensureMethodIsMutable();
                    this.method_.add(i, methodDescriptorProto);
                    onChanged();
                }
                return this;
            }

            public Builder addMethod(Builder builder) {
                if (this.methodBuilder_ == null) {
                    ensureMethodIsMutable();
                    this.method_.add(builder.build());
                    onChanged();
                } else {
                    this.methodBuilder_.addMessage(builder.build());
                }
                return this;
            }

            public Builder addMethod(int i, Builder builder) {
                if (this.methodBuilder_ == null) {
                    ensureMethodIsMutable();
                    this.method_.add(i, builder.build());
                    onChanged();
                } else {
                    this.methodBuilder_.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllMethod(Iterable<? extends MethodDescriptorProto> iterable) {
                if (this.methodBuilder_ == null) {
                    ensureMethodIsMutable();
                    com.google.protobuf.AbstractMessageLite.Builder.addAll(iterable, this.method_);
                    onChanged();
                } else {
                    this.methodBuilder_.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearMethod() {
                if (this.methodBuilder_ == null) {
                    this.method_ = Collections.emptyList();
                    this.bitField0_ &= -3;
                    onChanged();
                } else {
                    this.methodBuilder_.clear();
                }
                return this;
            }

            public Builder removeMethod(int i) {
                if (this.methodBuilder_ == null) {
                    ensureMethodIsMutable();
                    this.method_.remove(i);
                    onChanged();
                } else {
                    this.methodBuilder_.remove(i);
                }
                return this;
            }

            public Builder getMethodBuilder(int i) {
                return (Builder) getMethodFieldBuilder().getBuilder(i);
            }

            public MethodDescriptorProtoOrBuilder getMethodOrBuilder(int i) {
                if (this.methodBuilder_ == null) {
                    return (MethodDescriptorProtoOrBuilder) this.method_.get(i);
                }
                return (MethodDescriptorProtoOrBuilder) this.methodBuilder_.getMessageOrBuilder(i);
            }

            public List<? extends MethodDescriptorProtoOrBuilder> getMethodOrBuilderList() {
                if (this.methodBuilder_ != null) {
                    return this.methodBuilder_.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.method_);
            }

            public Builder addMethodBuilder() {
                return (Builder) getMethodFieldBuilder().addBuilder(MethodDescriptorProto.getDefaultInstance());
            }

            public Builder addMethodBuilder(int i) {
                return (Builder) getMethodFieldBuilder().addBuilder(i, MethodDescriptorProto.getDefaultInstance());
            }

            public List<Builder> getMethodBuilderList() {
                return getMethodFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<MethodDescriptorProto, Builder, MethodDescriptorProtoOrBuilder> getMethodFieldBuilder() {
                if (this.methodBuilder_ == null) {
                    this.methodBuilder_ = new RepeatedFieldBuilder<>(this.method_, (this.bitField0_ & 2) == 2, getParentForChildren(), isClean());
                    this.method_ = null;
                }
                return this.methodBuilder_;
            }

            public boolean hasOptions() {
                return (this.bitField0_ & 4) == 4;
            }

            public ServiceOptions getOptions() {
                if (this.optionsBuilder_ == null) {
                    return this.options_;
                }
                return (ServiceOptions) this.optionsBuilder_.getMessage();
            }

            public Builder setOptions(ServiceOptions serviceOptions) {
                if (this.optionsBuilder_ != null) {
                    this.optionsBuilder_.setMessage(serviceOptions);
                } else if (serviceOptions == null) {
                    throw new NullPointerException();
                } else {
                    this.options_ = serviceOptions;
                    onChanged();
                }
                this.bitField0_ |= 4;
                return this;
            }

            public Builder setOptions(Builder builder) {
                if (this.optionsBuilder_ == null) {
                    this.options_ = builder.build();
                    onChanged();
                } else {
                    this.optionsBuilder_.setMessage(builder.build());
                }
                this.bitField0_ |= 4;
                return this;
            }

            public Builder mergeOptions(ServiceOptions serviceOptions) {
                if (this.optionsBuilder_ == null) {
                    if ((this.bitField0_ & 4) != 4 || this.options_ == ServiceOptions.getDefaultInstance()) {
                        this.options_ = serviceOptions;
                    } else {
                        this.options_ = ServiceOptions.newBuilder(this.options_).mergeFrom(serviceOptions).buildPartial();
                    }
                    onChanged();
                } else {
                    this.optionsBuilder_.mergeFrom(serviceOptions);
                }
                this.bitField0_ |= 4;
                return this;
            }

            public Builder clearOptions() {
                if (this.optionsBuilder_ == null) {
                    this.options_ = ServiceOptions.getDefaultInstance();
                    onChanged();
                } else {
                    this.optionsBuilder_.clear();
                }
                this.bitField0_ &= -5;
                return this;
            }

            public Builder getOptionsBuilder() {
                this.bitField0_ |= 4;
                onChanged();
                return (Builder) getOptionsFieldBuilder().getBuilder();
            }

            public ServiceOptionsOrBuilder getOptionsOrBuilder() {
                if (this.optionsBuilder_ != null) {
                    return (ServiceOptionsOrBuilder) this.optionsBuilder_.getMessageOrBuilder();
                }
                return this.options_;
            }

            private SingleFieldBuilder<ServiceOptions, Builder, ServiceOptionsOrBuilder> getOptionsFieldBuilder() {
                if (this.optionsBuilder_ == null) {
                    this.optionsBuilder_ = new SingleFieldBuilder<>(getOptions(), getParentForChildren(), isClean());
                    this.options_ = null;
                }
                return this.optionsBuilder_;
            }
        }

        private ServiceDescriptorProto(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private ServiceDescriptorProto(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static ServiceDescriptorProto getDefaultInstance() {
            return defaultInstance;
        }

        public ServiceDescriptorProto getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        /* JADX WARNING: Code restructure failed: missing block: B:8:0x0024, code lost:
            r3 = r2;
            r2 = r0;
         */
        /* JADX WARNING: Removed duplicated region for block: B:35:0x008e  */
        /* JADX WARNING: Unknown top exception splitter block from list: {B:39:0x00a1=Splitter:B:39:0x00a1, B:29:0x0084=Splitter:B:29:0x0084} */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        private ServiceDescriptorProto(com.google.protobuf.CodedInputStream r9, com.google.protobuf.ExtensionRegistryLite r10) throws com.google.protobuf.InvalidProtocolBufferException {
            /*
                r8 = this;
                r1 = 1
                r2 = 0
                r0 = -1
                r6 = 2
                r8.<init>()
                r8.memoizedIsInitialized = r0
                r8.memoizedSerializedSize = r0
                r8.initFields()
                com.google.protobuf.UnknownFieldSet$Builder r5 = com.google.protobuf.UnknownFieldSet.newBuilder()
                r3 = r2
            L_0x0013:
                if (r2 != 0) goto L_0x00af
                int r0 = r9.readTag()     // Catch:{ InvalidProtocolBufferException -> 0x0083, IOException -> 0x00a0 }
                switch(r0) {
                    case 0: goto L_0x0027;
                    case 10: goto L_0x002a;
                    case 18: goto L_0x0039;
                    case 26: goto L_0x0055;
                    default: goto L_0x001c;
                }     // Catch:{ InvalidProtocolBufferException -> 0x0083, IOException -> 0x00a0 }
            L_0x001c:
                boolean r0 = r8.parseUnknownField(r9, r5, r10, r0)     // Catch:{ InvalidProtocolBufferException -> 0x0083, IOException -> 0x00a0 }
                if (r0 != 0) goto L_0x00d6
                r0 = r1
                r2 = r3
            L_0x0024:
                r3 = r2
                r2 = r0
                goto L_0x0013
            L_0x0027:
                r0 = r1
                r2 = r3
                goto L_0x0024
            L_0x002a:
                com.google.protobuf.ByteString r0 = r9.readBytes()     // Catch:{ InvalidProtocolBufferException -> 0x0083, IOException -> 0x00a0 }
                int r4 = r8.bitField0_     // Catch:{ InvalidProtocolBufferException -> 0x0083, IOException -> 0x00a0 }
                r4 = r4 | 1
                r8.bitField0_ = r4     // Catch:{ InvalidProtocolBufferException -> 0x0083, IOException -> 0x00a0 }
                r8.name_ = r0     // Catch:{ InvalidProtocolBufferException -> 0x0083, IOException -> 0x00a0 }
                r0 = r2
                r2 = r3
                goto L_0x0024
            L_0x0039:
                r0 = r3 & 2
                if (r0 == r6) goto L_0x00d3
                java.util.ArrayList r0 = new java.util.ArrayList     // Catch:{ InvalidProtocolBufferException -> 0x0083, IOException -> 0x00a0 }
                r0.<init>()     // Catch:{ InvalidProtocolBufferException -> 0x0083, IOException -> 0x00a0 }
                r8.method_ = r0     // Catch:{ InvalidProtocolBufferException -> 0x0083, IOException -> 0x00a0 }
                r0 = r3 | 2
            L_0x0046:
                java.util.List<com.google.protobuf.DescriptorProtos$MethodDescriptorProto> r3 = r8.method_     // Catch:{ InvalidProtocolBufferException -> 0x00cd, IOException -> 0x00c9, all -> 0x00c5 }
                com.google.protobuf.Parser<com.google.protobuf.DescriptorProtos$MethodDescriptorProto> r4 = com.google.protobuf.DescriptorProtos.MethodDescriptorProto.PARSER     // Catch:{ InvalidProtocolBufferException -> 0x00cd, IOException -> 0x00c9, all -> 0x00c5 }
                com.google.protobuf.MessageLite r4 = r9.readMessage(r4, r10)     // Catch:{ InvalidProtocolBufferException -> 0x00cd, IOException -> 0x00c9, all -> 0x00c5 }
                r3.add(r4)     // Catch:{ InvalidProtocolBufferException -> 0x00cd, IOException -> 0x00c9, all -> 0x00c5 }
                r7 = r2
                r2 = r0
                r0 = r7
                goto L_0x0024
            L_0x0055:
                r0 = 0
                int r4 = r8.bitField0_     // Catch:{ InvalidProtocolBufferException -> 0x0083, IOException -> 0x00a0 }
                r4 = r4 & 2
                if (r4 != r6) goto L_0x00d1
                com.google.protobuf.DescriptorProtos$ServiceOptions r0 = r8.options_     // Catch:{ InvalidProtocolBufferException -> 0x0083, IOException -> 0x00a0 }
                com.google.protobuf.DescriptorProtos$ServiceOptions$Builder r0 = r0.toBuilder()     // Catch:{ InvalidProtocolBufferException -> 0x0083, IOException -> 0x00a0 }
                r4 = r0
            L_0x0063:
                com.google.protobuf.Parser<com.google.protobuf.DescriptorProtos$ServiceOptions> r0 = com.google.protobuf.DescriptorProtos.ServiceOptions.PARSER     // Catch:{ InvalidProtocolBufferException -> 0x0083, IOException -> 0x00a0 }
                com.google.protobuf.MessageLite r0 = r9.readMessage(r0, r10)     // Catch:{ InvalidProtocolBufferException -> 0x0083, IOException -> 0x00a0 }
                com.google.protobuf.DescriptorProtos$ServiceOptions r0 = (com.google.protobuf.DescriptorProtos.ServiceOptions) r0     // Catch:{ InvalidProtocolBufferException -> 0x0083, IOException -> 0x00a0 }
                r8.options_ = r0     // Catch:{ InvalidProtocolBufferException -> 0x0083, IOException -> 0x00a0 }
                if (r4 == 0) goto L_0x007a
                com.google.protobuf.DescriptorProtos$ServiceOptions r0 = r8.options_     // Catch:{ InvalidProtocolBufferException -> 0x0083, IOException -> 0x00a0 }
                r4.mergeFrom(r0)     // Catch:{ InvalidProtocolBufferException -> 0x0083, IOException -> 0x00a0 }
                com.google.protobuf.DescriptorProtos$ServiceOptions r0 = r4.buildPartial()     // Catch:{ InvalidProtocolBufferException -> 0x0083, IOException -> 0x00a0 }
                r8.options_ = r0     // Catch:{ InvalidProtocolBufferException -> 0x0083, IOException -> 0x00a0 }
            L_0x007a:
                int r0 = r8.bitField0_     // Catch:{ InvalidProtocolBufferException -> 0x0083, IOException -> 0x00a0 }
                r0 = r0 | 2
                r8.bitField0_ = r0     // Catch:{ InvalidProtocolBufferException -> 0x0083, IOException -> 0x00a0 }
                r0 = r2
                r2 = r3
                goto L_0x0024
            L_0x0083:
                r0 = move-exception
            L_0x0084:
                com.google.protobuf.InvalidProtocolBufferException r0 = r0.setUnfinishedMessage(r8)     // Catch:{ all -> 0x0089 }
                throw r0     // Catch:{ all -> 0x0089 }
            L_0x0089:
                r0 = move-exception
            L_0x008a:
                r1 = r3 & 2
                if (r1 != r6) goto L_0x0096
                java.util.List<com.google.protobuf.DescriptorProtos$MethodDescriptorProto> r1 = r8.method_
                java.util.List r1 = java.util.Collections.unmodifiableList(r1)
                r8.method_ = r1
            L_0x0096:
                com.google.protobuf.UnknownFieldSet r1 = r5.build()
                r8.unknownFields = r1
                r8.makeExtensionsImmutable()
                throw r0
            L_0x00a0:
                r0 = move-exception
            L_0x00a1:
                com.google.protobuf.InvalidProtocolBufferException r1 = new com.google.protobuf.InvalidProtocolBufferException     // Catch:{ all -> 0x0089 }
                java.lang.String r0 = r0.getMessage()     // Catch:{ all -> 0x0089 }
                r1.<init>(r0)     // Catch:{ all -> 0x0089 }
                com.google.protobuf.InvalidProtocolBufferException r0 = r1.setUnfinishedMessage(r8)     // Catch:{ all -> 0x0089 }
                throw r0     // Catch:{ all -> 0x0089 }
            L_0x00af:
                r0 = r3 & 2
                if (r0 != r6) goto L_0x00bb
                java.util.List<com.google.protobuf.DescriptorProtos$MethodDescriptorProto> r0 = r8.method_
                java.util.List r0 = java.util.Collections.unmodifiableList(r0)
                r8.method_ = r0
            L_0x00bb:
                com.google.protobuf.UnknownFieldSet r0 = r5.build()
                r8.unknownFields = r0
                r8.makeExtensionsImmutable()
                return
            L_0x00c5:
                r1 = move-exception
                r3 = r0
                r0 = r1
                goto L_0x008a
            L_0x00c9:
                r1 = move-exception
                r3 = r0
                r0 = r1
                goto L_0x00a1
            L_0x00cd:
                r1 = move-exception
                r3 = r0
                r0 = r1
                goto L_0x0084
            L_0x00d1:
                r4 = r0
                goto L_0x0063
            L_0x00d3:
                r0 = r3
                goto L_0x0046
            L_0x00d6:
                r0 = r2
                r2 = r3
                goto L_0x0024
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.DescriptorProtos.ServiceDescriptorProto.<init>(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):void");
        }

        public static final Descriptor getDescriptor() {
            return DescriptorProtos.internal_static_google_protobuf_ServiceDescriptorProto_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return DescriptorProtos.internal_static_google_protobuf_ServiceDescriptorProto_fieldAccessorTable.ensureFieldAccessorsInitialized(ServiceDescriptorProto.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<ServiceDescriptorProto> getParserForType() {
            return PARSER;
        }

        public boolean hasName() {
            return (this.bitField0_ & 1) == 1;
        }

        public String getName() {
            Object obj = this.name_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.name_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getNameBytes() {
            Object obj = this.name_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.name_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public List<MethodDescriptorProto> getMethodList() {
            return this.method_;
        }

        public List<? extends MethodDescriptorProtoOrBuilder> getMethodOrBuilderList() {
            return this.method_;
        }

        public int getMethodCount() {
            return this.method_.size();
        }

        public MethodDescriptorProto getMethod(int i) {
            return (MethodDescriptorProto) this.method_.get(i);
        }

        public MethodDescriptorProtoOrBuilder getMethodOrBuilder(int i) {
            return (MethodDescriptorProtoOrBuilder) this.method_.get(i);
        }

        public boolean hasOptions() {
            return (this.bitField0_ & 2) == 2;
        }

        public ServiceOptions getOptions() {
            return this.options_;
        }

        public ServiceOptionsOrBuilder getOptionsOrBuilder() {
            return this.options_;
        }

        private void initFields() {
            this.name_ = "";
            this.method_ = Collections.emptyList();
            this.options_ = ServiceOptions.getDefaultInstance();
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            for (int i = 0; i < getMethodCount(); i++) {
                if (!getMethod(i).isInitialized()) {
                    this.memoizedIsInitialized = 0;
                    return false;
                }
            }
            if (!hasOptions() || getOptions().isInitialized()) {
                this.memoizedIsInitialized = 1;
                return true;
            }
            this.memoizedIsInitialized = 0;
            return false;
        }

        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeBytes(1, getNameBytes());
            }
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= this.method_.size()) {
                    break;
                }
                codedOutputStream.writeMessage(2, (MessageLite) this.method_.get(i2));
                i = i2 + 1;
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeMessage(3, this.options_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        public int getSerializedSize() {
            int i;
            int i2;
            int i3 = 0;
            int i4 = this.memoizedSerializedSize;
            if (i4 != -1) {
                return i4;
            }
            if ((this.bitField0_ & 1) == 1) {
                i = CodedOutputStream.computeBytesSize(1, getNameBytes()) + 0;
            } else {
                i = 0;
            }
            while (true) {
                i2 = i;
                if (i3 >= this.method_.size()) {
                    break;
                }
                i = CodedOutputStream.computeMessageSize(2, (MessageLite) this.method_.get(i3)) + i2;
                i3++;
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeMessageSize(3, this.options_);
            }
            int serializedSize = getUnknownFields().getSerializedSize() + i2;
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static ServiceDescriptorProto parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (ServiceDescriptorProto) PARSER.parseFrom(byteString);
        }

        public static ServiceDescriptorProto parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (ServiceDescriptorProto) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static ServiceDescriptorProto parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (ServiceDescriptorProto) PARSER.parseFrom(bArr);
        }

        public static ServiceDescriptorProto parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (ServiceDescriptorProto) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static ServiceDescriptorProto parseFrom(InputStream inputStream) throws IOException {
            return (ServiceDescriptorProto) PARSER.parseFrom(inputStream);
        }

        public static ServiceDescriptorProto parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ServiceDescriptorProto) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static ServiceDescriptorProto parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (ServiceDescriptorProto) PARSER.parseDelimitedFrom(inputStream);
        }

        public static ServiceDescriptorProto parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ServiceDescriptorProto) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static ServiceDescriptorProto parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (ServiceDescriptorProto) PARSER.parseFrom(codedInputStream);
        }

        public static ServiceDescriptorProto parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ServiceDescriptorProto) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(ServiceDescriptorProto serviceDescriptorProto) {
            return newBuilder().mergeFrom(serviceDescriptorProto);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface ServiceDescriptorProtoOrBuilder extends MessageOrBuilder {
        MethodDescriptorProto getMethod(int i);

        int getMethodCount();

        List<MethodDescriptorProto> getMethodList();

        MethodDescriptorProtoOrBuilder getMethodOrBuilder(int i);

        List<? extends MethodDescriptorProtoOrBuilder> getMethodOrBuilderList();

        String getName();

        ByteString getNameBytes();

        ServiceOptions getOptions();

        ServiceOptionsOrBuilder getOptionsOrBuilder();

        boolean hasName();

        boolean hasOptions();
    }

    public static final class ServiceOptions extends ExtendableMessage<ServiceOptions> implements ServiceOptionsOrBuilder {
        public static final int DEPRECATED_FIELD_NUMBER = 33;
        public static Parser<ServiceOptions> PARSER = new AbstractParser<ServiceOptions>() {
            public ServiceOptions parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new ServiceOptions(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int UNINTERPRETED_OPTION_FIELD_NUMBER = 999;
        private static final ServiceOptions defaultInstance = new ServiceOptions(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public boolean deprecated_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public List<UninterpretedOption> uninterpretedOption_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends ExtendableBuilder<ServiceOptions, Builder> implements ServiceOptionsOrBuilder {
            private int bitField0_;
            private boolean deprecated_;
            private RepeatedFieldBuilder<UninterpretedOption, Builder, UninterpretedOptionOrBuilder> uninterpretedOptionBuilder_;
            private List<UninterpretedOption> uninterpretedOption_;

            public static final Descriptor getDescriptor() {
                return DescriptorProtos.internal_static_google_protobuf_ServiceOptions_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return DescriptorProtos.internal_static_google_protobuf_ServiceOptions_fieldAccessorTable.ensureFieldAccessorsInitialized(ServiceOptions.class, Builder.class);
            }

            private Builder() {
                this.uninterpretedOption_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.uninterpretedOption_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    getUninterpretedOptionFieldBuilder();
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.deprecated_ = false;
                this.bitField0_ &= -2;
                if (this.uninterpretedOptionBuilder_ == null) {
                    this.uninterpretedOption_ = Collections.emptyList();
                    this.bitField0_ &= -3;
                } else {
                    this.uninterpretedOptionBuilder_.clear();
                }
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return DescriptorProtos.internal_static_google_protobuf_ServiceOptions_descriptor;
            }

            public ServiceOptions getDefaultInstanceForType() {
                return ServiceOptions.getDefaultInstance();
            }

            public ServiceOptions build() {
                ServiceOptions buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public ServiceOptions buildPartial() {
                int i = 1;
                ServiceOptions serviceOptions = new ServiceOptions((ExtendableBuilder) this);
                if ((this.bitField0_ & 1) != 1) {
                    i = 0;
                }
                serviceOptions.deprecated_ = this.deprecated_;
                if (this.uninterpretedOptionBuilder_ == null) {
                    if ((this.bitField0_ & 2) == 2) {
                        this.uninterpretedOption_ = Collections.unmodifiableList(this.uninterpretedOption_);
                        this.bitField0_ &= -3;
                    }
                    serviceOptions.uninterpretedOption_ = this.uninterpretedOption_;
                } else {
                    serviceOptions.uninterpretedOption_ = this.uninterpretedOptionBuilder_.build();
                }
                serviceOptions.bitField0_ = i;
                onBuilt();
                return serviceOptions;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof ServiceOptions) {
                    return mergeFrom((ServiceOptions) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(ServiceOptions serviceOptions) {
                RepeatedFieldBuilder<UninterpretedOption, Builder, UninterpretedOptionOrBuilder> repeatedFieldBuilder = null;
                if (serviceOptions != ServiceOptions.getDefaultInstance()) {
                    if (serviceOptions.hasDeprecated()) {
                        setDeprecated(serviceOptions.getDeprecated());
                    }
                    if (this.uninterpretedOptionBuilder_ == null) {
                        if (!serviceOptions.uninterpretedOption_.isEmpty()) {
                            if (this.uninterpretedOption_.isEmpty()) {
                                this.uninterpretedOption_ = serviceOptions.uninterpretedOption_;
                                this.bitField0_ &= -3;
                            } else {
                                ensureUninterpretedOptionIsMutable();
                                this.uninterpretedOption_.addAll(serviceOptions.uninterpretedOption_);
                            }
                            onChanged();
                        }
                    } else if (!serviceOptions.uninterpretedOption_.isEmpty()) {
                        if (this.uninterpretedOptionBuilder_.isEmpty()) {
                            this.uninterpretedOptionBuilder_.dispose();
                            this.uninterpretedOptionBuilder_ = null;
                            this.uninterpretedOption_ = serviceOptions.uninterpretedOption_;
                            this.bitField0_ &= -3;
                            if (GeneratedMessage.alwaysUseFieldBuilders) {
                                repeatedFieldBuilder = getUninterpretedOptionFieldBuilder();
                            }
                            this.uninterpretedOptionBuilder_ = repeatedFieldBuilder;
                        } else {
                            this.uninterpretedOptionBuilder_.addAllMessages(serviceOptions.uninterpretedOption_);
                        }
                    }
                    mergeExtensionFields(serviceOptions);
                    mergeUnknownFields(serviceOptions.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                for (int i = 0; i < getUninterpretedOptionCount(); i++) {
                    if (!getUninterpretedOption(i).isInitialized()) {
                        return false;
                    }
                }
                if (extensionsAreInitialized()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                ServiceOptions serviceOptions;
                ServiceOptions serviceOptions2;
                try {
                    ServiceOptions serviceOptions3 = (ServiceOptions) ServiceOptions.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (serviceOptions3 != null) {
                        mergeFrom(serviceOptions3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    serviceOptions2 = (ServiceOptions) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    serviceOptions = serviceOptions2;
                    th = th2;
                }
                if (serviceOptions != null) {
                    mergeFrom(serviceOptions);
                }
                throw th;
            }

            public boolean hasDeprecated() {
                return (this.bitField0_ & 1) == 1;
            }

            public boolean getDeprecated() {
                return this.deprecated_;
            }

            public Builder setDeprecated(boolean z) {
                this.bitField0_ |= 1;
                this.deprecated_ = z;
                onChanged();
                return this;
            }

            public Builder clearDeprecated() {
                this.bitField0_ &= -2;
                this.deprecated_ = false;
                onChanged();
                return this;
            }

            private void ensureUninterpretedOptionIsMutable() {
                if ((this.bitField0_ & 2) != 2) {
                    this.uninterpretedOption_ = new ArrayList(this.uninterpretedOption_);
                    this.bitField0_ |= 2;
                }
            }

            public List<UninterpretedOption> getUninterpretedOptionList() {
                if (this.uninterpretedOptionBuilder_ == null) {
                    return Collections.unmodifiableList(this.uninterpretedOption_);
                }
                return this.uninterpretedOptionBuilder_.getMessageList();
            }

            public int getUninterpretedOptionCount() {
                if (this.uninterpretedOptionBuilder_ == null) {
                    return this.uninterpretedOption_.size();
                }
                return this.uninterpretedOptionBuilder_.getCount();
            }

            public UninterpretedOption getUninterpretedOption(int i) {
                if (this.uninterpretedOptionBuilder_ == null) {
                    return (UninterpretedOption) this.uninterpretedOption_.get(i);
                }
                return (UninterpretedOption) this.uninterpretedOptionBuilder_.getMessage(i);
            }

            public Builder setUninterpretedOption(int i, UninterpretedOption uninterpretedOption) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.setMessage(i, uninterpretedOption);
                } else if (uninterpretedOption == null) {
                    throw new NullPointerException();
                } else {
                    ensureUninterpretedOptionIsMutable();
                    this.uninterpretedOption_.set(i, uninterpretedOption);
                    onChanged();
                }
                return this;
            }

            public Builder setUninterpretedOption(int i, Builder builder) {
                if (this.uninterpretedOptionBuilder_ == null) {
                    ensureUninterpretedOptionIsMutable();
                    this.uninterpretedOption_.set(i, builder.build());
                    onChanged();
                } else {
                    this.uninterpretedOptionBuilder_.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addUninterpretedOption(UninterpretedOption uninterpretedOption) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.addMessage(uninterpretedOption);
                } else if (uninterpretedOption == null) {
                    throw new NullPointerException();
                } else {
                    ensureUninterpretedOptionIsMutable();
                    this.uninterpretedOption_.add(uninterpretedOption);
                    onChanged();
                }
                return this;
            }

            public Builder addUninterpretedOption(int i, UninterpretedOption uninterpretedOption) {
                if (this.uninterpretedOptionBuilder_ != null) {
                    this.uninterpretedOptionBuilder_.addMessage(i, uninterpretedOption);
                } else if (uninterpretedOption == null) {
                    throw new NullPointerException();
                } else {
                    ensureUninterpretedOptionIsMutable();
                    this.uninterpretedOption_.add(i, uninterpretedOption);
                    onChanged();
                }
                return this;
            }

            public Builder addUninterpretedOption(Builder builder) {
                if (this.uninterpretedOptionBuilder_ == null) {
                    ensureUninterpretedOptionIsMutable();
                    this.uninterpretedOption_.add(builder.build());
                    onChanged();
                } else {
                    this.uninterpretedOptionBuilder_.addMessage(builder.build());
                }
                return this;
            }

            public Builder addUninterpretedOption(int i, Builder builder) {
                if (this.uninterpretedOptionBuilder_ == null) {
                    ensureUninterpretedOptionIsMutable();
                    this.uninterpretedOption_.add(i, builder.build());
                    onChanged();
                } else {
                    this.uninterpretedOptionBuilder_.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllUninterpretedOption(Iterable<? extends UninterpretedOption> iterable) {
                if (this.uninterpretedOptionBuilder_ == null) {
                    ensureUninterpretedOptionIsMutable();
                    com.google.protobuf.AbstractMessageLite.Builder.addAll(iterable, this.uninterpretedOption_);
                    onChanged();
                } else {
                    this.uninterpretedOptionBuilder_.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearUninterpretedOption() {
                if (this.uninterpretedOptionBuilder_ == null) {
                    this.uninterpretedOption_ = Collections.emptyList();
                    this.bitField0_ &= -3;
                    onChanged();
                } else {
                    this.uninterpretedOptionBuilder_.clear();
                }
                return this;
            }

            public Builder removeUninterpretedOption(int i) {
                if (this.uninterpretedOptionBuilder_ == null) {
                    ensureUninterpretedOptionIsMutable();
                    this.uninterpretedOption_.remove(i);
                    onChanged();
                } else {
                    this.uninterpretedOptionBuilder_.remove(i);
                }
                return this;
            }

            public Builder getUninterpretedOptionBuilder(int i) {
                return (Builder) getUninterpretedOptionFieldBuilder().getBuilder(i);
            }

            public UninterpretedOptionOrBuilder getUninterpretedOptionOrBuilder(int i) {
                if (this.uninterpretedOptionBuilder_ == null) {
                    return (UninterpretedOptionOrBuilder) this.uninterpretedOption_.get(i);
                }
                return (UninterpretedOptionOrBuilder) this.uninterpretedOptionBuilder_.getMessageOrBuilder(i);
            }

            public List<? extends UninterpretedOptionOrBuilder> getUninterpretedOptionOrBuilderList() {
                if (this.uninterpretedOptionBuilder_ != null) {
                    return this.uninterpretedOptionBuilder_.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.uninterpretedOption_);
            }

            public Builder addUninterpretedOptionBuilder() {
                return (Builder) getUninterpretedOptionFieldBuilder().addBuilder(UninterpretedOption.getDefaultInstance());
            }

            public Builder addUninterpretedOptionBuilder(int i) {
                return (Builder) getUninterpretedOptionFieldBuilder().addBuilder(i, UninterpretedOption.getDefaultInstance());
            }

            public List<Builder> getUninterpretedOptionBuilderList() {
                return getUninterpretedOptionFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<UninterpretedOption, Builder, UninterpretedOptionOrBuilder> getUninterpretedOptionFieldBuilder() {
                if (this.uninterpretedOptionBuilder_ == null) {
                    this.uninterpretedOptionBuilder_ = new RepeatedFieldBuilder<>(this.uninterpretedOption_, (this.bitField0_ & 2) == 2, getParentForChildren(), isClean());
                    this.uninterpretedOption_ = null;
                }
                return this.uninterpretedOptionBuilder_;
            }
        }

        private ServiceOptions(ExtendableBuilder<ServiceOptions, ?> extendableBuilder) {
            super(extendableBuilder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = extendableBuilder.getUnknownFields();
        }

        private ServiceOptions(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static ServiceOptions getDefaultInstance() {
            return defaultInstance;
        }

        public ServiceOptions getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private ServiceOptions(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                        case 264:
                            this.bitField0_ |= 1;
                            this.deprecated_ = codedInputStream.readBool();
                            break;
                        case 7994:
                            if (!(z2 & true)) {
                                this.uninterpretedOption_ = new ArrayList();
                                z2 |= true;
                            }
                            this.uninterpretedOption_.add(codedInputStream.readMessage(UninterpretedOption.PARSER, extensionRegistryLite));
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
                        this.uninterpretedOption_ = Collections.unmodifiableList(this.uninterpretedOption_);
                    }
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            if (z2 & true) {
                this.uninterpretedOption_ = Collections.unmodifiableList(this.uninterpretedOption_);
            }
            this.unknownFields = newBuilder.build();
            makeExtensionsImmutable();
        }

        public static final Descriptor getDescriptor() {
            return DescriptorProtos.internal_static_google_protobuf_ServiceOptions_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return DescriptorProtos.internal_static_google_protobuf_ServiceOptions_fieldAccessorTable.ensureFieldAccessorsInitialized(ServiceOptions.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<ServiceOptions> getParserForType() {
            return PARSER;
        }

        public boolean hasDeprecated() {
            return (this.bitField0_ & 1) == 1;
        }

        public boolean getDeprecated() {
            return this.deprecated_;
        }

        public List<UninterpretedOption> getUninterpretedOptionList() {
            return this.uninterpretedOption_;
        }

        public List<? extends UninterpretedOptionOrBuilder> getUninterpretedOptionOrBuilderList() {
            return this.uninterpretedOption_;
        }

        public int getUninterpretedOptionCount() {
            return this.uninterpretedOption_.size();
        }

        public UninterpretedOption getUninterpretedOption(int i) {
            return (UninterpretedOption) this.uninterpretedOption_.get(i);
        }

        public UninterpretedOptionOrBuilder getUninterpretedOptionOrBuilder(int i) {
            return (UninterpretedOptionOrBuilder) this.uninterpretedOption_.get(i);
        }

        private void initFields() {
            this.deprecated_ = false;
            this.uninterpretedOption_ = Collections.emptyList();
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            for (int i = 0; i < getUninterpretedOptionCount(); i++) {
                if (!getUninterpretedOption(i).isInitialized()) {
                    this.memoizedIsInitialized = 0;
                    return false;
                }
            }
            if (!extensionsAreInitialized()) {
                this.memoizedIsInitialized = 0;
                return false;
            }
            this.memoizedIsInitialized = 1;
            return true;
        }

        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            ExtensionWriter newExtensionWriter = newExtensionWriter();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeBool(33, this.deprecated_);
            }
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.uninterpretedOption_.size()) {
                    codedOutputStream.writeMessage(999, (MessageLite) this.uninterpretedOption_.get(i2));
                    i = i2 + 1;
                } else {
                    newExtensionWriter.writeUntil(PKIFailureInfo.duplicateCertReq, codedOutputStream);
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
                i = CodedOutputStream.computeBoolSize(33, this.deprecated_) + 0;
            } else {
                i = 0;
            }
            while (true) {
                int i4 = i;
                if (i2 < this.uninterpretedOption_.size()) {
                    i = CodedOutputStream.computeMessageSize(999, (MessageLite) this.uninterpretedOption_.get(i2)) + i4;
                    i2++;
                } else {
                    int extensionsSerializedSize = extensionsSerializedSize() + i4 + getUnknownFields().getSerializedSize();
                    this.memoizedSerializedSize = extensionsSerializedSize;
                    return extensionsSerializedSize;
                }
            }
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static ServiceOptions parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (ServiceOptions) PARSER.parseFrom(byteString);
        }

        public static ServiceOptions parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (ServiceOptions) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static ServiceOptions parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (ServiceOptions) PARSER.parseFrom(bArr);
        }

        public static ServiceOptions parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (ServiceOptions) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static ServiceOptions parseFrom(InputStream inputStream) throws IOException {
            return (ServiceOptions) PARSER.parseFrom(inputStream);
        }

        public static ServiceOptions parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ServiceOptions) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static ServiceOptions parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (ServiceOptions) PARSER.parseDelimitedFrom(inputStream);
        }

        public static ServiceOptions parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ServiceOptions) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static ServiceOptions parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (ServiceOptions) PARSER.parseFrom(codedInputStream);
        }

        public static ServiceOptions parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ServiceOptions) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(ServiceOptions serviceOptions) {
            return newBuilder().mergeFrom(serviceOptions);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface ServiceOptionsOrBuilder extends ExtendableMessageOrBuilder<ServiceOptions> {
        boolean getDeprecated();

        UninterpretedOption getUninterpretedOption(int i);

        int getUninterpretedOptionCount();

        List<UninterpretedOption> getUninterpretedOptionList();

        UninterpretedOptionOrBuilder getUninterpretedOptionOrBuilder(int i);

        List<? extends UninterpretedOptionOrBuilder> getUninterpretedOptionOrBuilderList();

        boolean hasDeprecated();
    }

    public static final class SourceCodeInfo extends GeneratedMessage implements SourceCodeInfoOrBuilder {
        public static final int LOCATION_FIELD_NUMBER = 1;
        public static Parser<SourceCodeInfo> PARSER = new AbstractParser<SourceCodeInfo>() {
            public SourceCodeInfo parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new SourceCodeInfo(codedInputStream, extensionRegistryLite);
            }
        };
        private static final SourceCodeInfo defaultInstance = new SourceCodeInfo(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public List<Location> location_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements SourceCodeInfoOrBuilder {
            private int bitField0_;
            private RepeatedFieldBuilder<Location, Builder, LocationOrBuilder> locationBuilder_;
            private List<Location> location_;

            public static final Descriptor getDescriptor() {
                return DescriptorProtos.internal_static_google_protobuf_SourceCodeInfo_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return DescriptorProtos.internal_static_google_protobuf_SourceCodeInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(SourceCodeInfo.class, Builder.class);
            }

            private Builder() {
                this.location_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.location_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    getLocationFieldBuilder();
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                if (this.locationBuilder_ == null) {
                    this.location_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                } else {
                    this.locationBuilder_.clear();
                }
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return DescriptorProtos.internal_static_google_protobuf_SourceCodeInfo_descriptor;
            }

            public SourceCodeInfo getDefaultInstanceForType() {
                return SourceCodeInfo.getDefaultInstance();
            }

            public SourceCodeInfo build() {
                SourceCodeInfo buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public SourceCodeInfo buildPartial() {
                SourceCodeInfo sourceCodeInfo = new SourceCodeInfo((com.google.protobuf.GeneratedMessage.Builder) this);
                int i = this.bitField0_;
                if (this.locationBuilder_ == null) {
                    if ((this.bitField0_ & 1) == 1) {
                        this.location_ = Collections.unmodifiableList(this.location_);
                        this.bitField0_ &= -2;
                    }
                    sourceCodeInfo.location_ = this.location_;
                } else {
                    sourceCodeInfo.location_ = this.locationBuilder_.build();
                }
                onBuilt();
                return sourceCodeInfo;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof SourceCodeInfo) {
                    return mergeFrom((SourceCodeInfo) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(SourceCodeInfo sourceCodeInfo) {
                RepeatedFieldBuilder<Location, Builder, LocationOrBuilder> repeatedFieldBuilder = null;
                if (sourceCodeInfo != SourceCodeInfo.getDefaultInstance()) {
                    if (this.locationBuilder_ == null) {
                        if (!sourceCodeInfo.location_.isEmpty()) {
                            if (this.location_.isEmpty()) {
                                this.location_ = sourceCodeInfo.location_;
                                this.bitField0_ &= -2;
                            } else {
                                ensureLocationIsMutable();
                                this.location_.addAll(sourceCodeInfo.location_);
                            }
                            onChanged();
                        }
                    } else if (!sourceCodeInfo.location_.isEmpty()) {
                        if (this.locationBuilder_.isEmpty()) {
                            this.locationBuilder_.dispose();
                            this.locationBuilder_ = null;
                            this.location_ = sourceCodeInfo.location_;
                            this.bitField0_ &= -2;
                            if (GeneratedMessage.alwaysUseFieldBuilders) {
                                repeatedFieldBuilder = getLocationFieldBuilder();
                            }
                            this.locationBuilder_ = repeatedFieldBuilder;
                        } else {
                            this.locationBuilder_.addAllMessages(sourceCodeInfo.location_);
                        }
                    }
                    mergeUnknownFields(sourceCodeInfo.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                SourceCodeInfo sourceCodeInfo;
                SourceCodeInfo sourceCodeInfo2;
                try {
                    SourceCodeInfo sourceCodeInfo3 = (SourceCodeInfo) SourceCodeInfo.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (sourceCodeInfo3 != null) {
                        mergeFrom(sourceCodeInfo3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    sourceCodeInfo2 = (SourceCodeInfo) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    sourceCodeInfo = sourceCodeInfo2;
                    th = th2;
                }
                if (sourceCodeInfo != null) {
                    mergeFrom(sourceCodeInfo);
                }
                throw th;
            }

            private void ensureLocationIsMutable() {
                if ((this.bitField0_ & 1) != 1) {
                    this.location_ = new ArrayList(this.location_);
                    this.bitField0_ |= 1;
                }
            }

            public List<Location> getLocationList() {
                if (this.locationBuilder_ == null) {
                    return Collections.unmodifiableList(this.location_);
                }
                return this.locationBuilder_.getMessageList();
            }

            public int getLocationCount() {
                if (this.locationBuilder_ == null) {
                    return this.location_.size();
                }
                return this.locationBuilder_.getCount();
            }

            public Location getLocation(int i) {
                if (this.locationBuilder_ == null) {
                    return (Location) this.location_.get(i);
                }
                return (Location) this.locationBuilder_.getMessage(i);
            }

            public Builder setLocation(int i, Location location) {
                if (this.locationBuilder_ != null) {
                    this.locationBuilder_.setMessage(i, location);
                } else if (location == null) {
                    throw new NullPointerException();
                } else {
                    ensureLocationIsMutable();
                    this.location_.set(i, location);
                    onChanged();
                }
                return this;
            }

            public Builder setLocation(int i, Builder builder) {
                if (this.locationBuilder_ == null) {
                    ensureLocationIsMutable();
                    this.location_.set(i, builder.build());
                    onChanged();
                } else {
                    this.locationBuilder_.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addLocation(Location location) {
                if (this.locationBuilder_ != null) {
                    this.locationBuilder_.addMessage(location);
                } else if (location == null) {
                    throw new NullPointerException();
                } else {
                    ensureLocationIsMutable();
                    this.location_.add(location);
                    onChanged();
                }
                return this;
            }

            public Builder addLocation(int i, Location location) {
                if (this.locationBuilder_ != null) {
                    this.locationBuilder_.addMessage(i, location);
                } else if (location == null) {
                    throw new NullPointerException();
                } else {
                    ensureLocationIsMutable();
                    this.location_.add(i, location);
                    onChanged();
                }
                return this;
            }

            public Builder addLocation(Builder builder) {
                if (this.locationBuilder_ == null) {
                    ensureLocationIsMutable();
                    this.location_.add(builder.build());
                    onChanged();
                } else {
                    this.locationBuilder_.addMessage(builder.build());
                }
                return this;
            }

            public Builder addLocation(int i, Builder builder) {
                if (this.locationBuilder_ == null) {
                    ensureLocationIsMutable();
                    this.location_.add(i, builder.build());
                    onChanged();
                } else {
                    this.locationBuilder_.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllLocation(Iterable<? extends Location> iterable) {
                if (this.locationBuilder_ == null) {
                    ensureLocationIsMutable();
                    com.google.protobuf.AbstractMessageLite.Builder.addAll(iterable, this.location_);
                    onChanged();
                } else {
                    this.locationBuilder_.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearLocation() {
                if (this.locationBuilder_ == null) {
                    this.location_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                    onChanged();
                } else {
                    this.locationBuilder_.clear();
                }
                return this;
            }

            public Builder removeLocation(int i) {
                if (this.locationBuilder_ == null) {
                    ensureLocationIsMutable();
                    this.location_.remove(i);
                    onChanged();
                } else {
                    this.locationBuilder_.remove(i);
                }
                return this;
            }

            public Builder getLocationBuilder(int i) {
                return (Builder) getLocationFieldBuilder().getBuilder(i);
            }

            public LocationOrBuilder getLocationOrBuilder(int i) {
                if (this.locationBuilder_ == null) {
                    return (LocationOrBuilder) this.location_.get(i);
                }
                return (LocationOrBuilder) this.locationBuilder_.getMessageOrBuilder(i);
            }

            public List<? extends LocationOrBuilder> getLocationOrBuilderList() {
                if (this.locationBuilder_ != null) {
                    return this.locationBuilder_.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.location_);
            }

            public Builder addLocationBuilder() {
                return (Builder) getLocationFieldBuilder().addBuilder(Location.getDefaultInstance());
            }

            public Builder addLocationBuilder(int i) {
                return (Builder) getLocationFieldBuilder().addBuilder(i, Location.getDefaultInstance());
            }

            public List<Builder> getLocationBuilderList() {
                return getLocationFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<Location, Builder, LocationOrBuilder> getLocationFieldBuilder() {
                boolean z = true;
                if (this.locationBuilder_ == null) {
                    List<Location> list = this.location_;
                    if ((this.bitField0_ & 1) != 1) {
                        z = false;
                    }
                    this.locationBuilder_ = new RepeatedFieldBuilder<>(list, z, getParentForChildren(), isClean());
                    this.location_ = null;
                }
                return this.locationBuilder_;
            }
        }

        public static final class Location extends GeneratedMessage implements LocationOrBuilder {
            public static final int LEADING_COMMENTS_FIELD_NUMBER = 3;
            public static Parser<Location> PARSER = new AbstractParser<Location>() {
                public Location parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return new Location(codedInputStream, extensionRegistryLite);
                }
            };
            public static final int PATH_FIELD_NUMBER = 1;
            public static final int SPAN_FIELD_NUMBER = 2;
            public static final int TRAILING_COMMENTS_FIELD_NUMBER = 4;
            private static final Location defaultInstance = new Location(true);
            private static final long serialVersionUID = 0;
            /* access modifiers changed from: private */
            public int bitField0_;
            /* access modifiers changed from: private */
            public Object leadingComments_;
            private byte memoizedIsInitialized;
            private int memoizedSerializedSize;
            private int pathMemoizedSerializedSize;
            /* access modifiers changed from: private */
            public List<Integer> path_;
            private int spanMemoizedSerializedSize;
            /* access modifiers changed from: private */
            public List<Integer> span_;
            /* access modifiers changed from: private */
            public Object trailingComments_;
            private final UnknownFieldSet unknownFields;

            public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements LocationOrBuilder {
                private int bitField0_;
                private Object leadingComments_;
                private List<Integer> path_;
                private List<Integer> span_;
                private Object trailingComments_;

                public static final Descriptor getDescriptor() {
                    return DescriptorProtos.internal_static_google_protobuf_SourceCodeInfo_Location_descriptor;
                }

                /* access modifiers changed from: protected */
                public FieldAccessorTable internalGetFieldAccessorTable() {
                    return DescriptorProtos.internal_static_google_protobuf_SourceCodeInfo_Location_fieldAccessorTable.ensureFieldAccessorsInitialized(Location.class, Builder.class);
                }

                private Builder() {
                    this.path_ = Collections.emptyList();
                    this.span_ = Collections.emptyList();
                    this.leadingComments_ = "";
                    this.trailingComments_ = "";
                    maybeForceBuilderInitialization();
                }

                private Builder(BuilderParent builderParent) {
                    super(builderParent);
                    this.path_ = Collections.emptyList();
                    this.span_ = Collections.emptyList();
                    this.leadingComments_ = "";
                    this.trailingComments_ = "";
                    maybeForceBuilderInitialization();
                }

                private void maybeForceBuilderInitialization() {
                    if (GeneratedMessage.alwaysUseFieldBuilders) {
                    }
                }

                /* access modifiers changed from: private */
                public static Builder create() {
                    return new Builder();
                }

                public Builder clear() {
                    super.clear();
                    this.path_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                    this.span_ = Collections.emptyList();
                    this.bitField0_ &= -3;
                    this.leadingComments_ = "";
                    this.bitField0_ &= -5;
                    this.trailingComments_ = "";
                    this.bitField0_ &= -9;
                    return this;
                }

                public Builder clone() {
                    return create().mergeFrom(buildPartial());
                }

                public Descriptor getDescriptorForType() {
                    return DescriptorProtos.internal_static_google_protobuf_SourceCodeInfo_Location_descriptor;
                }

                public Location getDefaultInstanceForType() {
                    return Location.getDefaultInstance();
                }

                public Location build() {
                    Location buildPartial = buildPartial();
                    if (buildPartial.isInitialized()) {
                        return buildPartial;
                    }
                    throw newUninitializedMessageException(buildPartial);
                }

                public Location buildPartial() {
                    int i = 1;
                    Location location = new Location((com.google.protobuf.GeneratedMessage.Builder) this);
                    int i2 = this.bitField0_;
                    if ((this.bitField0_ & 1) == 1) {
                        this.path_ = Collections.unmodifiableList(this.path_);
                        this.bitField0_ &= -2;
                    }
                    location.path_ = this.path_;
                    if ((this.bitField0_ & 2) == 2) {
                        this.span_ = Collections.unmodifiableList(this.span_);
                        this.bitField0_ &= -3;
                    }
                    location.span_ = this.span_;
                    if ((i2 & 4) != 4) {
                        i = 0;
                    }
                    location.leadingComments_ = this.leadingComments_;
                    if ((i2 & 8) == 8) {
                        i |= 2;
                    }
                    location.trailingComments_ = this.trailingComments_;
                    location.bitField0_ = i;
                    onBuilt();
                    return location;
                }

                public Builder mergeFrom(Message message) {
                    if (message instanceof Location) {
                        return mergeFrom((Location) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public Builder mergeFrom(Location location) {
                    if (location != Location.getDefaultInstance()) {
                        if (!location.path_.isEmpty()) {
                            if (this.path_.isEmpty()) {
                                this.path_ = location.path_;
                                this.bitField0_ &= -2;
                            } else {
                                ensurePathIsMutable();
                                this.path_.addAll(location.path_);
                            }
                            onChanged();
                        }
                        if (!location.span_.isEmpty()) {
                            if (this.span_.isEmpty()) {
                                this.span_ = location.span_;
                                this.bitField0_ &= -3;
                            } else {
                                ensureSpanIsMutable();
                                this.span_.addAll(location.span_);
                            }
                            onChanged();
                        }
                        if (location.hasLeadingComments()) {
                            this.bitField0_ |= 4;
                            this.leadingComments_ = location.leadingComments_;
                            onChanged();
                        }
                        if (location.hasTrailingComments()) {
                            this.bitField0_ |= 8;
                            this.trailingComments_ = location.trailingComments_;
                            onChanged();
                        }
                        mergeUnknownFields(location.getUnknownFields());
                    }
                    return this;
                }

                public final boolean isInitialized() {
                    return true;
                }

                public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                    Location location;
                    Location location2;
                    try {
                        Location location3 = (Location) Location.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                        if (location3 != null) {
                            mergeFrom(location3);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e) {
                        InvalidProtocolBufferException invalidProtocolBufferException = e;
                        location2 = (Location) invalidProtocolBufferException.getUnfinishedMessage();
                        throw invalidProtocolBufferException;
                    } catch (Throwable th) {
                        Throwable th2 = th;
                        location = location2;
                        th = th2;
                    }
                    if (location != null) {
                        mergeFrom(location);
                    }
                    throw th;
                }

                private void ensurePathIsMutable() {
                    if ((this.bitField0_ & 1) != 1) {
                        this.path_ = new ArrayList(this.path_);
                        this.bitField0_ |= 1;
                    }
                }

                public List<Integer> getPathList() {
                    return Collections.unmodifiableList(this.path_);
                }

                public int getPathCount() {
                    return this.path_.size();
                }

                public int getPath(int i) {
                    return ((Integer) this.path_.get(i)).intValue();
                }

                public Builder setPath(int i, int i2) {
                    ensurePathIsMutable();
                    this.path_.set(i, Integer.valueOf(i2));
                    onChanged();
                    return this;
                }

                public Builder addPath(int i) {
                    ensurePathIsMutable();
                    this.path_.add(Integer.valueOf(i));
                    onChanged();
                    return this;
                }

                public Builder addAllPath(Iterable<? extends Integer> iterable) {
                    ensurePathIsMutable();
                    com.google.protobuf.AbstractMessageLite.Builder.addAll(iterable, this.path_);
                    onChanged();
                    return this;
                }

                public Builder clearPath() {
                    this.path_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                    onChanged();
                    return this;
                }

                private void ensureSpanIsMutable() {
                    if ((this.bitField0_ & 2) != 2) {
                        this.span_ = new ArrayList(this.span_);
                        this.bitField0_ |= 2;
                    }
                }

                public List<Integer> getSpanList() {
                    return Collections.unmodifiableList(this.span_);
                }

                public int getSpanCount() {
                    return this.span_.size();
                }

                public int getSpan(int i) {
                    return ((Integer) this.span_.get(i)).intValue();
                }

                public Builder setSpan(int i, int i2) {
                    ensureSpanIsMutable();
                    this.span_.set(i, Integer.valueOf(i2));
                    onChanged();
                    return this;
                }

                public Builder addSpan(int i) {
                    ensureSpanIsMutable();
                    this.span_.add(Integer.valueOf(i));
                    onChanged();
                    return this;
                }

                public Builder addAllSpan(Iterable<? extends Integer> iterable) {
                    ensureSpanIsMutable();
                    com.google.protobuf.AbstractMessageLite.Builder.addAll(iterable, this.span_);
                    onChanged();
                    return this;
                }

                public Builder clearSpan() {
                    this.span_ = Collections.emptyList();
                    this.bitField0_ &= -3;
                    onChanged();
                    return this;
                }

                public boolean hasLeadingComments() {
                    return (this.bitField0_ & 4) == 4;
                }

                public String getLeadingComments() {
                    Object obj = this.leadingComments_;
                    if (obj instanceof String) {
                        return (String) obj;
                    }
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.leadingComments_ = stringUtf8;
                    }
                    return stringUtf8;
                }

                public ByteString getLeadingCommentsBytes() {
                    Object obj = this.leadingComments_;
                    if (!(obj instanceof String)) {
                        return (ByteString) obj;
                    }
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.leadingComments_ = copyFromUtf8;
                    return copyFromUtf8;
                }

                public Builder setLeadingComments(String str) {
                    if (str == null) {
                        throw new NullPointerException();
                    }
                    this.bitField0_ |= 4;
                    this.leadingComments_ = str;
                    onChanged();
                    return this;
                }

                public Builder clearLeadingComments() {
                    this.bitField0_ &= -5;
                    this.leadingComments_ = Location.getDefaultInstance().getLeadingComments();
                    onChanged();
                    return this;
                }

                public Builder setLeadingCommentsBytes(ByteString byteString) {
                    if (byteString == null) {
                        throw new NullPointerException();
                    }
                    this.bitField0_ |= 4;
                    this.leadingComments_ = byteString;
                    onChanged();
                    return this;
                }

                public boolean hasTrailingComments() {
                    return (this.bitField0_ & 8) == 8;
                }

                public String getTrailingComments() {
                    Object obj = this.trailingComments_;
                    if (obj instanceof String) {
                        return (String) obj;
                    }
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.trailingComments_ = stringUtf8;
                    }
                    return stringUtf8;
                }

                public ByteString getTrailingCommentsBytes() {
                    Object obj = this.trailingComments_;
                    if (!(obj instanceof String)) {
                        return (ByteString) obj;
                    }
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.trailingComments_ = copyFromUtf8;
                    return copyFromUtf8;
                }

                public Builder setTrailingComments(String str) {
                    if (str == null) {
                        throw new NullPointerException();
                    }
                    this.bitField0_ |= 8;
                    this.trailingComments_ = str;
                    onChanged();
                    return this;
                }

                public Builder clearTrailingComments() {
                    this.bitField0_ &= -9;
                    this.trailingComments_ = Location.getDefaultInstance().getTrailingComments();
                    onChanged();
                    return this;
                }

                public Builder setTrailingCommentsBytes(ByteString byteString) {
                    if (byteString == null) {
                        throw new NullPointerException();
                    }
                    this.bitField0_ |= 8;
                    this.trailingComments_ = byteString;
                    onChanged();
                    return this;
                }
            }

            private Location(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
                super(builder);
                this.pathMemoizedSerializedSize = -1;
                this.spanMemoizedSerializedSize = -1;
                this.memoizedIsInitialized = -1;
                this.memoizedSerializedSize = -1;
                this.unknownFields = builder.getUnknownFields();
            }

            private Location(boolean z) {
                this.pathMemoizedSerializedSize = -1;
                this.spanMemoizedSerializedSize = -1;
                this.memoizedIsInitialized = -1;
                this.memoizedSerializedSize = -1;
                this.unknownFields = UnknownFieldSet.getDefaultInstance();
            }

            public static Location getDefaultInstance() {
                return defaultInstance;
            }

            public Location getDefaultInstanceForType() {
                return defaultInstance;
            }

            public final UnknownFieldSet getUnknownFields() {
                return this.unknownFields;
            }

            private Location(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                boolean z = false;
                this.pathMemoizedSerializedSize = -1;
                this.spanMemoizedSerializedSize = -1;
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
                                if (!z2 || !true) {
                                    this.path_ = new ArrayList();
                                    z2 |= true;
                                }
                                this.path_.add(Integer.valueOf(codedInputStream.readInt32()));
                                break;
                            case 10:
                                int pushLimit = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                if ((!z2 || !true) && codedInputStream.getBytesUntilLimit() > 0) {
                                    this.path_ = new ArrayList();
                                    z2 |= true;
                                }
                                while (codedInputStream.getBytesUntilLimit() > 0) {
                                    this.path_.add(Integer.valueOf(codedInputStream.readInt32()));
                                }
                                codedInputStream.popLimit(pushLimit);
                                break;
                            case 16:
                                if (!(z2 & true)) {
                                    this.span_ = new ArrayList();
                                    z2 |= true;
                                }
                                this.span_.add(Integer.valueOf(codedInputStream.readInt32()));
                                break;
                            case 18:
                                int pushLimit2 = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                if (!(z2 & true) && codedInputStream.getBytesUntilLimit() > 0) {
                                    this.span_ = new ArrayList();
                                    z2 |= true;
                                }
                                while (codedInputStream.getBytesUntilLimit() > 0) {
                                    this.span_.add(Integer.valueOf(codedInputStream.readInt32()));
                                }
                                codedInputStream.popLimit(pushLimit2);
                                break;
                            case 26:
                                ByteString readBytes = codedInputStream.readBytes();
                                this.bitField0_ |= 1;
                                this.leadingComments_ = readBytes;
                                break;
                            case 34:
                                ByteString readBytes2 = codedInputStream.readBytes();
                                this.bitField0_ |= 2;
                                this.trailingComments_ = readBytes2;
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
                            this.path_ = Collections.unmodifiableList(this.path_);
                        }
                        if (z2 & true) {
                            this.span_ = Collections.unmodifiableList(this.span_);
                        }
                        this.unknownFields = newBuilder.build();
                        makeExtensionsImmutable();
                        throw th;
                    }
                }
                if (z2 && true) {
                    this.path_ = Collections.unmodifiableList(this.path_);
                }
                if (z2 & true) {
                    this.span_ = Collections.unmodifiableList(this.span_);
                }
                this.unknownFields = newBuilder.build();
                makeExtensionsImmutable();
            }

            public static final Descriptor getDescriptor() {
                return DescriptorProtos.internal_static_google_protobuf_SourceCodeInfo_Location_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return DescriptorProtos.internal_static_google_protobuf_SourceCodeInfo_Location_fieldAccessorTable.ensureFieldAccessorsInitialized(Location.class, Builder.class);
            }

            static {
                defaultInstance.initFields();
            }

            public Parser<Location> getParserForType() {
                return PARSER;
            }

            public List<Integer> getPathList() {
                return this.path_;
            }

            public int getPathCount() {
                return this.path_.size();
            }

            public int getPath(int i) {
                return ((Integer) this.path_.get(i)).intValue();
            }

            public List<Integer> getSpanList() {
                return this.span_;
            }

            public int getSpanCount() {
                return this.span_.size();
            }

            public int getSpan(int i) {
                return ((Integer) this.span_.get(i)).intValue();
            }

            public boolean hasLeadingComments() {
                return (this.bitField0_ & 1) == 1;
            }

            public String getLeadingComments() {
                Object obj = this.leadingComments_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.leadingComments_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getLeadingCommentsBytes() {
                Object obj = this.leadingComments_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.leadingComments_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public boolean hasTrailingComments() {
                return (this.bitField0_ & 2) == 2;
            }

            public String getTrailingComments() {
                Object obj = this.trailingComments_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.trailingComments_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getTrailingCommentsBytes() {
                Object obj = this.trailingComments_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.trailingComments_ = copyFromUtf8;
                return copyFromUtf8;
            }

            private void initFields() {
                this.path_ = Collections.emptyList();
                this.span_ = Collections.emptyList();
                this.leadingComments_ = "";
                this.trailingComments_ = "";
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
                if (getPathList().size() > 0) {
                    codedOutputStream.writeRawVarint32(10);
                    codedOutputStream.writeRawVarint32(this.pathMemoizedSerializedSize);
                }
                for (int i = 0; i < this.path_.size(); i++) {
                    codedOutputStream.writeInt32NoTag(((Integer) this.path_.get(i)).intValue());
                }
                if (getSpanList().size() > 0) {
                    codedOutputStream.writeRawVarint32(18);
                    codedOutputStream.writeRawVarint32(this.spanMemoizedSerializedSize);
                }
                for (int i2 = 0; i2 < this.span_.size(); i2++) {
                    codedOutputStream.writeInt32NoTag(((Integer) this.span_.get(i2)).intValue());
                }
                if ((this.bitField0_ & 1) == 1) {
                    codedOutputStream.writeBytes(3, getLeadingCommentsBytes());
                }
                if ((this.bitField0_ & 2) == 2) {
                    codedOutputStream.writeBytes(4, getTrailingCommentsBytes());
                }
                getUnknownFields().writeTo(codedOutputStream);
            }

            public int getSerializedSize() {
                int i;
                int i2 = 0;
                int i3 = this.memoizedSerializedSize;
                if (i3 != -1) {
                    return i3;
                }
                int i4 = 0;
                for (int i5 = 0; i5 < this.path_.size(); i5++) {
                    i4 += CodedOutputStream.computeInt32SizeNoTag(((Integer) this.path_.get(i5)).intValue());
                }
                int i6 = 0 + i4;
                if (!getPathList().isEmpty()) {
                    i = i6 + 1 + CodedOutputStream.computeInt32SizeNoTag(i4);
                } else {
                    i = i6;
                }
                this.pathMemoizedSerializedSize = i4;
                int i7 = 0;
                while (i2 < this.span_.size()) {
                    i2++;
                    i7 = CodedOutputStream.computeInt32SizeNoTag(((Integer) this.span_.get(i2)).intValue()) + i7;
                }
                int i8 = i + i7;
                if (!getSpanList().isEmpty()) {
                    i8 = i8 + 1 + CodedOutputStream.computeInt32SizeNoTag(i7);
                }
                this.spanMemoizedSerializedSize = i7;
                if ((this.bitField0_ & 1) == 1) {
                    i8 += CodedOutputStream.computeBytesSize(3, getLeadingCommentsBytes());
                }
                if ((this.bitField0_ & 2) == 2) {
                    i8 += CodedOutputStream.computeBytesSize(4, getTrailingCommentsBytes());
                }
                int serializedSize = i8 + getUnknownFields().getSerializedSize();
                this.memoizedSerializedSize = serializedSize;
                return serializedSize;
            }

            /* access modifiers changed from: protected */
            public Object writeReplace() throws ObjectStreamException {
                return super.writeReplace();
            }

            public static Location parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return (Location) PARSER.parseFrom(byteString);
            }

            public static Location parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return (Location) PARSER.parseFrom(byteString, extensionRegistryLite);
            }

            public static Location parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return (Location) PARSER.parseFrom(bArr);
            }

            public static Location parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return (Location) PARSER.parseFrom(bArr, extensionRegistryLite);
            }

            public static Location parseFrom(InputStream inputStream) throws IOException {
                return (Location) PARSER.parseFrom(inputStream);
            }

            public static Location parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Location) PARSER.parseFrom(inputStream, extensionRegistryLite);
            }

            public static Location parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (Location) PARSER.parseDelimitedFrom(inputStream);
            }

            public static Location parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Location) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
            }

            public static Location parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (Location) PARSER.parseFrom(codedInputStream);
            }

            public static Location parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Location) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
            }

            public static Builder newBuilder() {
                return Builder.create();
            }

            public Builder newBuilderForType() {
                return newBuilder();
            }

            public static Builder newBuilder(Location location) {
                return newBuilder().mergeFrom(location);
            }

            public Builder toBuilder() {
                return newBuilder(this);
            }

            /* access modifiers changed from: protected */
            public Builder newBuilderForType(BuilderParent builderParent) {
                return new Builder(builderParent);
            }
        }

        public interface LocationOrBuilder extends MessageOrBuilder {
            String getLeadingComments();

            ByteString getLeadingCommentsBytes();

            int getPath(int i);

            int getPathCount();

            List<Integer> getPathList();

            int getSpan(int i);

            int getSpanCount();

            List<Integer> getSpanList();

            String getTrailingComments();

            ByteString getTrailingCommentsBytes();

            boolean hasLeadingComments();

            boolean hasTrailingComments();
        }

        private SourceCodeInfo(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private SourceCodeInfo(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static SourceCodeInfo getDefaultInstance() {
            return defaultInstance;
        }

        public SourceCodeInfo getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private SourceCodeInfo(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                this.location_ = new ArrayList();
                                z2 |= true;
                            }
                            this.location_.add(codedInputStream.readMessage(Location.PARSER, extensionRegistryLite));
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
                        this.location_ = Collections.unmodifiableList(this.location_);
                    }
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            if (z2 && true) {
                this.location_ = Collections.unmodifiableList(this.location_);
            }
            this.unknownFields = newBuilder.build();
            makeExtensionsImmutable();
        }

        public static final Descriptor getDescriptor() {
            return DescriptorProtos.internal_static_google_protobuf_SourceCodeInfo_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return DescriptorProtos.internal_static_google_protobuf_SourceCodeInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(SourceCodeInfo.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<SourceCodeInfo> getParserForType() {
            return PARSER;
        }

        public List<Location> getLocationList() {
            return this.location_;
        }

        public List<? extends LocationOrBuilder> getLocationOrBuilderList() {
            return this.location_;
        }

        public int getLocationCount() {
            return this.location_.size();
        }

        public Location getLocation(int i) {
            return (Location) this.location_.get(i);
        }

        public LocationOrBuilder getLocationOrBuilder(int i) {
            return (LocationOrBuilder) this.location_.get(i);
        }

        private void initFields() {
            this.location_ = Collections.emptyList();
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
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.location_.size()) {
                    codedOutputStream.writeMessage(1, (MessageLite) this.location_.get(i2));
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
            for (int i3 = 0; i3 < this.location_.size(); i3++) {
                i2 += CodedOutputStream.computeMessageSize(1, (MessageLite) this.location_.get(i3));
            }
            int serializedSize = getUnknownFields().getSerializedSize() + i2;
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static SourceCodeInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (SourceCodeInfo) PARSER.parseFrom(byteString);
        }

        public static SourceCodeInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SourceCodeInfo) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static SourceCodeInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (SourceCodeInfo) PARSER.parseFrom(bArr);
        }

        public static SourceCodeInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SourceCodeInfo) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static SourceCodeInfo parseFrom(InputStream inputStream) throws IOException {
            return (SourceCodeInfo) PARSER.parseFrom(inputStream);
        }

        public static SourceCodeInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SourceCodeInfo) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static SourceCodeInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (SourceCodeInfo) PARSER.parseDelimitedFrom(inputStream);
        }

        public static SourceCodeInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SourceCodeInfo) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static SourceCodeInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (SourceCodeInfo) PARSER.parseFrom(codedInputStream);
        }

        public static SourceCodeInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SourceCodeInfo) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(SourceCodeInfo sourceCodeInfo) {
            return newBuilder().mergeFrom(sourceCodeInfo);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface SourceCodeInfoOrBuilder extends MessageOrBuilder {
        Location getLocation(int i);

        int getLocationCount();

        List<Location> getLocationList();

        LocationOrBuilder getLocationOrBuilder(int i);

        List<? extends LocationOrBuilder> getLocationOrBuilderList();
    }

    public static final class UninterpretedOption extends GeneratedMessage implements UninterpretedOptionOrBuilder {
        public static final int AGGREGATE_VALUE_FIELD_NUMBER = 8;
        public static final int DOUBLE_VALUE_FIELD_NUMBER = 6;
        public static final int IDENTIFIER_VALUE_FIELD_NUMBER = 3;
        public static final int NAME_FIELD_NUMBER = 2;
        public static final int NEGATIVE_INT_VALUE_FIELD_NUMBER = 5;
        public static Parser<UninterpretedOption> PARSER = new AbstractParser<UninterpretedOption>() {
            public UninterpretedOption parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new UninterpretedOption(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int POSITIVE_INT_VALUE_FIELD_NUMBER = 4;
        public static final int STRING_VALUE_FIELD_NUMBER = 7;
        private static final UninterpretedOption defaultInstance = new UninterpretedOption(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public Object aggregateValue_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public double doubleValue_;
        /* access modifiers changed from: private */
        public Object identifierValue_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public List<NamePart> name_;
        /* access modifiers changed from: private */
        public long negativeIntValue_;
        /* access modifiers changed from: private */
        public long positiveIntValue_;
        /* access modifiers changed from: private */
        public ByteString stringValue_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements UninterpretedOptionOrBuilder {
            private Object aggregateValue_;
            private int bitField0_;
            private double doubleValue_;
            private Object identifierValue_;
            private RepeatedFieldBuilder<NamePart, Builder, NamePartOrBuilder> nameBuilder_;
            private List<NamePart> name_;
            private long negativeIntValue_;
            private long positiveIntValue_;
            private ByteString stringValue_;

            public static final Descriptor getDescriptor() {
                return DescriptorProtos.internal_static_google_protobuf_UninterpretedOption_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return DescriptorProtos.internal_static_google_protobuf_UninterpretedOption_fieldAccessorTable.ensureFieldAccessorsInitialized(UninterpretedOption.class, Builder.class);
            }

            private Builder() {
                this.name_ = Collections.emptyList();
                this.identifierValue_ = "";
                this.stringValue_ = ByteString.EMPTY;
                this.aggregateValue_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.name_ = Collections.emptyList();
                this.identifierValue_ = "";
                this.stringValue_ = ByteString.EMPTY;
                this.aggregateValue_ = "";
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    getNameFieldBuilder();
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                if (this.nameBuilder_ == null) {
                    this.name_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                } else {
                    this.nameBuilder_.clear();
                }
                this.identifierValue_ = "";
                this.bitField0_ &= -3;
                this.positiveIntValue_ = 0;
                this.bitField0_ &= -5;
                this.negativeIntValue_ = 0;
                this.bitField0_ &= -9;
                this.doubleValue_ = 0.0d;
                this.bitField0_ &= -17;
                this.stringValue_ = ByteString.EMPTY;
                this.bitField0_ &= -33;
                this.aggregateValue_ = "";
                this.bitField0_ &= -65;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return DescriptorProtos.internal_static_google_protobuf_UninterpretedOption_descriptor;
            }

            public UninterpretedOption getDefaultInstanceForType() {
                return UninterpretedOption.getDefaultInstance();
            }

            public UninterpretedOption build() {
                UninterpretedOption buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public UninterpretedOption buildPartial() {
                int i = 1;
                UninterpretedOption uninterpretedOption = new UninterpretedOption((com.google.protobuf.GeneratedMessage.Builder) this);
                int i2 = this.bitField0_;
                if (this.nameBuilder_ == null) {
                    if ((this.bitField0_ & 1) == 1) {
                        this.name_ = Collections.unmodifiableList(this.name_);
                        this.bitField0_ &= -2;
                    }
                    uninterpretedOption.name_ = this.name_;
                } else {
                    uninterpretedOption.name_ = this.nameBuilder_.build();
                }
                if ((i2 & 2) != 2) {
                    i = 0;
                }
                uninterpretedOption.identifierValue_ = this.identifierValue_;
                if ((i2 & 4) == 4) {
                    i |= 2;
                }
                uninterpretedOption.positiveIntValue_ = this.positiveIntValue_;
                if ((i2 & 8) == 8) {
                    i |= 4;
                }
                uninterpretedOption.negativeIntValue_ = this.negativeIntValue_;
                if ((i2 & 16) == 16) {
                    i |= 8;
                }
                uninterpretedOption.doubleValue_ = this.doubleValue_;
                if ((i2 & 32) == 32) {
                    i |= 16;
                }
                uninterpretedOption.stringValue_ = this.stringValue_;
                if ((i2 & 64) == 64) {
                    i |= 32;
                }
                uninterpretedOption.aggregateValue_ = this.aggregateValue_;
                uninterpretedOption.bitField0_ = i;
                onBuilt();
                return uninterpretedOption;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof UninterpretedOption) {
                    return mergeFrom((UninterpretedOption) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(UninterpretedOption uninterpretedOption) {
                RepeatedFieldBuilder<NamePart, Builder, NamePartOrBuilder> repeatedFieldBuilder = null;
                if (uninterpretedOption != UninterpretedOption.getDefaultInstance()) {
                    if (this.nameBuilder_ == null) {
                        if (!uninterpretedOption.name_.isEmpty()) {
                            if (this.name_.isEmpty()) {
                                this.name_ = uninterpretedOption.name_;
                                this.bitField0_ &= -2;
                            } else {
                                ensureNameIsMutable();
                                this.name_.addAll(uninterpretedOption.name_);
                            }
                            onChanged();
                        }
                    } else if (!uninterpretedOption.name_.isEmpty()) {
                        if (this.nameBuilder_.isEmpty()) {
                            this.nameBuilder_.dispose();
                            this.nameBuilder_ = null;
                            this.name_ = uninterpretedOption.name_;
                            this.bitField0_ &= -2;
                            if (GeneratedMessage.alwaysUseFieldBuilders) {
                                repeatedFieldBuilder = getNameFieldBuilder();
                            }
                            this.nameBuilder_ = repeatedFieldBuilder;
                        } else {
                            this.nameBuilder_.addAllMessages(uninterpretedOption.name_);
                        }
                    }
                    if (uninterpretedOption.hasIdentifierValue()) {
                        this.bitField0_ |= 2;
                        this.identifierValue_ = uninterpretedOption.identifierValue_;
                        onChanged();
                    }
                    if (uninterpretedOption.hasPositiveIntValue()) {
                        setPositiveIntValue(uninterpretedOption.getPositiveIntValue());
                    }
                    if (uninterpretedOption.hasNegativeIntValue()) {
                        setNegativeIntValue(uninterpretedOption.getNegativeIntValue());
                    }
                    if (uninterpretedOption.hasDoubleValue()) {
                        setDoubleValue(uninterpretedOption.getDoubleValue());
                    }
                    if (uninterpretedOption.hasStringValue()) {
                        setStringValue(uninterpretedOption.getStringValue());
                    }
                    if (uninterpretedOption.hasAggregateValue()) {
                        this.bitField0_ |= 64;
                        this.aggregateValue_ = uninterpretedOption.aggregateValue_;
                        onChanged();
                    }
                    mergeUnknownFields(uninterpretedOption.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                for (int i = 0; i < getNameCount(); i++) {
                    if (!getName(i).isInitialized()) {
                        return false;
                    }
                }
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                UninterpretedOption uninterpretedOption;
                UninterpretedOption uninterpretedOption2;
                try {
                    UninterpretedOption uninterpretedOption3 = (UninterpretedOption) UninterpretedOption.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (uninterpretedOption3 != null) {
                        mergeFrom(uninterpretedOption3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    uninterpretedOption2 = (UninterpretedOption) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    uninterpretedOption = uninterpretedOption2;
                    th = th2;
                }
                if (uninterpretedOption != null) {
                    mergeFrom(uninterpretedOption);
                }
                throw th;
            }

            private void ensureNameIsMutable() {
                if ((this.bitField0_ & 1) != 1) {
                    this.name_ = new ArrayList(this.name_);
                    this.bitField0_ |= 1;
                }
            }

            public List<NamePart> getNameList() {
                if (this.nameBuilder_ == null) {
                    return Collections.unmodifiableList(this.name_);
                }
                return this.nameBuilder_.getMessageList();
            }

            public int getNameCount() {
                if (this.nameBuilder_ == null) {
                    return this.name_.size();
                }
                return this.nameBuilder_.getCount();
            }

            public NamePart getName(int i) {
                if (this.nameBuilder_ == null) {
                    return (NamePart) this.name_.get(i);
                }
                return (NamePart) this.nameBuilder_.getMessage(i);
            }

            public Builder setName(int i, NamePart namePart) {
                if (this.nameBuilder_ != null) {
                    this.nameBuilder_.setMessage(i, namePart);
                } else if (namePart == null) {
                    throw new NullPointerException();
                } else {
                    ensureNameIsMutable();
                    this.name_.set(i, namePart);
                    onChanged();
                }
                return this;
            }

            public Builder setName(int i, Builder builder) {
                if (this.nameBuilder_ == null) {
                    ensureNameIsMutable();
                    this.name_.set(i, builder.build());
                    onChanged();
                } else {
                    this.nameBuilder_.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addName(NamePart namePart) {
                if (this.nameBuilder_ != null) {
                    this.nameBuilder_.addMessage(namePart);
                } else if (namePart == null) {
                    throw new NullPointerException();
                } else {
                    ensureNameIsMutable();
                    this.name_.add(namePart);
                    onChanged();
                }
                return this;
            }

            public Builder addName(int i, NamePart namePart) {
                if (this.nameBuilder_ != null) {
                    this.nameBuilder_.addMessage(i, namePart);
                } else if (namePart == null) {
                    throw new NullPointerException();
                } else {
                    ensureNameIsMutable();
                    this.name_.add(i, namePart);
                    onChanged();
                }
                return this;
            }

            public Builder addName(Builder builder) {
                if (this.nameBuilder_ == null) {
                    ensureNameIsMutable();
                    this.name_.add(builder.build());
                    onChanged();
                } else {
                    this.nameBuilder_.addMessage(builder.build());
                }
                return this;
            }

            public Builder addName(int i, Builder builder) {
                if (this.nameBuilder_ == null) {
                    ensureNameIsMutable();
                    this.name_.add(i, builder.build());
                    onChanged();
                } else {
                    this.nameBuilder_.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllName(Iterable<? extends NamePart> iterable) {
                if (this.nameBuilder_ == null) {
                    ensureNameIsMutable();
                    com.google.protobuf.AbstractMessageLite.Builder.addAll(iterable, this.name_);
                    onChanged();
                } else {
                    this.nameBuilder_.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearName() {
                if (this.nameBuilder_ == null) {
                    this.name_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                    onChanged();
                } else {
                    this.nameBuilder_.clear();
                }
                return this;
            }

            public Builder removeName(int i) {
                if (this.nameBuilder_ == null) {
                    ensureNameIsMutable();
                    this.name_.remove(i);
                    onChanged();
                } else {
                    this.nameBuilder_.remove(i);
                }
                return this;
            }

            public Builder getNameBuilder(int i) {
                return (Builder) getNameFieldBuilder().getBuilder(i);
            }

            public NamePartOrBuilder getNameOrBuilder(int i) {
                if (this.nameBuilder_ == null) {
                    return (NamePartOrBuilder) this.name_.get(i);
                }
                return (NamePartOrBuilder) this.nameBuilder_.getMessageOrBuilder(i);
            }

            public List<? extends NamePartOrBuilder> getNameOrBuilderList() {
                if (this.nameBuilder_ != null) {
                    return this.nameBuilder_.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.name_);
            }

            public Builder addNameBuilder() {
                return (Builder) getNameFieldBuilder().addBuilder(NamePart.getDefaultInstance());
            }

            public Builder addNameBuilder(int i) {
                return (Builder) getNameFieldBuilder().addBuilder(i, NamePart.getDefaultInstance());
            }

            public List<Builder> getNameBuilderList() {
                return getNameFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<NamePart, Builder, NamePartOrBuilder> getNameFieldBuilder() {
                boolean z = true;
                if (this.nameBuilder_ == null) {
                    List<NamePart> list = this.name_;
                    if ((this.bitField0_ & 1) != 1) {
                        z = false;
                    }
                    this.nameBuilder_ = new RepeatedFieldBuilder<>(list, z, getParentForChildren(), isClean());
                    this.name_ = null;
                }
                return this.nameBuilder_;
            }

            public boolean hasIdentifierValue() {
                return (this.bitField0_ & 2) == 2;
            }

            public String getIdentifierValue() {
                Object obj = this.identifierValue_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.identifierValue_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getIdentifierValueBytes() {
                Object obj = this.identifierValue_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.identifierValue_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setIdentifierValue(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.identifierValue_ = str;
                onChanged();
                return this;
            }

            public Builder clearIdentifierValue() {
                this.bitField0_ &= -3;
                this.identifierValue_ = UninterpretedOption.getDefaultInstance().getIdentifierValue();
                onChanged();
                return this;
            }

            public Builder setIdentifierValueBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.identifierValue_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasPositiveIntValue() {
                return (this.bitField0_ & 4) == 4;
            }

            public long getPositiveIntValue() {
                return this.positiveIntValue_;
            }

            public Builder setPositiveIntValue(long j) {
                this.bitField0_ |= 4;
                this.positiveIntValue_ = j;
                onChanged();
                return this;
            }

            public Builder clearPositiveIntValue() {
                this.bitField0_ &= -5;
                this.positiveIntValue_ = 0;
                onChanged();
                return this;
            }

            public boolean hasNegativeIntValue() {
                return (this.bitField0_ & 8) == 8;
            }

            public long getNegativeIntValue() {
                return this.negativeIntValue_;
            }

            public Builder setNegativeIntValue(long j) {
                this.bitField0_ |= 8;
                this.negativeIntValue_ = j;
                onChanged();
                return this;
            }

            public Builder clearNegativeIntValue() {
                this.bitField0_ &= -9;
                this.negativeIntValue_ = 0;
                onChanged();
                return this;
            }

            public boolean hasDoubleValue() {
                return (this.bitField0_ & 16) == 16;
            }

            public double getDoubleValue() {
                return this.doubleValue_;
            }

            public Builder setDoubleValue(double d) {
                this.bitField0_ |= 16;
                this.doubleValue_ = d;
                onChanged();
                return this;
            }

            public Builder clearDoubleValue() {
                this.bitField0_ &= -17;
                this.doubleValue_ = 0.0d;
                onChanged();
                return this;
            }

            public boolean hasStringValue() {
                return (this.bitField0_ & 32) == 32;
            }

            public ByteString getStringValue() {
                return this.stringValue_;
            }

            public Builder setStringValue(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 32;
                this.stringValue_ = byteString;
                onChanged();
                return this;
            }

            public Builder clearStringValue() {
                this.bitField0_ &= -33;
                this.stringValue_ = UninterpretedOption.getDefaultInstance().getStringValue();
                onChanged();
                return this;
            }

            public boolean hasAggregateValue() {
                return (this.bitField0_ & 64) == 64;
            }

            public String getAggregateValue() {
                Object obj = this.aggregateValue_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.aggregateValue_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getAggregateValueBytes() {
                Object obj = this.aggregateValue_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.aggregateValue_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setAggregateValue(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 64;
                this.aggregateValue_ = str;
                onChanged();
                return this;
            }

            public Builder clearAggregateValue() {
                this.bitField0_ &= -65;
                this.aggregateValue_ = UninterpretedOption.getDefaultInstance().getAggregateValue();
                onChanged();
                return this;
            }

            public Builder setAggregateValueBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 64;
                this.aggregateValue_ = byteString;
                onChanged();
                return this;
            }
        }

        public static final class NamePart extends GeneratedMessage implements NamePartOrBuilder {
            public static final int IS_EXTENSION_FIELD_NUMBER = 2;
            public static final int NAME_PART_FIELD_NUMBER = 1;
            public static Parser<NamePart> PARSER = new AbstractParser<NamePart>() {
                public NamePart parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return new NamePart(codedInputStream, extensionRegistryLite);
                }
            };
            private static final NamePart defaultInstance = new NamePart(true);
            private static final long serialVersionUID = 0;
            /* access modifiers changed from: private */
            public int bitField0_;
            /* access modifiers changed from: private */
            public boolean isExtension_;
            private byte memoizedIsInitialized;
            private int memoizedSerializedSize;
            /* access modifiers changed from: private */
            public Object namePart_;
            private final UnknownFieldSet unknownFields;

            public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements NamePartOrBuilder {
                private int bitField0_;
                private boolean isExtension_;
                private Object namePart_;

                public static final Descriptor getDescriptor() {
                    return DescriptorProtos.internal_static_google_protobuf_UninterpretedOption_NamePart_descriptor;
                }

                /* access modifiers changed from: protected */
                public FieldAccessorTable internalGetFieldAccessorTable() {
                    return DescriptorProtos.internal_static_google_protobuf_UninterpretedOption_NamePart_fieldAccessorTable.ensureFieldAccessorsInitialized(NamePart.class, Builder.class);
                }

                private Builder() {
                    this.namePart_ = "";
                    maybeForceBuilderInitialization();
                }

                private Builder(BuilderParent builderParent) {
                    super(builderParent);
                    this.namePart_ = "";
                    maybeForceBuilderInitialization();
                }

                private void maybeForceBuilderInitialization() {
                    if (GeneratedMessage.alwaysUseFieldBuilders) {
                    }
                }

                /* access modifiers changed from: private */
                public static Builder create() {
                    return new Builder();
                }

                public Builder clear() {
                    super.clear();
                    this.namePart_ = "";
                    this.bitField0_ &= -2;
                    this.isExtension_ = false;
                    this.bitField0_ &= -3;
                    return this;
                }

                public Builder clone() {
                    return create().mergeFrom(buildPartial());
                }

                public Descriptor getDescriptorForType() {
                    return DescriptorProtos.internal_static_google_protobuf_UninterpretedOption_NamePart_descriptor;
                }

                public NamePart getDefaultInstanceForType() {
                    return NamePart.getDefaultInstance();
                }

                public NamePart build() {
                    NamePart buildPartial = buildPartial();
                    if (buildPartial.isInitialized()) {
                        return buildPartial;
                    }
                    throw newUninitializedMessageException(buildPartial);
                }

                public NamePart buildPartial() {
                    int i = 1;
                    NamePart namePart = new NamePart((com.google.protobuf.GeneratedMessage.Builder) this);
                    int i2 = this.bitField0_;
                    if ((i2 & 1) != 1) {
                        i = 0;
                    }
                    namePart.namePart_ = this.namePart_;
                    if ((i2 & 2) == 2) {
                        i |= 2;
                    }
                    namePart.isExtension_ = this.isExtension_;
                    namePart.bitField0_ = i;
                    onBuilt();
                    return namePart;
                }

                public Builder mergeFrom(Message message) {
                    if (message instanceof NamePart) {
                        return mergeFrom((NamePart) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public Builder mergeFrom(NamePart namePart) {
                    if (namePart != NamePart.getDefaultInstance()) {
                        if (namePart.hasNamePart()) {
                            this.bitField0_ |= 1;
                            this.namePart_ = namePart.namePart_;
                            onChanged();
                        }
                        if (namePart.hasIsExtension()) {
                            setIsExtension(namePart.getIsExtension());
                        }
                        mergeUnknownFields(namePart.getUnknownFields());
                    }
                    return this;
                }

                public final boolean isInitialized() {
                    if (hasNamePart() && hasIsExtension()) {
                        return true;
                    }
                    return false;
                }

                public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                    NamePart namePart;
                    NamePart namePart2;
                    try {
                        NamePart namePart3 = (NamePart) NamePart.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                        if (namePart3 != null) {
                            mergeFrom(namePart3);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e) {
                        InvalidProtocolBufferException invalidProtocolBufferException = e;
                        namePart2 = (NamePart) invalidProtocolBufferException.getUnfinishedMessage();
                        throw invalidProtocolBufferException;
                    } catch (Throwable th) {
                        Throwable th2 = th;
                        namePart = namePart2;
                        th = th2;
                    }
                    if (namePart != null) {
                        mergeFrom(namePart);
                    }
                    throw th;
                }

                public boolean hasNamePart() {
                    return (this.bitField0_ & 1) == 1;
                }

                public String getNamePart() {
                    Object obj = this.namePart_;
                    if (obj instanceof String) {
                        return (String) obj;
                    }
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.namePart_ = stringUtf8;
                    }
                    return stringUtf8;
                }

                public ByteString getNamePartBytes() {
                    Object obj = this.namePart_;
                    if (!(obj instanceof String)) {
                        return (ByteString) obj;
                    }
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.namePart_ = copyFromUtf8;
                    return copyFromUtf8;
                }

                public Builder setNamePart(String str) {
                    if (str == null) {
                        throw new NullPointerException();
                    }
                    this.bitField0_ |= 1;
                    this.namePart_ = str;
                    onChanged();
                    return this;
                }

                public Builder clearNamePart() {
                    this.bitField0_ &= -2;
                    this.namePart_ = NamePart.getDefaultInstance().getNamePart();
                    onChanged();
                    return this;
                }

                public Builder setNamePartBytes(ByteString byteString) {
                    if (byteString == null) {
                        throw new NullPointerException();
                    }
                    this.bitField0_ |= 1;
                    this.namePart_ = byteString;
                    onChanged();
                    return this;
                }

                public boolean hasIsExtension() {
                    return (this.bitField0_ & 2) == 2;
                }

                public boolean getIsExtension() {
                    return this.isExtension_;
                }

                public Builder setIsExtension(boolean z) {
                    this.bitField0_ |= 2;
                    this.isExtension_ = z;
                    onChanged();
                    return this;
                }

                public Builder clearIsExtension() {
                    this.bitField0_ &= -3;
                    this.isExtension_ = false;
                    onChanged();
                    return this;
                }
            }

            private NamePart(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
                super(builder);
                this.memoizedIsInitialized = -1;
                this.memoizedSerializedSize = -1;
                this.unknownFields = builder.getUnknownFields();
            }

            private NamePart(boolean z) {
                this.memoizedIsInitialized = -1;
                this.memoizedSerializedSize = -1;
                this.unknownFields = UnknownFieldSet.getDefaultInstance();
            }

            public static NamePart getDefaultInstance() {
                return defaultInstance;
            }

            public NamePart getDefaultInstanceForType() {
                return defaultInstance;
            }

            public final UnknownFieldSet getUnknownFields() {
                return this.unknownFields;
            }

            private NamePart(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                this.namePart_ = readBytes;
                                break;
                            case 16:
                                this.bitField0_ |= 2;
                                this.isExtension_ = codedInputStream.readBool();
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
                return DescriptorProtos.internal_static_google_protobuf_UninterpretedOption_NamePart_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return DescriptorProtos.internal_static_google_protobuf_UninterpretedOption_NamePart_fieldAccessorTable.ensureFieldAccessorsInitialized(NamePart.class, Builder.class);
            }

            static {
                defaultInstance.initFields();
            }

            public Parser<NamePart> getParserForType() {
                return PARSER;
            }

            public boolean hasNamePart() {
                return (this.bitField0_ & 1) == 1;
            }

            public String getNamePart() {
                Object obj = this.namePart_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.namePart_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getNamePartBytes() {
                Object obj = this.namePart_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.namePart_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public boolean hasIsExtension() {
                return (this.bitField0_ & 2) == 2;
            }

            public boolean getIsExtension() {
                return this.isExtension_;
            }

            private void initFields() {
                this.namePart_ = "";
                this.isExtension_ = false;
            }

            public final boolean isInitialized() {
                byte b = this.memoizedIsInitialized;
                if (b == 1) {
                    return true;
                }
                if (b == 0) {
                    return false;
                }
                if (!hasNamePart()) {
                    this.memoizedIsInitialized = 0;
                    return false;
                } else if (!hasIsExtension()) {
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
                    codedOutputStream.writeBytes(1, getNamePartBytes());
                }
                if ((this.bitField0_ & 2) == 2) {
                    codedOutputStream.writeBool(2, this.isExtension_);
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
                    i2 = 0 + CodedOutputStream.computeBytesSize(1, getNamePartBytes());
                }
                if ((this.bitField0_ & 2) == 2) {
                    i2 += CodedOutputStream.computeBoolSize(2, this.isExtension_);
                }
                int serializedSize = i2 + getUnknownFields().getSerializedSize();
                this.memoizedSerializedSize = serializedSize;
                return serializedSize;
            }

            /* access modifiers changed from: protected */
            public Object writeReplace() throws ObjectStreamException {
                return super.writeReplace();
            }

            public static NamePart parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return (NamePart) PARSER.parseFrom(byteString);
            }

            public static NamePart parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return (NamePart) PARSER.parseFrom(byteString, extensionRegistryLite);
            }

            public static NamePart parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return (NamePart) PARSER.parseFrom(bArr);
            }

            public static NamePart parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return (NamePart) PARSER.parseFrom(bArr, extensionRegistryLite);
            }

            public static NamePart parseFrom(InputStream inputStream) throws IOException {
                return (NamePart) PARSER.parseFrom(inputStream);
            }

            public static NamePart parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (NamePart) PARSER.parseFrom(inputStream, extensionRegistryLite);
            }

            public static NamePart parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (NamePart) PARSER.parseDelimitedFrom(inputStream);
            }

            public static NamePart parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (NamePart) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
            }

            public static NamePart parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (NamePart) PARSER.parseFrom(codedInputStream);
            }

            public static NamePart parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (NamePart) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
            }

            public static Builder newBuilder() {
                return Builder.create();
            }

            public Builder newBuilderForType() {
                return newBuilder();
            }

            public static Builder newBuilder(NamePart namePart) {
                return newBuilder().mergeFrom(namePart);
            }

            public Builder toBuilder() {
                return newBuilder(this);
            }

            /* access modifiers changed from: protected */
            public Builder newBuilderForType(BuilderParent builderParent) {
                return new Builder(builderParent);
            }
        }

        public interface NamePartOrBuilder extends MessageOrBuilder {
            boolean getIsExtension();

            String getNamePart();

            ByteString getNamePartBytes();

            boolean hasIsExtension();

            boolean hasNamePart();
        }

        private UninterpretedOption(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private UninterpretedOption(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static UninterpretedOption getDefaultInstance() {
            return defaultInstance;
        }

        public UninterpretedOption getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private UninterpretedOption(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                        case 18:
                            if (!z2 || !true) {
                                this.name_ = new ArrayList();
                                z2 |= true;
                            }
                            this.name_.add(codedInputStream.readMessage(NamePart.PARSER, extensionRegistryLite));
                            break;
                        case 26:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 1;
                            this.identifierValue_ = readBytes;
                            break;
                        case 32:
                            this.bitField0_ |= 2;
                            this.positiveIntValue_ = codedInputStream.readUInt64();
                            break;
                        case 40:
                            this.bitField0_ |= 4;
                            this.negativeIntValue_ = codedInputStream.readInt64();
                            break;
                        case 49:
                            this.bitField0_ |= 8;
                            this.doubleValue_ = codedInputStream.readDouble();
                            break;
                        case 58:
                            this.bitField0_ |= 16;
                            this.stringValue_ = codedInputStream.readBytes();
                            break;
                        case 66:
                            ByteString readBytes2 = codedInputStream.readBytes();
                            this.bitField0_ |= 32;
                            this.aggregateValue_ = readBytes2;
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
                        this.name_ = Collections.unmodifiableList(this.name_);
                    }
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            if (z2 && true) {
                this.name_ = Collections.unmodifiableList(this.name_);
            }
            this.unknownFields = newBuilder.build();
            makeExtensionsImmutable();
        }

        public static final Descriptor getDescriptor() {
            return DescriptorProtos.internal_static_google_protobuf_UninterpretedOption_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return DescriptorProtos.internal_static_google_protobuf_UninterpretedOption_fieldAccessorTable.ensureFieldAccessorsInitialized(UninterpretedOption.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<UninterpretedOption> getParserForType() {
            return PARSER;
        }

        public List<NamePart> getNameList() {
            return this.name_;
        }

        public List<? extends NamePartOrBuilder> getNameOrBuilderList() {
            return this.name_;
        }

        public int getNameCount() {
            return this.name_.size();
        }

        public NamePart getName(int i) {
            return (NamePart) this.name_.get(i);
        }

        public NamePartOrBuilder getNameOrBuilder(int i) {
            return (NamePartOrBuilder) this.name_.get(i);
        }

        public boolean hasIdentifierValue() {
            return (this.bitField0_ & 1) == 1;
        }

        public String getIdentifierValue() {
            Object obj = this.identifierValue_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.identifierValue_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getIdentifierValueBytes() {
            Object obj = this.identifierValue_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.identifierValue_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasPositiveIntValue() {
            return (this.bitField0_ & 2) == 2;
        }

        public long getPositiveIntValue() {
            return this.positiveIntValue_;
        }

        public boolean hasNegativeIntValue() {
            return (this.bitField0_ & 4) == 4;
        }

        public long getNegativeIntValue() {
            return this.negativeIntValue_;
        }

        public boolean hasDoubleValue() {
            return (this.bitField0_ & 8) == 8;
        }

        public double getDoubleValue() {
            return this.doubleValue_;
        }

        public boolean hasStringValue() {
            return (this.bitField0_ & 16) == 16;
        }

        public ByteString getStringValue() {
            return this.stringValue_;
        }

        public boolean hasAggregateValue() {
            return (this.bitField0_ & 32) == 32;
        }

        public String getAggregateValue() {
            Object obj = this.aggregateValue_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.aggregateValue_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getAggregateValueBytes() {
            Object obj = this.aggregateValue_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.aggregateValue_ = copyFromUtf8;
            return copyFromUtf8;
        }

        private void initFields() {
            this.name_ = Collections.emptyList();
            this.identifierValue_ = "";
            this.positiveIntValue_ = 0;
            this.negativeIntValue_ = 0;
            this.doubleValue_ = 0.0d;
            this.stringValue_ = ByteString.EMPTY;
            this.aggregateValue_ = "";
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            for (int i = 0; i < getNameCount(); i++) {
                if (!getName(i).isInitialized()) {
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
                if (i2 >= this.name_.size()) {
                    break;
                }
                codedOutputStream.writeMessage(2, (MessageLite) this.name_.get(i2));
                i = i2 + 1;
            }
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeBytes(3, getIdentifierValueBytes());
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeUInt64(4, this.positiveIntValue_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeInt64(5, this.negativeIntValue_);
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeDouble(6, this.doubleValue_);
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeBytes(7, this.stringValue_);
            }
            if ((this.bitField0_ & 32) == 32) {
                codedOutputStream.writeBytes(8, getAggregateValueBytes());
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        public int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            for (int i3 = 0; i3 < this.name_.size(); i3++) {
                i2 += CodedOutputStream.computeMessageSize(2, (MessageLite) this.name_.get(i3));
            }
            if ((this.bitField0_ & 1) == 1) {
                i2 += CodedOutputStream.computeBytesSize(3, getIdentifierValueBytes());
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeUInt64Size(4, this.positiveIntValue_);
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeInt64Size(5, this.negativeIntValue_);
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeDoubleSize(6, this.doubleValue_);
            }
            if ((this.bitField0_ & 16) == 16) {
                i2 += CodedOutputStream.computeBytesSize(7, this.stringValue_);
            }
            if ((this.bitField0_ & 32) == 32) {
                i2 += CodedOutputStream.computeBytesSize(8, getAggregateValueBytes());
            }
            int serializedSize = getUnknownFields().getSerializedSize() + i2;
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static UninterpretedOption parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (UninterpretedOption) PARSER.parseFrom(byteString);
        }

        public static UninterpretedOption parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (UninterpretedOption) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static UninterpretedOption parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (UninterpretedOption) PARSER.parseFrom(bArr);
        }

        public static UninterpretedOption parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (UninterpretedOption) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static UninterpretedOption parseFrom(InputStream inputStream) throws IOException {
            return (UninterpretedOption) PARSER.parseFrom(inputStream);
        }

        public static UninterpretedOption parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (UninterpretedOption) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static UninterpretedOption parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (UninterpretedOption) PARSER.parseDelimitedFrom(inputStream);
        }

        public static UninterpretedOption parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (UninterpretedOption) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static UninterpretedOption parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (UninterpretedOption) PARSER.parseFrom(codedInputStream);
        }

        public static UninterpretedOption parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (UninterpretedOption) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(UninterpretedOption uninterpretedOption) {
            return newBuilder().mergeFrom(uninterpretedOption);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface UninterpretedOptionOrBuilder extends MessageOrBuilder {
        String getAggregateValue();

        ByteString getAggregateValueBytes();

        double getDoubleValue();

        String getIdentifierValue();

        ByteString getIdentifierValueBytes();

        NamePart getName(int i);

        int getNameCount();

        List<NamePart> getNameList();

        NamePartOrBuilder getNameOrBuilder(int i);

        List<? extends NamePartOrBuilder> getNameOrBuilderList();

        long getNegativeIntValue();

        long getPositiveIntValue();

        ByteString getStringValue();

        boolean hasAggregateValue();

        boolean hasDoubleValue();

        boolean hasIdentifierValue();

        boolean hasNegativeIntValue();

        boolean hasPositiveIntValue();

        boolean hasStringValue();
    }

    private DescriptorProtos() {
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
    }

    public static FileDescriptor getDescriptor() {
        return descriptor;
    }

    static {
        FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n google/protobuf/descriptor.proto\u0012\u000fgoogle.protobuf\"G\n\u0011FileDescriptorSet\u00122\n\u0004file\u0018\u0001 \u0003(\u000b2$.google.protobuf.FileDescriptorProto\"Ë\u0003\n\u0013FileDescriptorProto\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u0012\u000f\n\u0007package\u0018\u0002 \u0001(\t\u0012\u0012\n\ndependency\u0018\u0003 \u0003(\t\u0012\u0019\n\u0011public_dependency\u0018\n \u0003(\u0005\u0012\u0017\n\u000fweak_dependency\u0018\u000b \u0003(\u0005\u00126\n\fmessage_type\u0018\u0004 \u0003(\u000b2 .google.protobuf.DescriptorProto\u00127\n\tenum_type\u0018\u0005 \u0003(\u000b2$.google.protobuf.EnumDescriptorProto\u00128\n\u0007service\u0018\u0006 \u0003(\u000b2'.google.protobuf.", "ServiceDescriptorProto\u00128\n\textension\u0018\u0007 \u0003(\u000b2%.google.protobuf.FieldDescriptorProto\u0012-\n\u0007options\u0018\b \u0001(\u000b2\u001c.google.protobuf.FileOptions\u00129\n\u0010source_code_info\u0018\t \u0001(\u000b2\u001f.google.protobuf.SourceCodeInfo\"ä\u0003\n\u000fDescriptorProto\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u00124\n\u0005field\u0018\u0002 \u0003(\u000b2%.google.protobuf.FieldDescriptorProto\u00128\n\textension\u0018\u0006 \u0003(\u000b2%.google.protobuf.FieldDescriptorProto\u00125\n\u000bnested_type\u0018\u0003 \u0003(\u000b2 .google.protobuf.DescriptorProto\u00127\n\tenum_type", "\u0018\u0004 \u0003(\u000b2$.google.protobuf.EnumDescriptorProto\u0012H\n\u000fextension_range\u0018\u0005 \u0003(\u000b2/.google.protobuf.DescriptorProto.ExtensionRange\u00129\n\noneof_decl\u0018\b \u0003(\u000b2%.google.protobuf.OneofDescriptorProto\u00120\n\u0007options\u0018\u0007 \u0001(\u000b2\u001f.google.protobuf.MessageOptions\u001a,\n\u000eExtensionRange\u0012\r\n\u0005start\u0018\u0001 \u0001(\u0005\u0012\u000b\n\u0003end\u0018\u0002 \u0001(\u0005\"©\u0005\n\u0014FieldDescriptorProto\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u0012\u000e\n\u0006number\u0018\u0003 \u0001(\u0005\u0012:\n\u0005label\u0018\u0004 \u0001(\u000e2+.google.protobuf.FieldDescriptorProto.Label\u00128\n\u0004type\u0018\u0005 \u0001", "(\u000e2*.google.protobuf.FieldDescriptorProto.Type\u0012\u0011\n\ttype_name\u0018\u0006 \u0001(\t\u0012\u0010\n\bextendee\u0018\u0002 \u0001(\t\u0012\u0015\n\rdefault_value\u0018\u0007 \u0001(\t\u0012\u0013\n\u000boneof_index\u0018\t \u0001(\u0005\u0012.\n\u0007options\u0018\b \u0001(\u000b2\u001d.google.protobuf.FieldOptions\"¶\u0002\n\u0004Type\u0012\u000f\n\u000bTYPE_DOUBLE\u0010\u0001\u0012\u000e\n\nTYPE_FLOAT\u0010\u0002\u0012\u000e\n\nTYPE_INT64\u0010\u0003\u0012\u000f\n\u000bTYPE_UINT64\u0010\u0004\u0012\u000e\n\nTYPE_INT32\u0010\u0005\u0012\u0010\n\fTYPE_FIXED64\u0010\u0006\u0012\u0010\n\fTYPE_FIXED32\u0010\u0007\u0012\r\n\tTYPE_BOOL\u0010\b\u0012\u000f\n\u000bTYPE_STRING\u0010\t\u0012\u000e\n\nTYPE_GROUP\u0010\n\u0012\u0010\n\fTYPE_MESSAGE\u0010\u000b\u0012\u000e\n\nTYPE_BYTES\u0010\f\u0012\u000f\n\u000bTYPE_UINT32\u0010", "\r\u0012\r\n\tTYPE_ENUM\u0010\u000e\u0012\u0011\n\rTYPE_SFIXED32\u0010\u000f\u0012\u0011\n\rTYPE_SFIXED64\u0010\u0010\u0012\u000f\n\u000bTYPE_SINT32\u0010\u0011\u0012\u000f\n\u000bTYPE_SINT64\u0010\u0012\"C\n\u0005Label\u0012\u0012\n\u000eLABEL_OPTIONAL\u0010\u0001\u0012\u0012\n\u000eLABEL_REQUIRED\u0010\u0002\u0012\u0012\n\u000eLABEL_REPEATED\u0010\u0003\"$\n\u0014OneofDescriptorProto\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\"\u0001\n\u0013EnumDescriptorProto\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u00128\n\u0005value\u0018\u0002 \u0003(\u000b2).google.protobuf.EnumValueDescriptorProto\u0012-\n\u0007options\u0018\u0003 \u0001(\u000b2\u001c.google.protobuf.EnumOptions\"l\n\u0018EnumValueDescriptorProto\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u0012\u000e\n\u0006number\u0018\u0002 \u0001(\u0005\u00122\n\u0007", "options\u0018\u0003 \u0001(\u000b2!.google.protobuf.EnumValueOptions\"\u0001\n\u0016ServiceDescriptorProto\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u00126\n\u0006method\u0018\u0002 \u0003(\u000b2&.google.protobuf.MethodDescriptorProto\u00120\n\u0007options\u0018\u0003 \u0001(\u000b2\u001f.google.protobuf.ServiceOptions\"\n\u0015MethodDescriptorProto\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u0012\u0012\n\ninput_type\u0018\u0002 \u0001(\t\u0012\u0013\n\u000boutput_type\u0018\u0003 \u0001(\t\u0012/\n\u0007options\u0018\u0004 \u0001(\u000b2\u001e.google.protobuf.MethodOptions\"«\u0004\n\u000bFileOptions\u0012\u0014\n\fjava_package\u0018\u0001 \u0001(\t\u0012\u001c\n\u0014java_outer_classname\u0018\b \u0001(\t\u0012\"\n\u0013java", "_multiple_files\u0018\n \u0001(\b:\u0005false\u0012,\n\u001djava_generate_equals_and_hash\u0018\u0014 \u0001(\b:\u0005false\u0012%\n\u0016java_string_check_utf8\u0018\u001b \u0001(\b:\u0005false\u0012F\n\foptimize_for\u0018\t \u0001(\u000e2).google.protobuf.FileOptions.OptimizeMode:\u0005SPEED\u0012\u0012\n\ngo_package\u0018\u000b \u0001(\t\u0012\"\n\u0013cc_generic_services\u0018\u0010 \u0001(\b:\u0005false\u0012$\n\u0015java_generic_services\u0018\u0011 \u0001(\b:\u0005false\u0012\"\n\u0013py_generic_services\u0018\u0012 \u0001(\b:\u0005false\u0012\u0019\n\ndeprecated\u0018\u0017 \u0001(\b:\u0005false\u0012C\n\u0014uninterpreted_option\u0018ç\u0007 \u0003(\u000b2$.google.protobuf.Uninterp", "retedOption\":\n\fOptimizeMode\u0012\t\n\u0005SPEED\u0010\u0001\u0012\r\n\tCODE_SIZE\u0010\u0002\u0012\u0010\n\fLITE_RUNTIME\u0010\u0003*\t\bè\u0007\u0010\u0002\"Ó\u0001\n\u000eMessageOptions\u0012&\n\u0017message_set_wire_format\u0018\u0001 \u0001(\b:\u0005false\u0012.\n\u001fno_standard_descriptor_accessor\u0018\u0002 \u0001(\b:\u0005false\u0012\u0019\n\ndeprecated\u0018\u0003 \u0001(\b:\u0005false\u0012C\n\u0014uninterpreted_option\u0018ç\u0007 \u0003(\u000b2$.google.protobuf.UninterpretedOption*\t\bè\u0007\u0010\u0002\"¾\u0002\n\fFieldOptions\u0012:\n\u0005ctype\u0018\u0001 \u0001(\u000e2#.google.protobuf.FieldOptions.CType:\u0006STRING\u0012\u000e\n\u0006packed\u0018\u0002 \u0001(\b\u0012\u0013\n\u0004lazy\u0018\u0005 ", "\u0001(\b:\u0005false\u0012\u0019\n\ndeprecated\u0018\u0003 \u0001(\b:\u0005false\u0012\u001c\n\u0014experimental_map_key\u0018\t \u0001(\t\u0012\u0013\n\u0004weak\u0018\n \u0001(\b:\u0005false\u0012C\n\u0014uninterpreted_option\u0018ç\u0007 \u0003(\u000b2$.google.protobuf.UninterpretedOption\"/\n\u0005CType\u0012\n\n\u0006STRING\u0010\u0000\u0012\b\n\u0004CORD\u0010\u0001\u0012\u0010\n\fSTRING_PIECE\u0010\u0002*\t\bè\u0007\u0010\u0002\"\u0001\n\u000bEnumOptions\u0012\u0013\n\u000ballow_alias\u0018\u0002 \u0001(\b\u0012\u0019\n\ndeprecated\u0018\u0003 \u0001(\b:\u0005false\u0012C\n\u0014uninterpreted_option\u0018ç\u0007 \u0003(\u000b2$.google.protobuf.UninterpretedOption*\t\bè\u0007\u0010\u0002\"}\n\u0010EnumValueOptions\u0012\u0019\n\ndeprecated\u0018\u0001 \u0001(", "\b:\u0005false\u0012C\n\u0014uninterpreted_option\u0018ç\u0007 \u0003(\u000b2$.google.protobuf.UninterpretedOption*\t\bè\u0007\u0010\u0002\"{\n\u000eServiceOptions\u0012\u0019\n\ndeprecated\u0018! \u0001(\b:\u0005false\u0012C\n\u0014uninterpreted_option\u0018ç\u0007 \u0003(\u000b2$.google.protobuf.UninterpretedOption*\t\bè\u0007\u0010\u0002\"z\n\rMethodOptions\u0012\u0019\n\ndeprecated\u0018! \u0001(\b:\u0005false\u0012C\n\u0014uninterpreted_option\u0018ç\u0007 \u0003(\u000b2$.google.protobuf.UninterpretedOption*\t\bè\u0007\u0010\u0002\"\u0002\n\u0013UninterpretedOption\u0012;\n\u0004name\u0018\u0002 \u0003(\u000b2-.google.protobuf.Uninte", "rpretedOption.NamePart\u0012\u0018\n\u0010identifier_value\u0018\u0003 \u0001(\t\u0012\u001a\n\u0012positive_int_value\u0018\u0004 \u0001(\u0004\u0012\u001a\n\u0012negative_int_value\u0018\u0005 \u0001(\u0003\u0012\u0014\n\fdouble_value\u0018\u0006 \u0001(\u0001\u0012\u0014\n\fstring_value\u0018\u0007 \u0001(\f\u0012\u0017\n\u000faggregate_value\u0018\b \u0001(\t\u001a3\n\bNamePart\u0012\u0011\n\tname_part\u0018\u0001 \u0002(\t\u0012\u0014\n\fis_extension\u0018\u0002 \u0002(\b\"±\u0001\n\u000eSourceCodeInfo\u0012:\n\blocation\u0018\u0001 \u0003(\u000b2(.google.protobuf.SourceCodeInfo.Location\u001ac\n\bLocation\u0012\u0010\n\u0004path\u0018\u0001 \u0003(\u0005B\u0002\u0010\u0001\u0012\u0010\n\u0004span\u0018\u0002 \u0003(\u0005B\u0002\u0010\u0001\u0012\u0018\n\u0010leading_comments\u0018\u0003 \u0001(\t\u0012\u0019\n\u0011trailing_comments", "\u0018\u0004 \u0001(\tB)\n\u0013com.google.protobufB\u0010DescriptorProtosH\u0001"}, new FileDescriptor[0], new InternalDescriptorAssigner() {
            public ExtensionRegistry assignDescriptors(FileDescriptor fileDescriptor) {
                DescriptorProtos.descriptor = fileDescriptor;
                return null;
            }
        });
    }
}
