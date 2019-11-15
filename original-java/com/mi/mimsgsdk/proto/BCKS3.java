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
import com.google.protobuf.MessageOrBuilder;
import com.google.protobuf.Parser;
import com.google.protobuf.ProtocolMessageEnum;
import com.google.protobuf.SingleFieldBuilder;
import com.google.protobuf.UnknownFieldSet;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;

public final class BCKS3 {
    /* access modifiers changed from: private */
    public static FileDescriptor descriptor;
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_mimsgsdk_proto_AuthRequest_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(0));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_mimsgsdk_proto_AuthRequest_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_mimsgsdk_proto_AuthRequest_descriptor, new String[]{"Rid", "HttpVerb", "ContentMd5", "ContentType", "Date", "CanonicalizedHeaders", "Suffix", "AuthType", "Vuid"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_mimsgsdk_proto_AuthResponse_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(1));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_mimsgsdk_proto_AuthResponse_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_mimsgsdk_proto_AuthResponse_descriptor, new String[]{"Rid", "ErrorCode", "Reusable", "Authorization", "FileInfo", "ErrorMsg", "Date"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_mimsgsdk_proto_FileInfo_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(4));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_mimsgsdk_proto_FileInfo_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_mimsgsdk_proto_FileInfo_descriptor, new String[]{"Bucket", "ObjectKey", "Url", "Acl"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_mimsgsdk_proto_ReuseRequest_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(2));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_mimsgsdk_proto_ReuseRequest_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_mimsgsdk_proto_ReuseRequest_descriptor, new String[]{"Rid", "ContentMd5", "FileInfo"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_mimsgsdk_proto_ReuseResponse_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(3));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_mimsgsdk_proto_ReuseResponse_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_mimsgsdk_proto_ReuseResponse_descriptor, new String[]{"Rid", "ErrorCode", "ErrorMsg"});

    public static final class AuthRequest extends GeneratedMessage implements AuthRequestOrBuilder {
        public static final int AUTHTYPE_FIELD_NUMBER = 8;
        public static final int CANONICALIZEDHEADERS_FIELD_NUMBER = 6;
        public static final int CONTENTMD5_FIELD_NUMBER = 3;
        public static final int CONTENTTYPE_FIELD_NUMBER = 4;
        public static final int DATE_FIELD_NUMBER = 5;
        public static final int HTTPVERB_FIELD_NUMBER = 2;
        public static Parser<AuthRequest> PARSER = new AbstractParser<AuthRequest>() {
            public AuthRequest parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new AuthRequest(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int RID_FIELD_NUMBER = 1;
        public static final int SUFFIX_FIELD_NUMBER = 7;
        public static final int VUID_FIELD_NUMBER = 9;
        private static final AuthRequest defaultInstance = new AuthRequest(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public AuthType authType_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public Object canonicalizedHeaders_;
        /* access modifiers changed from: private */
        public Object contentMd5_;
        /* access modifiers changed from: private */
        public Object contentType_;
        /* access modifiers changed from: private */
        public Object date_;
        /* access modifiers changed from: private */
        public Object httpVerb_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public long rid_;
        /* access modifiers changed from: private */
        public Object suffix_;
        private final UnknownFieldSet unknownFields;
        /* access modifiers changed from: private */
        public long vuid_;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements AuthRequestOrBuilder {
            private AuthType authType_;
            private int bitField0_;
            private Object canonicalizedHeaders_;
            private Object contentMd5_;
            private Object contentType_;
            private Object date_;
            private Object httpVerb_;
            private long rid_;
            private Object suffix_;
            private long vuid_;

            public static final Descriptor getDescriptor() {
                return BCKS3.internal_static_com_mi_mimsgsdk_proto_AuthRequest_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return BCKS3.internal_static_com_mi_mimsgsdk_proto_AuthRequest_fieldAccessorTable.ensureFieldAccessorsInitialized(AuthRequest.class, Builder.class);
            }

            private Builder() {
                this.httpVerb_ = "";
                this.contentMd5_ = "";
                this.contentType_ = "";
                this.date_ = "";
                this.canonicalizedHeaders_ = "";
                this.suffix_ = "";
                this.authType_ = AuthType.DEFAULT;
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.httpVerb_ = "";
                this.contentMd5_ = "";
                this.contentType_ = "";
                this.date_ = "";
                this.canonicalizedHeaders_ = "";
                this.suffix_ = "";
                this.authType_ = AuthType.DEFAULT;
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (AuthRequest.alwaysUseFieldBuilders) {
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.rid_ = 0;
                this.bitField0_ &= -2;
                this.httpVerb_ = "";
                this.bitField0_ &= -3;
                this.contentMd5_ = "";
                this.bitField0_ &= -5;
                this.contentType_ = "";
                this.bitField0_ &= -9;
                this.date_ = "";
                this.bitField0_ &= -17;
                this.canonicalizedHeaders_ = "";
                this.bitField0_ &= -33;
                this.suffix_ = "";
                this.bitField0_ &= -65;
                this.authType_ = AuthType.DEFAULT;
                this.bitField0_ &= -129;
                this.vuid_ = 0;
                this.bitField0_ &= -257;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return BCKS3.internal_static_com_mi_mimsgsdk_proto_AuthRequest_descriptor;
            }

            public AuthRequest getDefaultInstanceForType() {
                return AuthRequest.getDefaultInstance();
            }

            public AuthRequest build() {
                AuthRequest buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public AuthRequest buildPartial() {
                int i = 1;
                AuthRequest authRequest = new AuthRequest((com.google.protobuf.GeneratedMessage.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                authRequest.rid_ = this.rid_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                authRequest.httpVerb_ = this.httpVerb_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                authRequest.contentMd5_ = this.contentMd5_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                authRequest.contentType_ = this.contentType_;
                if ((i2 & 16) == 16) {
                    i |= 16;
                }
                authRequest.date_ = this.date_;
                if ((i2 & 32) == 32) {
                    i |= 32;
                }
                authRequest.canonicalizedHeaders_ = this.canonicalizedHeaders_;
                if ((i2 & 64) == 64) {
                    i |= 64;
                }
                authRequest.suffix_ = this.suffix_;
                if ((i2 & 128) == 128) {
                    i |= 128;
                }
                authRequest.authType_ = this.authType_;
                if ((i2 & 256) == 256) {
                    i |= 256;
                }
                authRequest.vuid_ = this.vuid_;
                authRequest.bitField0_ = i;
                onBuilt();
                return authRequest;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof AuthRequest) {
                    return mergeFrom((AuthRequest) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(AuthRequest authRequest) {
                if (authRequest != AuthRequest.getDefaultInstance()) {
                    if (authRequest.hasRid()) {
                        setRid(authRequest.getRid());
                    }
                    if (authRequest.hasHttpVerb()) {
                        this.bitField0_ |= 2;
                        this.httpVerb_ = authRequest.httpVerb_;
                        onChanged();
                    }
                    if (authRequest.hasContentMd5()) {
                        this.bitField0_ |= 4;
                        this.contentMd5_ = authRequest.contentMd5_;
                        onChanged();
                    }
                    if (authRequest.hasContentType()) {
                        this.bitField0_ |= 8;
                        this.contentType_ = authRequest.contentType_;
                        onChanged();
                    }
                    if (authRequest.hasDate()) {
                        this.bitField0_ |= 16;
                        this.date_ = authRequest.date_;
                        onChanged();
                    }
                    if (authRequest.hasCanonicalizedHeaders()) {
                        this.bitField0_ |= 32;
                        this.canonicalizedHeaders_ = authRequest.canonicalizedHeaders_;
                        onChanged();
                    }
                    if (authRequest.hasSuffix()) {
                        this.bitField0_ |= 64;
                        this.suffix_ = authRequest.suffix_;
                        onChanged();
                    }
                    if (authRequest.hasAuthType()) {
                        setAuthType(authRequest.getAuthType());
                    }
                    if (authRequest.hasVuid()) {
                        setVuid(authRequest.getVuid());
                    }
                    mergeUnknownFields(authRequest.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasRid() && hasHttpVerb() && hasContentMd5() && hasContentType() && hasDate() && hasCanonicalizedHeaders() && hasSuffix()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                AuthRequest authRequest;
                AuthRequest authRequest2;
                try {
                    AuthRequest authRequest3 = (AuthRequest) AuthRequest.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (authRequest3 != null) {
                        mergeFrom(authRequest3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    authRequest2 = (AuthRequest) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    authRequest = authRequest2;
                    th = th2;
                }
                if (authRequest != null) {
                    mergeFrom(authRequest);
                }
                throw th;
            }

            public boolean hasRid() {
                return (this.bitField0_ & 1) == 1;
            }

            public long getRid() {
                return this.rid_;
            }

            public Builder setRid(long j) {
                this.bitField0_ |= 1;
                this.rid_ = j;
                onChanged();
                return this;
            }

            public Builder clearRid() {
                this.bitField0_ &= -2;
                this.rid_ = 0;
                onChanged();
                return this;
            }

            public boolean hasHttpVerb() {
                return (this.bitField0_ & 2) == 2;
            }

            public String getHttpVerb() {
                Object obj = this.httpVerb_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.httpVerb_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getHttpVerbBytes() {
                Object obj = this.httpVerb_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.httpVerb_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setHttpVerb(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.httpVerb_ = str;
                onChanged();
                return this;
            }

            public Builder clearHttpVerb() {
                this.bitField0_ &= -3;
                this.httpVerb_ = AuthRequest.getDefaultInstance().getHttpVerb();
                onChanged();
                return this;
            }

            public Builder setHttpVerbBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.httpVerb_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasContentMd5() {
                return (this.bitField0_ & 4) == 4;
            }

            public String getContentMd5() {
                Object obj = this.contentMd5_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.contentMd5_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getContentMd5Bytes() {
                Object obj = this.contentMd5_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.contentMd5_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setContentMd5(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.contentMd5_ = str;
                onChanged();
                return this;
            }

            public Builder clearContentMd5() {
                this.bitField0_ &= -5;
                this.contentMd5_ = AuthRequest.getDefaultInstance().getContentMd5();
                onChanged();
                return this;
            }

            public Builder setContentMd5Bytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.contentMd5_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasContentType() {
                return (this.bitField0_ & 8) == 8;
            }

            public String getContentType() {
                Object obj = this.contentType_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.contentType_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getContentTypeBytes() {
                Object obj = this.contentType_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.contentType_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setContentType(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.contentType_ = str;
                onChanged();
                return this;
            }

            public Builder clearContentType() {
                this.bitField0_ &= -9;
                this.contentType_ = AuthRequest.getDefaultInstance().getContentType();
                onChanged();
                return this;
            }

            public Builder setContentTypeBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.contentType_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasDate() {
                return (this.bitField0_ & 16) == 16;
            }

            public String getDate() {
                Object obj = this.date_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.date_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getDateBytes() {
                Object obj = this.date_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.date_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setDate(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 16;
                this.date_ = str;
                onChanged();
                return this;
            }

            public Builder clearDate() {
                this.bitField0_ &= -17;
                this.date_ = AuthRequest.getDefaultInstance().getDate();
                onChanged();
                return this;
            }

            public Builder setDateBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 16;
                this.date_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasCanonicalizedHeaders() {
                return (this.bitField0_ & 32) == 32;
            }

            public String getCanonicalizedHeaders() {
                Object obj = this.canonicalizedHeaders_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.canonicalizedHeaders_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getCanonicalizedHeadersBytes() {
                Object obj = this.canonicalizedHeaders_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.canonicalizedHeaders_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setCanonicalizedHeaders(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 32;
                this.canonicalizedHeaders_ = str;
                onChanged();
                return this;
            }

            public Builder clearCanonicalizedHeaders() {
                this.bitField0_ &= -33;
                this.canonicalizedHeaders_ = AuthRequest.getDefaultInstance().getCanonicalizedHeaders();
                onChanged();
                return this;
            }

            public Builder setCanonicalizedHeadersBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 32;
                this.canonicalizedHeaders_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasSuffix() {
                return (this.bitField0_ & 64) == 64;
            }

            public String getSuffix() {
                Object obj = this.suffix_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.suffix_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getSuffixBytes() {
                Object obj = this.suffix_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.suffix_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setSuffix(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 64;
                this.suffix_ = str;
                onChanged();
                return this;
            }

            public Builder clearSuffix() {
                this.bitField0_ &= -65;
                this.suffix_ = AuthRequest.getDefaultInstance().getSuffix();
                onChanged();
                return this;
            }

            public Builder setSuffixBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 64;
                this.suffix_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasAuthType() {
                return (this.bitField0_ & 128) == 128;
            }

            public AuthType getAuthType() {
                return this.authType_;
            }

            public Builder setAuthType(AuthType authType) {
                if (authType == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 128;
                this.authType_ = authType;
                onChanged();
                return this;
            }

            public Builder clearAuthType() {
                this.bitField0_ &= -129;
                this.authType_ = AuthType.DEFAULT;
                onChanged();
                return this;
            }

            public boolean hasVuid() {
                return (this.bitField0_ & 256) == 256;
            }

            public long getVuid() {
                return this.vuid_;
            }

            public Builder setVuid(long j) {
                this.bitField0_ |= 256;
                this.vuid_ = j;
                onChanged();
                return this;
            }

            public Builder clearVuid() {
                this.bitField0_ &= -257;
                this.vuid_ = 0;
                onChanged();
                return this;
            }
        }

        private AuthRequest(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private AuthRequest(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static AuthRequest getDefaultInstance() {
            return defaultInstance;
        }

        public AuthRequest getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private AuthRequest(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.rid_ = codedInputStream.readUInt64();
                            break;
                        case 18:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 2;
                            this.httpVerb_ = readBytes;
                            break;
                        case 26:
                            ByteString readBytes2 = codedInputStream.readBytes();
                            this.bitField0_ |= 4;
                            this.contentMd5_ = readBytes2;
                            break;
                        case 34:
                            ByteString readBytes3 = codedInputStream.readBytes();
                            this.bitField0_ |= 8;
                            this.contentType_ = readBytes3;
                            break;
                        case 42:
                            ByteString readBytes4 = codedInputStream.readBytes();
                            this.bitField0_ |= 16;
                            this.date_ = readBytes4;
                            break;
                        case 50:
                            ByteString readBytes5 = codedInputStream.readBytes();
                            this.bitField0_ |= 32;
                            this.canonicalizedHeaders_ = readBytes5;
                            break;
                        case 58:
                            ByteString readBytes6 = codedInputStream.readBytes();
                            this.bitField0_ |= 64;
                            this.suffix_ = readBytes6;
                            break;
                        case 64:
                            int readEnum = codedInputStream.readEnum();
                            AuthType valueOf = AuthType.valueOf(readEnum);
                            if (valueOf != null) {
                                this.bitField0_ |= 128;
                                this.authType_ = valueOf;
                                break;
                            } else {
                                newBuilder.mergeVarintField(8, readEnum);
                                break;
                            }
                        case 72:
                            this.bitField0_ |= 256;
                            this.vuid_ = codedInputStream.readUInt64();
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
            return BCKS3.internal_static_com_mi_mimsgsdk_proto_AuthRequest_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return BCKS3.internal_static_com_mi_mimsgsdk_proto_AuthRequest_fieldAccessorTable.ensureFieldAccessorsInitialized(AuthRequest.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<AuthRequest> getParserForType() {
            return PARSER;
        }

        public boolean hasRid() {
            return (this.bitField0_ & 1) == 1;
        }

        public long getRid() {
            return this.rid_;
        }

        public boolean hasHttpVerb() {
            return (this.bitField0_ & 2) == 2;
        }

        public String getHttpVerb() {
            Object obj = this.httpVerb_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.httpVerb_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getHttpVerbBytes() {
            Object obj = this.httpVerb_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.httpVerb_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasContentMd5() {
            return (this.bitField0_ & 4) == 4;
        }

        public String getContentMd5() {
            Object obj = this.contentMd5_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.contentMd5_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getContentMd5Bytes() {
            Object obj = this.contentMd5_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.contentMd5_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasContentType() {
            return (this.bitField0_ & 8) == 8;
        }

        public String getContentType() {
            Object obj = this.contentType_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.contentType_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getContentTypeBytes() {
            Object obj = this.contentType_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.contentType_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasDate() {
            return (this.bitField0_ & 16) == 16;
        }

        public String getDate() {
            Object obj = this.date_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.date_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getDateBytes() {
            Object obj = this.date_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.date_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasCanonicalizedHeaders() {
            return (this.bitField0_ & 32) == 32;
        }

        public String getCanonicalizedHeaders() {
            Object obj = this.canonicalizedHeaders_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.canonicalizedHeaders_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getCanonicalizedHeadersBytes() {
            Object obj = this.canonicalizedHeaders_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.canonicalizedHeaders_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasSuffix() {
            return (this.bitField0_ & 64) == 64;
        }

        public String getSuffix() {
            Object obj = this.suffix_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.suffix_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getSuffixBytes() {
            Object obj = this.suffix_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.suffix_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasAuthType() {
            return (this.bitField0_ & 128) == 128;
        }

        public AuthType getAuthType() {
            return this.authType_;
        }

        public boolean hasVuid() {
            return (this.bitField0_ & 256) == 256;
        }

        public long getVuid() {
            return this.vuid_;
        }

        private void initFields() {
            this.rid_ = 0;
            this.httpVerb_ = "";
            this.contentMd5_ = "";
            this.contentType_ = "";
            this.date_ = "";
            this.canonicalizedHeaders_ = "";
            this.suffix_ = "";
            this.authType_ = AuthType.DEFAULT;
            this.vuid_ = 0;
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasRid()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasHttpVerb()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasContentMd5()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasContentType()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasDate()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasCanonicalizedHeaders()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasSuffix()) {
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
                codedOutputStream.writeUInt64(1, this.rid_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeBytes(2, getHttpVerbBytes());
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBytes(3, getContentMd5Bytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeBytes(4, getContentTypeBytes());
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeBytes(5, getDateBytes());
            }
            if ((this.bitField0_ & 32) == 32) {
                codedOutputStream.writeBytes(6, getCanonicalizedHeadersBytes());
            }
            if ((this.bitField0_ & 64) == 64) {
                codedOutputStream.writeBytes(7, getSuffixBytes());
            }
            if ((this.bitField0_ & 128) == 128) {
                codedOutputStream.writeEnum(8, this.authType_.getNumber());
            }
            if ((this.bitField0_ & 256) == 256) {
                codedOutputStream.writeUInt64(9, this.vuid_);
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
                i2 = 0 + CodedOutputStream.computeUInt64Size(1, this.rid_);
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeBytesSize(2, getHttpVerbBytes());
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeBytesSize(3, getContentMd5Bytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeBytesSize(4, getContentTypeBytes());
            }
            if ((this.bitField0_ & 16) == 16) {
                i2 += CodedOutputStream.computeBytesSize(5, getDateBytes());
            }
            if ((this.bitField0_ & 32) == 32) {
                i2 += CodedOutputStream.computeBytesSize(6, getCanonicalizedHeadersBytes());
            }
            if ((this.bitField0_ & 64) == 64) {
                i2 += CodedOutputStream.computeBytesSize(7, getSuffixBytes());
            }
            if ((this.bitField0_ & 128) == 128) {
                i2 += CodedOutputStream.computeEnumSize(8, this.authType_.getNumber());
            }
            if ((this.bitField0_ & 256) == 256) {
                i2 += CodedOutputStream.computeUInt64Size(9, this.vuid_);
            }
            int serializedSize = i2 + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static AuthRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (AuthRequest) PARSER.parseFrom(byteString);
        }

        public static AuthRequest parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (AuthRequest) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static AuthRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (AuthRequest) PARSER.parseFrom(bArr);
        }

        public static AuthRequest parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (AuthRequest) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static AuthRequest parseFrom(InputStream inputStream) throws IOException {
            return (AuthRequest) PARSER.parseFrom(inputStream);
        }

        public static AuthRequest parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (AuthRequest) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static AuthRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (AuthRequest) PARSER.parseDelimitedFrom(inputStream);
        }

        public static AuthRequest parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (AuthRequest) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static AuthRequest parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (AuthRequest) PARSER.parseFrom(codedInputStream);
        }

        public static AuthRequest parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (AuthRequest) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(AuthRequest authRequest) {
            return newBuilder().mergeFrom(authRequest);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface AuthRequestOrBuilder extends MessageOrBuilder {
        AuthType getAuthType();

        String getCanonicalizedHeaders();

        ByteString getCanonicalizedHeadersBytes();

        String getContentMd5();

        ByteString getContentMd5Bytes();

        String getContentType();

        ByteString getContentTypeBytes();

        String getDate();

        ByteString getDateBytes();

        String getHttpVerb();

        ByteString getHttpVerbBytes();

        long getRid();

        String getSuffix();

        ByteString getSuffixBytes();

        long getVuid();

        boolean hasAuthType();

        boolean hasCanonicalizedHeaders();

        boolean hasContentMd5();

        boolean hasContentType();

        boolean hasDate();

        boolean hasHttpVerb();

        boolean hasRid();

        boolean hasSuffix();

        boolean hasVuid();
    }

    public static final class AuthResponse extends GeneratedMessage implements AuthResponseOrBuilder {
        public static final int AUTHORIZATION_FIELD_NUMBER = 4;
        public static final int DATE_FIELD_NUMBER = 7;
        public static final int ERRORCODE_FIELD_NUMBER = 2;
        public static final int ERRORMSG_FIELD_NUMBER = 6;
        public static final int FILEINFO_FIELD_NUMBER = 5;
        public static Parser<AuthResponse> PARSER = new AbstractParser<AuthResponse>() {
            public AuthResponse parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new AuthResponse(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int REUSABLE_FIELD_NUMBER = 3;
        public static final int RID_FIELD_NUMBER = 1;
        private static final AuthResponse defaultInstance = new AuthResponse(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public Object authorization_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public Object date_;
        /* access modifiers changed from: private */
        public int errorCode_;
        /* access modifiers changed from: private */
        public Object errorMsg_;
        /* access modifiers changed from: private */
        public FileInfo fileInfo_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public boolean reusable_;
        /* access modifiers changed from: private */
        public long rid_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements AuthResponseOrBuilder {
            private Object authorization_;
            private int bitField0_;
            private Object date_;
            private int errorCode_;
            private Object errorMsg_;
            private SingleFieldBuilder<FileInfo, Builder, FileInfoOrBuilder> fileInfoBuilder_;
            private FileInfo fileInfo_;
            private boolean reusable_;
            private long rid_;

            public static final Descriptor getDescriptor() {
                return BCKS3.internal_static_com_mi_mimsgsdk_proto_AuthResponse_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return BCKS3.internal_static_com_mi_mimsgsdk_proto_AuthResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(AuthResponse.class, Builder.class);
            }

            private Builder() {
                this.authorization_ = "";
                this.fileInfo_ = FileInfo.getDefaultInstance();
                this.errorMsg_ = "";
                this.date_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.authorization_ = "";
                this.fileInfo_ = FileInfo.getDefaultInstance();
                this.errorMsg_ = "";
                this.date_ = "";
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (AuthResponse.alwaysUseFieldBuilders) {
                    getFileInfoFieldBuilder();
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.rid_ = 0;
                this.bitField0_ &= -2;
                this.errorCode_ = 0;
                this.bitField0_ &= -3;
                this.reusable_ = false;
                this.bitField0_ &= -5;
                this.authorization_ = "";
                this.bitField0_ &= -9;
                if (this.fileInfoBuilder_ == null) {
                    this.fileInfo_ = FileInfo.getDefaultInstance();
                } else {
                    this.fileInfoBuilder_.clear();
                }
                this.bitField0_ &= -17;
                this.errorMsg_ = "";
                this.bitField0_ &= -33;
                this.date_ = "";
                this.bitField0_ &= -65;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return BCKS3.internal_static_com_mi_mimsgsdk_proto_AuthResponse_descriptor;
            }

            public AuthResponse getDefaultInstanceForType() {
                return AuthResponse.getDefaultInstance();
            }

            public AuthResponse build() {
                AuthResponse buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public AuthResponse buildPartial() {
                int i;
                int i2 = 1;
                AuthResponse authResponse = new AuthResponse((com.google.protobuf.GeneratedMessage.Builder) this);
                int i3 = this.bitField0_;
                if ((i3 & 1) != 1) {
                    i2 = 0;
                }
                authResponse.rid_ = this.rid_;
                if ((i3 & 2) == 2) {
                    i2 |= 2;
                }
                authResponse.errorCode_ = this.errorCode_;
                if ((i3 & 4) == 4) {
                    i2 |= 4;
                }
                authResponse.reusable_ = this.reusable_;
                if ((i3 & 8) == 8) {
                    i2 |= 8;
                }
                authResponse.authorization_ = this.authorization_;
                if ((i3 & 16) == 16) {
                    i = i2 | 16;
                } else {
                    i = i2;
                }
                if (this.fileInfoBuilder_ == null) {
                    authResponse.fileInfo_ = this.fileInfo_;
                } else {
                    authResponse.fileInfo_ = (FileInfo) this.fileInfoBuilder_.build();
                }
                if ((i3 & 32) == 32) {
                    i |= 32;
                }
                authResponse.errorMsg_ = this.errorMsg_;
                if ((i3 & 64) == 64) {
                    i |= 64;
                }
                authResponse.date_ = this.date_;
                authResponse.bitField0_ = i;
                onBuilt();
                return authResponse;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof AuthResponse) {
                    return mergeFrom((AuthResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(AuthResponse authResponse) {
                if (authResponse != AuthResponse.getDefaultInstance()) {
                    if (authResponse.hasRid()) {
                        setRid(authResponse.getRid());
                    }
                    if (authResponse.hasErrorCode()) {
                        setErrorCode(authResponse.getErrorCode());
                    }
                    if (authResponse.hasReusable()) {
                        setReusable(authResponse.getReusable());
                    }
                    if (authResponse.hasAuthorization()) {
                        this.bitField0_ |= 8;
                        this.authorization_ = authResponse.authorization_;
                        onChanged();
                    }
                    if (authResponse.hasFileInfo()) {
                        mergeFileInfo(authResponse.getFileInfo());
                    }
                    if (authResponse.hasErrorMsg()) {
                        this.bitField0_ |= 32;
                        this.errorMsg_ = authResponse.errorMsg_;
                        onChanged();
                    }
                    if (authResponse.hasDate()) {
                        this.bitField0_ |= 64;
                        this.date_ = authResponse.date_;
                        onChanged();
                    }
                    mergeUnknownFields(authResponse.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                if (!hasRid() || !hasErrorCode()) {
                    return false;
                }
                if (!hasFileInfo() || getFileInfo().isInitialized()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                AuthResponse authResponse;
                AuthResponse authResponse2;
                try {
                    AuthResponse authResponse3 = (AuthResponse) AuthResponse.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (authResponse3 != null) {
                        mergeFrom(authResponse3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    authResponse2 = (AuthResponse) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    authResponse = authResponse2;
                    th = th2;
                }
                if (authResponse != null) {
                    mergeFrom(authResponse);
                }
                throw th;
            }

            public boolean hasRid() {
                return (this.bitField0_ & 1) == 1;
            }

            public long getRid() {
                return this.rid_;
            }

            public Builder setRid(long j) {
                this.bitField0_ |= 1;
                this.rid_ = j;
                onChanged();
                return this;
            }

            public Builder clearRid() {
                this.bitField0_ &= -2;
                this.rid_ = 0;
                onChanged();
                return this;
            }

            public boolean hasErrorCode() {
                return (this.bitField0_ & 2) == 2;
            }

            public int getErrorCode() {
                return this.errorCode_;
            }

            public Builder setErrorCode(int i) {
                this.bitField0_ |= 2;
                this.errorCode_ = i;
                onChanged();
                return this;
            }

            public Builder clearErrorCode() {
                this.bitField0_ &= -3;
                this.errorCode_ = 0;
                onChanged();
                return this;
            }

            public boolean hasReusable() {
                return (this.bitField0_ & 4) == 4;
            }

            public boolean getReusable() {
                return this.reusable_;
            }

            public Builder setReusable(boolean z) {
                this.bitField0_ |= 4;
                this.reusable_ = z;
                onChanged();
                return this;
            }

            public Builder clearReusable() {
                this.bitField0_ &= -5;
                this.reusable_ = false;
                onChanged();
                return this;
            }

            public boolean hasAuthorization() {
                return (this.bitField0_ & 8) == 8;
            }

            public String getAuthorization() {
                Object obj = this.authorization_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.authorization_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getAuthorizationBytes() {
                Object obj = this.authorization_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.authorization_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setAuthorization(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.authorization_ = str;
                onChanged();
                return this;
            }

            public Builder clearAuthorization() {
                this.bitField0_ &= -9;
                this.authorization_ = AuthResponse.getDefaultInstance().getAuthorization();
                onChanged();
                return this;
            }

            public Builder setAuthorizationBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.authorization_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasFileInfo() {
                return (this.bitField0_ & 16) == 16;
            }

            public FileInfo getFileInfo() {
                if (this.fileInfoBuilder_ == null) {
                    return this.fileInfo_;
                }
                return (FileInfo) this.fileInfoBuilder_.getMessage();
            }

            public Builder setFileInfo(FileInfo fileInfo) {
                if (this.fileInfoBuilder_ != null) {
                    this.fileInfoBuilder_.setMessage(fileInfo);
                } else if (fileInfo == null) {
                    throw new NullPointerException();
                } else {
                    this.fileInfo_ = fileInfo;
                    onChanged();
                }
                this.bitField0_ |= 16;
                return this;
            }

            public Builder setFileInfo(Builder builder) {
                if (this.fileInfoBuilder_ == null) {
                    this.fileInfo_ = builder.build();
                    onChanged();
                } else {
                    this.fileInfoBuilder_.setMessage(builder.build());
                }
                this.bitField0_ |= 16;
                return this;
            }

            public Builder mergeFileInfo(FileInfo fileInfo) {
                if (this.fileInfoBuilder_ == null) {
                    if ((this.bitField0_ & 16) != 16 || this.fileInfo_ == FileInfo.getDefaultInstance()) {
                        this.fileInfo_ = fileInfo;
                    } else {
                        this.fileInfo_ = FileInfo.newBuilder(this.fileInfo_).mergeFrom(fileInfo).buildPartial();
                    }
                    onChanged();
                } else {
                    this.fileInfoBuilder_.mergeFrom(fileInfo);
                }
                this.bitField0_ |= 16;
                return this;
            }

            public Builder clearFileInfo() {
                if (this.fileInfoBuilder_ == null) {
                    this.fileInfo_ = FileInfo.getDefaultInstance();
                    onChanged();
                } else {
                    this.fileInfoBuilder_.clear();
                }
                this.bitField0_ &= -17;
                return this;
            }

            public Builder getFileInfoBuilder() {
                this.bitField0_ |= 16;
                onChanged();
                return (Builder) getFileInfoFieldBuilder().getBuilder();
            }

            public FileInfoOrBuilder getFileInfoOrBuilder() {
                if (this.fileInfoBuilder_ != null) {
                    return (FileInfoOrBuilder) this.fileInfoBuilder_.getMessageOrBuilder();
                }
                return this.fileInfo_;
            }

            private SingleFieldBuilder<FileInfo, Builder, FileInfoOrBuilder> getFileInfoFieldBuilder() {
                if (this.fileInfoBuilder_ == null) {
                    this.fileInfoBuilder_ = new SingleFieldBuilder<>(getFileInfo(), getParentForChildren(), isClean());
                    this.fileInfo_ = null;
                }
                return this.fileInfoBuilder_;
            }

            public boolean hasErrorMsg() {
                return (this.bitField0_ & 32) == 32;
            }

            public String getErrorMsg() {
                Object obj = this.errorMsg_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.errorMsg_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getErrorMsgBytes() {
                Object obj = this.errorMsg_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.errorMsg_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setErrorMsg(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 32;
                this.errorMsg_ = str;
                onChanged();
                return this;
            }

            public Builder clearErrorMsg() {
                this.bitField0_ &= -33;
                this.errorMsg_ = AuthResponse.getDefaultInstance().getErrorMsg();
                onChanged();
                return this;
            }

            public Builder setErrorMsgBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 32;
                this.errorMsg_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasDate() {
                return (this.bitField0_ & 64) == 64;
            }

            public String getDate() {
                Object obj = this.date_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.date_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getDateBytes() {
                Object obj = this.date_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.date_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setDate(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 64;
                this.date_ = str;
                onChanged();
                return this;
            }

            public Builder clearDate() {
                this.bitField0_ &= -65;
                this.date_ = AuthResponse.getDefaultInstance().getDate();
                onChanged();
                return this;
            }

            public Builder setDateBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 64;
                this.date_ = byteString;
                onChanged();
                return this;
            }
        }

        private AuthResponse(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private AuthResponse(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static AuthResponse getDefaultInstance() {
            return defaultInstance;
        }

        public AuthResponse getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private AuthResponse(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            break;
                        case 8:
                            this.bitField0_ |= 1;
                            this.rid_ = codedInputStream.readUInt64();
                            z = z2;
                            break;
                        case 16:
                            this.bitField0_ |= 2;
                            this.errorCode_ = codedInputStream.readUInt32();
                            z = z2;
                            break;
                        case 24:
                            this.bitField0_ |= 4;
                            this.reusable_ = codedInputStream.readBool();
                            z = z2;
                            break;
                        case 34:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 8;
                            this.authorization_ = readBytes;
                            z = z2;
                            break;
                        case 42:
                            if ((this.bitField0_ & 16) == 16) {
                                builder = this.fileInfo_.toBuilder();
                            } else {
                                builder = null;
                            }
                            this.fileInfo_ = (FileInfo) codedInputStream.readMessage(FileInfo.PARSER, extensionRegistryLite);
                            if (builder != null) {
                                builder.mergeFrom(this.fileInfo_);
                                this.fileInfo_ = builder.buildPartial();
                            }
                            this.bitField0_ |= 16;
                            z = z2;
                            break;
                        case 50:
                            ByteString readBytes2 = codedInputStream.readBytes();
                            this.bitField0_ |= 32;
                            this.errorMsg_ = readBytes2;
                            z = z2;
                            break;
                        case 58:
                            ByteString readBytes3 = codedInputStream.readBytes();
                            this.bitField0_ |= 64;
                            this.date_ = readBytes3;
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
            return BCKS3.internal_static_com_mi_mimsgsdk_proto_AuthResponse_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return BCKS3.internal_static_com_mi_mimsgsdk_proto_AuthResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(AuthResponse.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<AuthResponse> getParserForType() {
            return PARSER;
        }

        public boolean hasRid() {
            return (this.bitField0_ & 1) == 1;
        }

        public long getRid() {
            return this.rid_;
        }

        public boolean hasErrorCode() {
            return (this.bitField0_ & 2) == 2;
        }

        public int getErrorCode() {
            return this.errorCode_;
        }

        public boolean hasReusable() {
            return (this.bitField0_ & 4) == 4;
        }

        public boolean getReusable() {
            return this.reusable_;
        }

        public boolean hasAuthorization() {
            return (this.bitField0_ & 8) == 8;
        }

        public String getAuthorization() {
            Object obj = this.authorization_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.authorization_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getAuthorizationBytes() {
            Object obj = this.authorization_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.authorization_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasFileInfo() {
            return (this.bitField0_ & 16) == 16;
        }

        public FileInfo getFileInfo() {
            return this.fileInfo_;
        }

        public FileInfoOrBuilder getFileInfoOrBuilder() {
            return this.fileInfo_;
        }

        public boolean hasErrorMsg() {
            return (this.bitField0_ & 32) == 32;
        }

        public String getErrorMsg() {
            Object obj = this.errorMsg_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.errorMsg_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getErrorMsgBytes() {
            Object obj = this.errorMsg_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.errorMsg_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasDate() {
            return (this.bitField0_ & 64) == 64;
        }

        public String getDate() {
            Object obj = this.date_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.date_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getDateBytes() {
            Object obj = this.date_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.date_ = copyFromUtf8;
            return copyFromUtf8;
        }

        private void initFields() {
            this.rid_ = 0;
            this.errorCode_ = 0;
            this.reusable_ = false;
            this.authorization_ = "";
            this.fileInfo_ = FileInfo.getDefaultInstance();
            this.errorMsg_ = "";
            this.date_ = "";
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasRid()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasErrorCode()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasFileInfo() || getFileInfo().isInitialized()) {
                this.memoizedIsInitialized = 1;
                return true;
            } else {
                this.memoizedIsInitialized = 0;
                return false;
            }
        }

        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeUInt64(1, this.rid_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeUInt32(2, this.errorCode_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBool(3, this.reusable_);
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeBytes(4, getAuthorizationBytes());
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeMessage(5, this.fileInfo_);
            }
            if ((this.bitField0_ & 32) == 32) {
                codedOutputStream.writeBytes(6, getErrorMsgBytes());
            }
            if ((this.bitField0_ & 64) == 64) {
                codedOutputStream.writeBytes(7, getDateBytes());
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
                i2 = 0 + CodedOutputStream.computeUInt64Size(1, this.rid_);
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeUInt32Size(2, this.errorCode_);
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeBoolSize(3, this.reusable_);
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeBytesSize(4, getAuthorizationBytes());
            }
            if ((this.bitField0_ & 16) == 16) {
                i2 += CodedOutputStream.computeMessageSize(5, this.fileInfo_);
            }
            if ((this.bitField0_ & 32) == 32) {
                i2 += CodedOutputStream.computeBytesSize(6, getErrorMsgBytes());
            }
            if ((this.bitField0_ & 64) == 64) {
                i2 += CodedOutputStream.computeBytesSize(7, getDateBytes());
            }
            int serializedSize = i2 + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static AuthResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (AuthResponse) PARSER.parseFrom(byteString);
        }

        public static AuthResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (AuthResponse) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static AuthResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (AuthResponse) PARSER.parseFrom(bArr);
        }

        public static AuthResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (AuthResponse) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static AuthResponse parseFrom(InputStream inputStream) throws IOException {
            return (AuthResponse) PARSER.parseFrom(inputStream);
        }

        public static AuthResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (AuthResponse) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static AuthResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (AuthResponse) PARSER.parseDelimitedFrom(inputStream);
        }

        public static AuthResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (AuthResponse) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static AuthResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (AuthResponse) PARSER.parseFrom(codedInputStream);
        }

        public static AuthResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (AuthResponse) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(AuthResponse authResponse) {
            return newBuilder().mergeFrom(authResponse);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface AuthResponseOrBuilder extends MessageOrBuilder {
        String getAuthorization();

        ByteString getAuthorizationBytes();

        String getDate();

        ByteString getDateBytes();

        int getErrorCode();

        String getErrorMsg();

        ByteString getErrorMsgBytes();

        FileInfo getFileInfo();

        FileInfoOrBuilder getFileInfoOrBuilder();

        boolean getReusable();

        long getRid();

        boolean hasAuthorization();

        boolean hasDate();

        boolean hasErrorCode();

        boolean hasErrorMsg();

        boolean hasFileInfo();

        boolean hasReusable();

        boolean hasRid();
    }

    public enum AuthType implements ProtocolMessageEnum {
        DEFAULT(0, 0),
        HEAD(1, 1);
        
        public static final int DEFAULT_VALUE = 0;
        public static final int HEAD_VALUE = 1;
        private static final AuthType[] VALUES = null;
        private static EnumLiteMap<AuthType> internalValueMap;
        private final int index;
        private final int value;

        static {
            internalValueMap = new EnumLiteMap<AuthType>() {
                public AuthType findValueByNumber(int i) {
                    return AuthType.valueOf(i);
                }
            };
            VALUES = values();
        }

        public final int getNumber() {
            return this.value;
        }

        public static AuthType valueOf(int i) {
            switch (i) {
                case 0:
                    return DEFAULT;
                case 1:
                    return HEAD;
                default:
                    return null;
            }
        }

        public static EnumLiteMap<AuthType> internalGetValueMap() {
            return internalValueMap;
        }

        public final EnumValueDescriptor getValueDescriptor() {
            return (EnumValueDescriptor) getDescriptor().getValues().get(this.index);
        }

        public final EnumDescriptor getDescriptorForType() {
            return getDescriptor();
        }

        public static final EnumDescriptor getDescriptor() {
            return (EnumDescriptor) BCKS3.getDescriptor().getEnumTypes().get(0);
        }

        public static AuthType valueOf(EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }

        private AuthType(int i, int i2) {
            this.index = i;
            this.value = i2;
        }
    }

    public static final class FileInfo extends GeneratedMessage implements FileInfoOrBuilder {
        public static final int ACL_FIELD_NUMBER = 4;
        public static final int BUCKET_FIELD_NUMBER = 1;
        public static final int OBJECTKEY_FIELD_NUMBER = 2;
        public static Parser<FileInfo> PARSER = new AbstractParser<FileInfo>() {
            public FileInfo parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new FileInfo(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int URL_FIELD_NUMBER = 3;
        private static final FileInfo defaultInstance = new FileInfo(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public Object acl_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public Object bucket_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public Object objectKey_;
        private final UnknownFieldSet unknownFields;
        /* access modifiers changed from: private */
        public Object url_;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements FileInfoOrBuilder {
            private Object acl_;
            private int bitField0_;
            private Object bucket_;
            private Object objectKey_;
            private Object url_;

            public static final Descriptor getDescriptor() {
                return BCKS3.internal_static_com_mi_mimsgsdk_proto_FileInfo_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return BCKS3.internal_static_com_mi_mimsgsdk_proto_FileInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(FileInfo.class, Builder.class);
            }

            private Builder() {
                this.bucket_ = "";
                this.objectKey_ = "";
                this.url_ = "";
                this.acl_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.bucket_ = "";
                this.objectKey_ = "";
                this.url_ = "";
                this.acl_ = "";
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (FileInfo.alwaysUseFieldBuilders) {
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.bucket_ = "";
                this.bitField0_ &= -2;
                this.objectKey_ = "";
                this.bitField0_ &= -3;
                this.url_ = "";
                this.bitField0_ &= -5;
                this.acl_ = "";
                this.bitField0_ &= -9;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return BCKS3.internal_static_com_mi_mimsgsdk_proto_FileInfo_descriptor;
            }

            public FileInfo getDefaultInstanceForType() {
                return FileInfo.getDefaultInstance();
            }

            public FileInfo build() {
                FileInfo buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public FileInfo buildPartial() {
                int i = 1;
                FileInfo fileInfo = new FileInfo((com.google.protobuf.GeneratedMessage.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                fileInfo.bucket_ = this.bucket_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                fileInfo.objectKey_ = this.objectKey_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                fileInfo.url_ = this.url_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                fileInfo.acl_ = this.acl_;
                fileInfo.bitField0_ = i;
                onBuilt();
                return fileInfo;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof FileInfo) {
                    return mergeFrom((FileInfo) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(FileInfo fileInfo) {
                if (fileInfo != FileInfo.getDefaultInstance()) {
                    if (fileInfo.hasBucket()) {
                        this.bitField0_ |= 1;
                        this.bucket_ = fileInfo.bucket_;
                        onChanged();
                    }
                    if (fileInfo.hasObjectKey()) {
                        this.bitField0_ |= 2;
                        this.objectKey_ = fileInfo.objectKey_;
                        onChanged();
                    }
                    if (fileInfo.hasUrl()) {
                        this.bitField0_ |= 4;
                        this.url_ = fileInfo.url_;
                        onChanged();
                    }
                    if (fileInfo.hasAcl()) {
                        this.bitField0_ |= 8;
                        this.acl_ = fileInfo.acl_;
                        onChanged();
                    }
                    mergeUnknownFields(fileInfo.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasBucket() && hasObjectKey() && hasUrl() && hasAcl()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                FileInfo fileInfo;
                FileInfo fileInfo2;
                try {
                    FileInfo fileInfo3 = (FileInfo) FileInfo.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (fileInfo3 != null) {
                        mergeFrom(fileInfo3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    fileInfo2 = (FileInfo) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    fileInfo = fileInfo2;
                    th = th2;
                }
                if (fileInfo != null) {
                    mergeFrom(fileInfo);
                }
                throw th;
            }

            public boolean hasBucket() {
                return (this.bitField0_ & 1) == 1;
            }

            public String getBucket() {
                Object obj = this.bucket_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.bucket_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getBucketBytes() {
                Object obj = this.bucket_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.bucket_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setBucket(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.bucket_ = str;
                onChanged();
                return this;
            }

            public Builder clearBucket() {
                this.bitField0_ &= -2;
                this.bucket_ = FileInfo.getDefaultInstance().getBucket();
                onChanged();
                return this;
            }

            public Builder setBucketBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.bucket_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasObjectKey() {
                return (this.bitField0_ & 2) == 2;
            }

            public String getObjectKey() {
                Object obj = this.objectKey_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.objectKey_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getObjectKeyBytes() {
                Object obj = this.objectKey_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.objectKey_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setObjectKey(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.objectKey_ = str;
                onChanged();
                return this;
            }

            public Builder clearObjectKey() {
                this.bitField0_ &= -3;
                this.objectKey_ = FileInfo.getDefaultInstance().getObjectKey();
                onChanged();
                return this;
            }

            public Builder setObjectKeyBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.objectKey_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasUrl() {
                return (this.bitField0_ & 4) == 4;
            }

            public String getUrl() {
                Object obj = this.url_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.url_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getUrlBytes() {
                Object obj = this.url_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.url_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setUrl(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.url_ = str;
                onChanged();
                return this;
            }

            public Builder clearUrl() {
                this.bitField0_ &= -5;
                this.url_ = FileInfo.getDefaultInstance().getUrl();
                onChanged();
                return this;
            }

            public Builder setUrlBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.url_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasAcl() {
                return (this.bitField0_ & 8) == 8;
            }

            public String getAcl() {
                Object obj = this.acl_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.acl_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getAclBytes() {
                Object obj = this.acl_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.acl_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setAcl(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.acl_ = str;
                onChanged();
                return this;
            }

            public Builder clearAcl() {
                this.bitField0_ &= -9;
                this.acl_ = FileInfo.getDefaultInstance().getAcl();
                onChanged();
                return this;
            }

            public Builder setAclBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.acl_ = byteString;
                onChanged();
                return this;
            }
        }

        private FileInfo(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private FileInfo(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static FileInfo getDefaultInstance() {
            return defaultInstance;
        }

        public FileInfo getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private FileInfo(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.bucket_ = readBytes;
                            break;
                        case 18:
                            ByteString readBytes2 = codedInputStream.readBytes();
                            this.bitField0_ |= 2;
                            this.objectKey_ = readBytes2;
                            break;
                        case 26:
                            ByteString readBytes3 = codedInputStream.readBytes();
                            this.bitField0_ |= 4;
                            this.url_ = readBytes3;
                            break;
                        case 34:
                            ByteString readBytes4 = codedInputStream.readBytes();
                            this.bitField0_ |= 8;
                            this.acl_ = readBytes4;
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
            return BCKS3.internal_static_com_mi_mimsgsdk_proto_FileInfo_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return BCKS3.internal_static_com_mi_mimsgsdk_proto_FileInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(FileInfo.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<FileInfo> getParserForType() {
            return PARSER;
        }

        public boolean hasBucket() {
            return (this.bitField0_ & 1) == 1;
        }

        public String getBucket() {
            Object obj = this.bucket_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.bucket_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getBucketBytes() {
            Object obj = this.bucket_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.bucket_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasObjectKey() {
            return (this.bitField0_ & 2) == 2;
        }

        public String getObjectKey() {
            Object obj = this.objectKey_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.objectKey_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getObjectKeyBytes() {
            Object obj = this.objectKey_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.objectKey_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasUrl() {
            return (this.bitField0_ & 4) == 4;
        }

        public String getUrl() {
            Object obj = this.url_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.url_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getUrlBytes() {
            Object obj = this.url_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.url_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasAcl() {
            return (this.bitField0_ & 8) == 8;
        }

        public String getAcl() {
            Object obj = this.acl_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.acl_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getAclBytes() {
            Object obj = this.acl_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.acl_ = copyFromUtf8;
            return copyFromUtf8;
        }

        private void initFields() {
            this.bucket_ = "";
            this.objectKey_ = "";
            this.url_ = "";
            this.acl_ = "";
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasBucket()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasObjectKey()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasUrl()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasAcl()) {
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
                codedOutputStream.writeBytes(1, getBucketBytes());
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeBytes(2, getObjectKeyBytes());
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBytes(3, getUrlBytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeBytes(4, getAclBytes());
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
                i2 = 0 + CodedOutputStream.computeBytesSize(1, getBucketBytes());
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeBytesSize(2, getObjectKeyBytes());
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeBytesSize(3, getUrlBytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeBytesSize(4, getAclBytes());
            }
            int serializedSize = i2 + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static FileInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (FileInfo) PARSER.parseFrom(byteString);
        }

        public static FileInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (FileInfo) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static FileInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (FileInfo) PARSER.parseFrom(bArr);
        }

        public static FileInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (FileInfo) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static FileInfo parseFrom(InputStream inputStream) throws IOException {
            return (FileInfo) PARSER.parseFrom(inputStream);
        }

        public static FileInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (FileInfo) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static FileInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (FileInfo) PARSER.parseDelimitedFrom(inputStream);
        }

        public static FileInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (FileInfo) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static FileInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (FileInfo) PARSER.parseFrom(codedInputStream);
        }

        public static FileInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (FileInfo) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(FileInfo fileInfo) {
            return newBuilder().mergeFrom(fileInfo);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface FileInfoOrBuilder extends MessageOrBuilder {
        String getAcl();

        ByteString getAclBytes();

        String getBucket();

        ByteString getBucketBytes();

        String getObjectKey();

        ByteString getObjectKeyBytes();

        String getUrl();

        ByteString getUrlBytes();

        boolean hasAcl();

        boolean hasBucket();

        boolean hasObjectKey();

        boolean hasUrl();
    }

    public static final class ReuseRequest extends GeneratedMessage implements ReuseRequestOrBuilder {
        public static final int CONTENTMD5_FIELD_NUMBER = 2;
        public static final int FILEINFO_FIELD_NUMBER = 3;
        public static Parser<ReuseRequest> PARSER = new AbstractParser<ReuseRequest>() {
            public ReuseRequest parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new ReuseRequest(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int RID_FIELD_NUMBER = 1;
        private static final ReuseRequest defaultInstance = new ReuseRequest(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public Object contentMd5_;
        /* access modifiers changed from: private */
        public FileInfo fileInfo_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public long rid_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements ReuseRequestOrBuilder {
            private int bitField0_;
            private Object contentMd5_;
            private SingleFieldBuilder<FileInfo, Builder, FileInfoOrBuilder> fileInfoBuilder_;
            private FileInfo fileInfo_;
            private long rid_;

            public static final Descriptor getDescriptor() {
                return BCKS3.internal_static_com_mi_mimsgsdk_proto_ReuseRequest_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return BCKS3.internal_static_com_mi_mimsgsdk_proto_ReuseRequest_fieldAccessorTable.ensureFieldAccessorsInitialized(ReuseRequest.class, Builder.class);
            }

            private Builder() {
                this.contentMd5_ = "";
                this.fileInfo_ = FileInfo.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.contentMd5_ = "";
                this.fileInfo_ = FileInfo.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (ReuseRequest.alwaysUseFieldBuilders) {
                    getFileInfoFieldBuilder();
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.rid_ = 0;
                this.bitField0_ &= -2;
                this.contentMd5_ = "";
                this.bitField0_ &= -3;
                if (this.fileInfoBuilder_ == null) {
                    this.fileInfo_ = FileInfo.getDefaultInstance();
                } else {
                    this.fileInfoBuilder_.clear();
                }
                this.bitField0_ &= -5;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return BCKS3.internal_static_com_mi_mimsgsdk_proto_ReuseRequest_descriptor;
            }

            public ReuseRequest getDefaultInstanceForType() {
                return ReuseRequest.getDefaultInstance();
            }

            public ReuseRequest build() {
                ReuseRequest buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public ReuseRequest buildPartial() {
                int i;
                int i2 = 1;
                ReuseRequest reuseRequest = new ReuseRequest((com.google.protobuf.GeneratedMessage.Builder) this);
                int i3 = this.bitField0_;
                if ((i3 & 1) != 1) {
                    i2 = 0;
                }
                reuseRequest.rid_ = this.rid_;
                if ((i3 & 2) == 2) {
                    i2 |= 2;
                }
                reuseRequest.contentMd5_ = this.contentMd5_;
                if ((i3 & 4) == 4) {
                    i = i2 | 4;
                } else {
                    i = i2;
                }
                if (this.fileInfoBuilder_ == null) {
                    reuseRequest.fileInfo_ = this.fileInfo_;
                } else {
                    reuseRequest.fileInfo_ = (FileInfo) this.fileInfoBuilder_.build();
                }
                reuseRequest.bitField0_ = i;
                onBuilt();
                return reuseRequest;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof ReuseRequest) {
                    return mergeFrom((ReuseRequest) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(ReuseRequest reuseRequest) {
                if (reuseRequest != ReuseRequest.getDefaultInstance()) {
                    if (reuseRequest.hasRid()) {
                        setRid(reuseRequest.getRid());
                    }
                    if (reuseRequest.hasContentMd5()) {
                        this.bitField0_ |= 2;
                        this.contentMd5_ = reuseRequest.contentMd5_;
                        onChanged();
                    }
                    if (reuseRequest.hasFileInfo()) {
                        mergeFileInfo(reuseRequest.getFileInfo());
                    }
                    mergeUnknownFields(reuseRequest.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasRid() && hasContentMd5() && hasFileInfo() && getFileInfo().isInitialized()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                ReuseRequest reuseRequest;
                ReuseRequest reuseRequest2;
                try {
                    ReuseRequest reuseRequest3 = (ReuseRequest) ReuseRequest.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (reuseRequest3 != null) {
                        mergeFrom(reuseRequest3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    reuseRequest2 = (ReuseRequest) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    reuseRequest = reuseRequest2;
                    th = th2;
                }
                if (reuseRequest != null) {
                    mergeFrom(reuseRequest);
                }
                throw th;
            }

            public boolean hasRid() {
                return (this.bitField0_ & 1) == 1;
            }

            public long getRid() {
                return this.rid_;
            }

            public Builder setRid(long j) {
                this.bitField0_ |= 1;
                this.rid_ = j;
                onChanged();
                return this;
            }

            public Builder clearRid() {
                this.bitField0_ &= -2;
                this.rid_ = 0;
                onChanged();
                return this;
            }

            public boolean hasContentMd5() {
                return (this.bitField0_ & 2) == 2;
            }

            public String getContentMd5() {
                Object obj = this.contentMd5_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.contentMd5_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getContentMd5Bytes() {
                Object obj = this.contentMd5_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.contentMd5_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setContentMd5(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.contentMd5_ = str;
                onChanged();
                return this;
            }

            public Builder clearContentMd5() {
                this.bitField0_ &= -3;
                this.contentMd5_ = ReuseRequest.getDefaultInstance().getContentMd5();
                onChanged();
                return this;
            }

            public Builder setContentMd5Bytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.contentMd5_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasFileInfo() {
                return (this.bitField0_ & 4) == 4;
            }

            public FileInfo getFileInfo() {
                if (this.fileInfoBuilder_ == null) {
                    return this.fileInfo_;
                }
                return (FileInfo) this.fileInfoBuilder_.getMessage();
            }

            public Builder setFileInfo(FileInfo fileInfo) {
                if (this.fileInfoBuilder_ != null) {
                    this.fileInfoBuilder_.setMessage(fileInfo);
                } else if (fileInfo == null) {
                    throw new NullPointerException();
                } else {
                    this.fileInfo_ = fileInfo;
                    onChanged();
                }
                this.bitField0_ |= 4;
                return this;
            }

            public Builder setFileInfo(Builder builder) {
                if (this.fileInfoBuilder_ == null) {
                    this.fileInfo_ = builder.build();
                    onChanged();
                } else {
                    this.fileInfoBuilder_.setMessage(builder.build());
                }
                this.bitField0_ |= 4;
                return this;
            }

            public Builder mergeFileInfo(FileInfo fileInfo) {
                if (this.fileInfoBuilder_ == null) {
                    if ((this.bitField0_ & 4) != 4 || this.fileInfo_ == FileInfo.getDefaultInstance()) {
                        this.fileInfo_ = fileInfo;
                    } else {
                        this.fileInfo_ = FileInfo.newBuilder(this.fileInfo_).mergeFrom(fileInfo).buildPartial();
                    }
                    onChanged();
                } else {
                    this.fileInfoBuilder_.mergeFrom(fileInfo);
                }
                this.bitField0_ |= 4;
                return this;
            }

            public Builder clearFileInfo() {
                if (this.fileInfoBuilder_ == null) {
                    this.fileInfo_ = FileInfo.getDefaultInstance();
                    onChanged();
                } else {
                    this.fileInfoBuilder_.clear();
                }
                this.bitField0_ &= -5;
                return this;
            }

            public Builder getFileInfoBuilder() {
                this.bitField0_ |= 4;
                onChanged();
                return (Builder) getFileInfoFieldBuilder().getBuilder();
            }

            public FileInfoOrBuilder getFileInfoOrBuilder() {
                if (this.fileInfoBuilder_ != null) {
                    return (FileInfoOrBuilder) this.fileInfoBuilder_.getMessageOrBuilder();
                }
                return this.fileInfo_;
            }

            private SingleFieldBuilder<FileInfo, Builder, FileInfoOrBuilder> getFileInfoFieldBuilder() {
                if (this.fileInfoBuilder_ == null) {
                    this.fileInfoBuilder_ = new SingleFieldBuilder<>(getFileInfo(), getParentForChildren(), isClean());
                    this.fileInfo_ = null;
                }
                return this.fileInfoBuilder_;
            }
        }

        private ReuseRequest(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private ReuseRequest(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static ReuseRequest getDefaultInstance() {
            return defaultInstance;
        }

        public ReuseRequest getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private ReuseRequest(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.rid_ = codedInputStream.readUInt64();
                            z = z2;
                            break;
                        case 18:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 2;
                            this.contentMd5_ = readBytes;
                            z = z2;
                            break;
                        case 26:
                            if ((this.bitField0_ & 4) == 4) {
                                builder = this.fileInfo_.toBuilder();
                            } else {
                                builder = null;
                            }
                            this.fileInfo_ = (FileInfo) codedInputStream.readMessage(FileInfo.PARSER, extensionRegistryLite);
                            if (builder != null) {
                                builder.mergeFrom(this.fileInfo_);
                                this.fileInfo_ = builder.buildPartial();
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
            return BCKS3.internal_static_com_mi_mimsgsdk_proto_ReuseRequest_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return BCKS3.internal_static_com_mi_mimsgsdk_proto_ReuseRequest_fieldAccessorTable.ensureFieldAccessorsInitialized(ReuseRequest.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<ReuseRequest> getParserForType() {
            return PARSER;
        }

        public boolean hasRid() {
            return (this.bitField0_ & 1) == 1;
        }

        public long getRid() {
            return this.rid_;
        }

        public boolean hasContentMd5() {
            return (this.bitField0_ & 2) == 2;
        }

        public String getContentMd5() {
            Object obj = this.contentMd5_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.contentMd5_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getContentMd5Bytes() {
            Object obj = this.contentMd5_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.contentMd5_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasFileInfo() {
            return (this.bitField0_ & 4) == 4;
        }

        public FileInfo getFileInfo() {
            return this.fileInfo_;
        }

        public FileInfoOrBuilder getFileInfoOrBuilder() {
            return this.fileInfo_;
        }

        private void initFields() {
            this.rid_ = 0;
            this.contentMd5_ = "";
            this.fileInfo_ = FileInfo.getDefaultInstance();
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasRid()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasContentMd5()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasFileInfo()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!getFileInfo().isInitialized()) {
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
                codedOutputStream.writeUInt64(1, this.rid_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeBytes(2, getContentMd5Bytes());
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeMessage(3, this.fileInfo_);
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
                i2 = 0 + CodedOutputStream.computeUInt64Size(1, this.rid_);
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeBytesSize(2, getContentMd5Bytes());
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeMessageSize(3, this.fileInfo_);
            }
            int serializedSize = i2 + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static ReuseRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (ReuseRequest) PARSER.parseFrom(byteString);
        }

        public static ReuseRequest parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (ReuseRequest) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static ReuseRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (ReuseRequest) PARSER.parseFrom(bArr);
        }

        public static ReuseRequest parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (ReuseRequest) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static ReuseRequest parseFrom(InputStream inputStream) throws IOException {
            return (ReuseRequest) PARSER.parseFrom(inputStream);
        }

        public static ReuseRequest parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ReuseRequest) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static ReuseRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (ReuseRequest) PARSER.parseDelimitedFrom(inputStream);
        }

        public static ReuseRequest parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ReuseRequest) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static ReuseRequest parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (ReuseRequest) PARSER.parseFrom(codedInputStream);
        }

        public static ReuseRequest parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ReuseRequest) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(ReuseRequest reuseRequest) {
            return newBuilder().mergeFrom(reuseRequest);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface ReuseRequestOrBuilder extends MessageOrBuilder {
        String getContentMd5();

        ByteString getContentMd5Bytes();

        FileInfo getFileInfo();

        FileInfoOrBuilder getFileInfoOrBuilder();

        long getRid();

        boolean hasContentMd5();

        boolean hasFileInfo();

        boolean hasRid();
    }

    public static final class ReuseResponse extends GeneratedMessage implements ReuseResponseOrBuilder {
        public static final int ERRORCODE_FIELD_NUMBER = 2;
        public static final int ERRORMSG_FIELD_NUMBER = 3;
        public static Parser<ReuseResponse> PARSER = new AbstractParser<ReuseResponse>() {
            public ReuseResponse parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new ReuseResponse(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int RID_FIELD_NUMBER = 1;
        private static final ReuseResponse defaultInstance = new ReuseResponse(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public int errorCode_;
        /* access modifiers changed from: private */
        public Object errorMsg_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public long rid_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements ReuseResponseOrBuilder {
            private int bitField0_;
            private int errorCode_;
            private Object errorMsg_;
            private long rid_;

            public static final Descriptor getDescriptor() {
                return BCKS3.internal_static_com_mi_mimsgsdk_proto_ReuseResponse_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return BCKS3.internal_static_com_mi_mimsgsdk_proto_ReuseResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(ReuseResponse.class, Builder.class);
            }

            private Builder() {
                this.errorMsg_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.errorMsg_ = "";
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (ReuseResponse.alwaysUseFieldBuilders) {
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.rid_ = 0;
                this.bitField0_ &= -2;
                this.errorCode_ = 0;
                this.bitField0_ &= -3;
                this.errorMsg_ = "";
                this.bitField0_ &= -5;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return BCKS3.internal_static_com_mi_mimsgsdk_proto_ReuseResponse_descriptor;
            }

            public ReuseResponse getDefaultInstanceForType() {
                return ReuseResponse.getDefaultInstance();
            }

            public ReuseResponse build() {
                ReuseResponse buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public ReuseResponse buildPartial() {
                int i = 1;
                ReuseResponse reuseResponse = new ReuseResponse((com.google.protobuf.GeneratedMessage.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                reuseResponse.rid_ = this.rid_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                reuseResponse.errorCode_ = this.errorCode_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                reuseResponse.errorMsg_ = this.errorMsg_;
                reuseResponse.bitField0_ = i;
                onBuilt();
                return reuseResponse;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof ReuseResponse) {
                    return mergeFrom((ReuseResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(ReuseResponse reuseResponse) {
                if (reuseResponse != ReuseResponse.getDefaultInstance()) {
                    if (reuseResponse.hasRid()) {
                        setRid(reuseResponse.getRid());
                    }
                    if (reuseResponse.hasErrorCode()) {
                        setErrorCode(reuseResponse.getErrorCode());
                    }
                    if (reuseResponse.hasErrorMsg()) {
                        this.bitField0_ |= 4;
                        this.errorMsg_ = reuseResponse.errorMsg_;
                        onChanged();
                    }
                    mergeUnknownFields(reuseResponse.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasRid() && hasErrorCode()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                ReuseResponse reuseResponse;
                ReuseResponse reuseResponse2;
                try {
                    ReuseResponse reuseResponse3 = (ReuseResponse) ReuseResponse.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (reuseResponse3 != null) {
                        mergeFrom(reuseResponse3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    reuseResponse2 = (ReuseResponse) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    reuseResponse = reuseResponse2;
                    th = th2;
                }
                if (reuseResponse != null) {
                    mergeFrom(reuseResponse);
                }
                throw th;
            }

            public boolean hasRid() {
                return (this.bitField0_ & 1) == 1;
            }

            public long getRid() {
                return this.rid_;
            }

            public Builder setRid(long j) {
                this.bitField0_ |= 1;
                this.rid_ = j;
                onChanged();
                return this;
            }

            public Builder clearRid() {
                this.bitField0_ &= -2;
                this.rid_ = 0;
                onChanged();
                return this;
            }

            public boolean hasErrorCode() {
                return (this.bitField0_ & 2) == 2;
            }

            public int getErrorCode() {
                return this.errorCode_;
            }

            public Builder setErrorCode(int i) {
                this.bitField0_ |= 2;
                this.errorCode_ = i;
                onChanged();
                return this;
            }

            public Builder clearErrorCode() {
                this.bitField0_ &= -3;
                this.errorCode_ = 0;
                onChanged();
                return this;
            }

            public boolean hasErrorMsg() {
                return (this.bitField0_ & 4) == 4;
            }

            public String getErrorMsg() {
                Object obj = this.errorMsg_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.errorMsg_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getErrorMsgBytes() {
                Object obj = this.errorMsg_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.errorMsg_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setErrorMsg(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.errorMsg_ = str;
                onChanged();
                return this;
            }

            public Builder clearErrorMsg() {
                this.bitField0_ &= -5;
                this.errorMsg_ = ReuseResponse.getDefaultInstance().getErrorMsg();
                onChanged();
                return this;
            }

            public Builder setErrorMsgBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.errorMsg_ = byteString;
                onChanged();
                return this;
            }
        }

        private ReuseResponse(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private ReuseResponse(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static ReuseResponse getDefaultInstance() {
            return defaultInstance;
        }

        public ReuseResponse getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private ReuseResponse(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.rid_ = codedInputStream.readUInt64();
                            break;
                        case 16:
                            this.bitField0_ |= 2;
                            this.errorCode_ = codedInputStream.readUInt32();
                            break;
                        case 26:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 4;
                            this.errorMsg_ = readBytes;
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
            return BCKS3.internal_static_com_mi_mimsgsdk_proto_ReuseResponse_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return BCKS3.internal_static_com_mi_mimsgsdk_proto_ReuseResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(ReuseResponse.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<ReuseResponse> getParserForType() {
            return PARSER;
        }

        public boolean hasRid() {
            return (this.bitField0_ & 1) == 1;
        }

        public long getRid() {
            return this.rid_;
        }

        public boolean hasErrorCode() {
            return (this.bitField0_ & 2) == 2;
        }

        public int getErrorCode() {
            return this.errorCode_;
        }

        public boolean hasErrorMsg() {
            return (this.bitField0_ & 4) == 4;
        }

        public String getErrorMsg() {
            Object obj = this.errorMsg_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.errorMsg_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getErrorMsgBytes() {
            Object obj = this.errorMsg_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.errorMsg_ = copyFromUtf8;
            return copyFromUtf8;
        }

        private void initFields() {
            this.rid_ = 0;
            this.errorCode_ = 0;
            this.errorMsg_ = "";
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasRid()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasErrorCode()) {
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
                codedOutputStream.writeUInt64(1, this.rid_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeUInt32(2, this.errorCode_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBytes(3, getErrorMsgBytes());
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
                i2 = 0 + CodedOutputStream.computeUInt64Size(1, this.rid_);
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeUInt32Size(2, this.errorCode_);
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeBytesSize(3, getErrorMsgBytes());
            }
            int serializedSize = i2 + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static ReuseResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (ReuseResponse) PARSER.parseFrom(byteString);
        }

        public static ReuseResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (ReuseResponse) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static ReuseResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (ReuseResponse) PARSER.parseFrom(bArr);
        }

        public static ReuseResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (ReuseResponse) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static ReuseResponse parseFrom(InputStream inputStream) throws IOException {
            return (ReuseResponse) PARSER.parseFrom(inputStream);
        }

        public static ReuseResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ReuseResponse) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static ReuseResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (ReuseResponse) PARSER.parseDelimitedFrom(inputStream);
        }

        public static ReuseResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ReuseResponse) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static ReuseResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (ReuseResponse) PARSER.parseFrom(codedInputStream);
        }

        public static ReuseResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ReuseResponse) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(ReuseResponse reuseResponse) {
            return newBuilder().mergeFrom(reuseResponse);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface ReuseResponseOrBuilder extends MessageOrBuilder {
        int getErrorCode();

        String getErrorMsg();

        ByteString getErrorMsgBytes();

        long getRid();

        boolean hasErrorCode();

        boolean hasErrorMsg();

        boolean hasRid();
    }

    private BCKS3() {
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
    }

    public static FileDescriptor getDescriptor() {
        return descriptor;
    }

    static {
        FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\u000bBCKS3.proto\u0012\u0015com.mi.mimsgsdk.proto\"Û\u0001\n\u000bAuthRequest\u0012\u000b\n\u0003rid\u0018\u0001 \u0002(\u0004\u0012\u0010\n\bhttpVerb\u0018\u0002 \u0002(\t\u0012\u0012\n\ncontentMd5\u0018\u0003 \u0002(\t\u0012\u0013\n\u000bcontentType\u0018\u0004 \u0002(\t\u0012\f\n\u0004date\u0018\u0005 \u0002(\t\u0012\u001c\n\u0014canonicalizedHeaders\u0018\u0006 \u0002(\t\u0012\u000e\n\u0006suffix\u0018\u0007 \u0002(\t\u0012:\n\bauthType\u0018\b \u0001(\u000e2\u001f.com.mi.mimsgsdk.proto.AuthType:\u0007DEFAULT\u0012\f\n\u0004vuid\u0018\t \u0001(\u0004\"ª\u0001\n\fAuthResponse\u0012\u000b\n\u0003rid\u0018\u0001 \u0002(\u0004\u0012\u0011\n\terrorCode\u0018\u0002 \u0002(\r\u0012\u0010\n\breusable\u0018\u0003 \u0001(\b\u0012\u0015\n\rauthorization\u0018\u0004 \u0001(\t\u00121\n\bfileInfo\u0018\u0005 \u0001(\u000b2\u001f.com.mi.mimsgsdk.proto.FileInfo\u0012", "\u0010\n\berrorMsg\u0018\u0006 \u0001(\t\u0012\f\n\u0004date\u0018\u0007 \u0001(\t\"b\n\fReuseRequest\u0012\u000b\n\u0003rid\u0018\u0001 \u0002(\u0004\u0012\u0012\n\ncontentMd5\u0018\u0002 \u0002(\t\u00121\n\bfileInfo\u0018\u0003 \u0002(\u000b2\u001f.com.mi.mimsgsdk.proto.FileInfo\"A\n\rReuseResponse\u0012\u000b\n\u0003rid\u0018\u0001 \u0002(\u0004\u0012\u0011\n\terrorCode\u0018\u0002 \u0002(\r\u0012\u0010\n\berrorMsg\u0018\u0003 \u0001(\t\"G\n\bFileInfo\u0012\u000e\n\u0006bucket\u0018\u0001 \u0002(\t\u0012\u0011\n\tobjectKey\u0018\u0002 \u0002(\t\u0012\u000b\n\u0003url\u0018\u0003 \u0002(\t\u0012\u000b\n\u0003acl\u0018\u0004 \u0002(\t*!\n\bAuthType\u0012\u000b\n\u0007DEFAULT\u0010\u0000\u0012\b\n\u0004HEAD\u0010\u0001"}, new FileDescriptor[0], new InternalDescriptorAssigner() {
            public ExtensionRegistry assignDescriptors(FileDescriptor fileDescriptor) {
                BCKS3.descriptor = fileDescriptor;
                return null;
            }
        });
    }
}
