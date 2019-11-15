package com.google.protobuf;

import com.google.protobuf.Descriptors.Descriptor;
import com.google.protobuf.Descriptors.EnumValueDescriptor;
import com.google.protobuf.Descriptors.FieldDescriptor;
import com.google.protobuf.Descriptors.FieldDescriptor.JavaType;
import com.google.protobuf.Descriptors.FieldDescriptor.Type;
import com.google.protobuf.ExtensionRegistry.ExtensionInfo;
import com.google.protobuf.Message.Builder;
import com.google.protobuf.UnknownFieldSet.Field;
import com.ifengyu.im.utils.pinyin.HanziToPinyin3.Token;
import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;
import com.mi.milinkforgame.sdk.data.Error;
import com.tencent.bugly.mimsg.Bugly;
import com.xiaomi.mipush.sdk.Constants;
import java.io.IOException;
import java.math.BigInteger;
import java.nio.CharBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Map.Entry;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.jboss.netty.handler.codec.http.HttpConstants;

public final class TextFormat {
    private static final Printer DEFAULT_PRINTER = new Printer();
    private static final Parser PARSER = Parser.newBuilder().build();
    private static final Printer SINGLE_LINE_PRINTER = new Printer().setSingleLineMode(true);
    private static final Printer UNICODE_PRINTER = new Printer().setEscapeNonAscii(false);
    /* access modifiers changed from: private */
    public static final Logger logger = Logger.getLogger(TextFormat.class.getName());

    private interface ByteSequence {
        byte byteAt(int i);

        int size();
    }

    static class InvalidEscapeSequenceException extends IOException {
        private static final long serialVersionUID = -8164033650142593304L;

        InvalidEscapeSequenceException(String str) {
            super(str);
        }
    }

    public static class ParseException extends IOException {
        private static final long serialVersionUID = 3196188060225107702L;
        private final int column;
        private final int line;

        public ParseException(String str) {
            this(-1, -1, str);
        }

        public ParseException(int i, int i2, String str) {
            String valueOf = String.valueOf(String.valueOf(Integer.toString(i)));
            String valueOf2 = String.valueOf(String.valueOf(str));
            super(new StringBuilder(valueOf.length() + 14 + valueOf2.length()).append(valueOf).append(":").append(i2).append(": ").append(valueOf2).toString());
            this.line = i;
            this.column = i2;
        }

        public int getLine() {
            return this.line;
        }

        public int getColumn() {
            return this.column;
        }
    }

    public static class Parser {
        private static final int BUFFER_SIZE = 4096;
        private final boolean allowUnknownFields;
        private final SingularOverwritePolicy singularOverwritePolicy;

        public static class Builder {
            private boolean allowUnknownFields = false;
            private SingularOverwritePolicy singularOverwritePolicy = SingularOverwritePolicy.ALLOW_SINGULAR_OVERWRITES;

            public Builder setSingularOverwritePolicy(SingularOverwritePolicy singularOverwritePolicy2) {
                this.singularOverwritePolicy = singularOverwritePolicy2;
                return this;
            }

            public Parser build() {
                return new Parser(this.allowUnknownFields, this.singularOverwritePolicy);
            }
        }

        public enum SingularOverwritePolicy {
            ALLOW_SINGULAR_OVERWRITES,
            FORBID_SINGULAR_OVERWRITES
        }

        private Parser(boolean z, SingularOverwritePolicy singularOverwritePolicy2) {
            this.allowUnknownFields = z;
            this.singularOverwritePolicy = singularOverwritePolicy2;
        }

        public static Builder newBuilder() {
            return new Builder();
        }

        public void merge(Readable readable, com.google.protobuf.Message.Builder builder) throws IOException {
            merge(readable, ExtensionRegistry.getEmptyRegistry(), builder);
        }

        public void merge(CharSequence charSequence, com.google.protobuf.Message.Builder builder) throws ParseException {
            merge(charSequence, ExtensionRegistry.getEmptyRegistry(), builder);
        }

        public void merge(Readable readable, ExtensionRegistry extensionRegistry, com.google.protobuf.Message.Builder builder) throws IOException {
            merge((CharSequence) toStringBuilder(readable), extensionRegistry, builder);
        }

        private static StringBuilder toStringBuilder(Readable readable) throws IOException {
            StringBuilder sb = new StringBuilder();
            CharBuffer allocate = CharBuffer.allocate(4096);
            while (true) {
                int read = readable.read(allocate);
                if (read == -1) {
                    return sb;
                }
                allocate.flip();
                sb.append(allocate, 0, read);
            }
        }

        public void merge(CharSequence charSequence, ExtensionRegistry extensionRegistry, com.google.protobuf.Message.Builder builder) throws ParseException {
            Tokenizer tokenizer = new Tokenizer(charSequence);
            BuilderAdapter builderAdapter = new BuilderAdapter(builder);
            while (!tokenizer.atEnd()) {
                mergeField(tokenizer, extensionRegistry, builderAdapter);
            }
        }

        private void mergeField(Tokenizer tokenizer, ExtensionRegistry extensionRegistry, MergeTarget mergeTarget) throws ParseException {
            FieldDescriptor findFieldByName;
            ExtensionInfo extensionInfo;
            FieldDescriptor fieldDescriptor = null;
            Descriptor descriptorForType = mergeTarget.getDescriptorForType();
            if (tokenizer.tryConsume("[")) {
                StringBuilder sb = new StringBuilder(tokenizer.consumeIdentifier());
                while (tokenizer.tryConsume(".")) {
                    sb.append('.');
                    sb.append(tokenizer.consumeIdentifier());
                }
                extensionInfo = mergeTarget.findExtensionByName(extensionRegistry, sb.toString());
                if (extensionInfo == null) {
                    if (!this.allowUnknownFields) {
                        String valueOf = String.valueOf(String.valueOf(sb));
                        throw tokenizer.parseExceptionPreviousToken(new StringBuilder(valueOf.length() + 48).append("Extension \"").append(valueOf).append("\" not found in the ExtensionRegistry.").toString());
                    }
                    Logger access$1100 = TextFormat.logger;
                    String valueOf2 = String.valueOf(String.valueOf(sb));
                    access$1100.warning(new StringBuilder(valueOf2.length() + 48).append("Extension \"").append(valueOf2).append("\" not found in the ExtensionRegistry.").toString());
                } else if (extensionInfo.descriptor.getContainingType() != descriptorForType) {
                    String valueOf3 = String.valueOf(String.valueOf(sb));
                    String valueOf4 = String.valueOf(String.valueOf(descriptorForType.getFullName()));
                    throw tokenizer.parseExceptionPreviousToken(new StringBuilder(valueOf3.length() + 45 + valueOf4.length()).append("Extension \"").append(valueOf3).append("\" does not extend message type \"").append(valueOf4).append("\".").toString());
                } else {
                    fieldDescriptor = extensionInfo.descriptor;
                }
                tokenizer.consume("]");
                findFieldByName = fieldDescriptor;
            } else {
                String consumeIdentifier = tokenizer.consumeIdentifier();
                findFieldByName = descriptorForType.findFieldByName(consumeIdentifier);
                if (findFieldByName == null) {
                    findFieldByName = descriptorForType.findFieldByName(consumeIdentifier.toLowerCase(Locale.US));
                    if (!(findFieldByName == null || findFieldByName.getType() == Type.GROUP)) {
                        findFieldByName = null;
                    }
                }
                if (findFieldByName != null && findFieldByName.getType() == Type.GROUP && !findFieldByName.getMessageType().getName().equals(consumeIdentifier)) {
                    findFieldByName = null;
                }
                if (findFieldByName == null) {
                    if (!this.allowUnknownFields) {
                        String valueOf5 = String.valueOf(String.valueOf(descriptorForType.getFullName()));
                        String valueOf6 = String.valueOf(String.valueOf(consumeIdentifier));
                        throw tokenizer.parseExceptionPreviousToken(new StringBuilder(valueOf5.length() + 38 + valueOf6.length()).append("Message type \"").append(valueOf5).append("\" has no field named \"").append(valueOf6).append("\".").toString());
                    }
                    Logger access$11002 = TextFormat.logger;
                    String valueOf7 = String.valueOf(String.valueOf(descriptorForType.getFullName()));
                    String valueOf8 = String.valueOf(String.valueOf(consumeIdentifier));
                    access$11002.warning(new StringBuilder(valueOf7.length() + 38 + valueOf8.length()).append("Message type \"").append(valueOf7).append("\" has no field named \"").append(valueOf8).append("\".").toString());
                }
                extensionInfo = null;
            }
            if (findFieldByName != null) {
                if (findFieldByName.getJavaType() == JavaType.MESSAGE) {
                    tokenizer.tryConsume(":");
                } else {
                    tokenizer.consume(":");
                }
                if (!findFieldByName.isRepeated() || !tokenizer.tryConsume("[")) {
                    consumeFieldValue(tokenizer, extensionRegistry, mergeTarget, findFieldByName, extensionInfo);
                    return;
                }
                while (true) {
                    consumeFieldValue(tokenizer, extensionRegistry, mergeTarget, findFieldByName, extensionInfo);
                    if (!tokenizer.tryConsume("]")) {
                        tokenizer.consume(Constants.ACCEPT_TIME_SEPARATOR_SP);
                    } else {
                        return;
                    }
                }
            } else if (!tokenizer.tryConsume(":") || tokenizer.lookingAt("{") || tokenizer.lookingAt("<")) {
                skipFieldMessage(tokenizer);
            } else {
                skipFieldValue(tokenizer);
            }
        }

        /* JADX WARNING: type inference failed for: r0v0 */
        /* JADX WARNING: type inference failed for: r0v3, types: [com.google.protobuf.Descriptors$EnumValueDescriptor] */
        /* JADX WARNING: type inference failed for: r0v13, types: [com.google.protobuf.Descriptors$EnumValueDescriptor] */
        /* JADX WARNING: type inference failed for: r0v23, types: [com.google.protobuf.ByteString] */
        /* JADX WARNING: type inference failed for: r0v24, types: [java.lang.String] */
        /* JADX WARNING: type inference failed for: r0v26, types: [java.lang.Boolean] */
        /* JADX WARNING: type inference failed for: r0v28, types: [java.lang.Double] */
        /* JADX WARNING: type inference failed for: r0v30, types: [java.lang.Float] */
        /* JADX WARNING: type inference failed for: r0v32, types: [java.lang.Long] */
        /* JADX WARNING: type inference failed for: r0v34, types: [java.lang.Integer] */
        /* JADX WARNING: type inference failed for: r0v36, types: [java.lang.Long] */
        /* JADX WARNING: type inference failed for: r0v38, types: [java.lang.Integer] */
        /* JADX WARNING: type inference failed for: r0v39, types: [java.lang.Object] */
        /* JADX WARNING: type inference failed for: r0v55, types: [com.google.protobuf.Message] */
        /* JADX WARNING: type inference failed for: r0v56, types: [com.google.protobuf.Message] */
        /* JADX WARNING: type inference failed for: r0v58, types: [java.lang.Object] */
        /* JADX WARNING: type inference failed for: r0v65 */
        /* JADX WARNING: type inference failed for: r0v66 */
        /* JADX WARNING: type inference failed for: r0v67 */
        /* JADX WARNING: type inference failed for: r0v68 */
        /* JADX WARNING: type inference failed for: r0v69 */
        /* JADX WARNING: type inference failed for: r0v70 */
        /* JADX WARNING: type inference failed for: r0v71 */
        /* JADX WARNING: type inference failed for: r0v72 */
        /* JADX WARNING: type inference failed for: r0v73 */
        /* JADX WARNING: type inference failed for: r0v74 */
        /* JADX WARNING: type inference failed for: r0v75 */
        /* JADX WARNING: Multi-variable type inference failed. Error: jadx.core.utils.exceptions.JadxRuntimeException: No candidate types for var: r0v0
  assigns: [?[int, float, boolean, short, byte, char, OBJECT, ARRAY], com.google.protobuf.Descriptors$EnumValueDescriptor, java.lang.Object, com.google.protobuf.Message, com.google.protobuf.ByteString, java.lang.String, java.lang.Boolean, java.lang.Double, java.lang.Float, java.lang.Long, java.lang.Integer]
  uses: [java.lang.Object, ?[int, boolean, OBJECT, ARRAY, byte, short, char], com.google.protobuf.Message]
  mth insns count: 180
        	at jadx.core.dex.visitors.typeinference.TypeSearch.fillTypeCandidates(TypeSearch.java:237)
        	at java.util.ArrayList.forEach(Unknown Source)
        	at jadx.core.dex.visitors.typeinference.TypeSearch.run(TypeSearch.java:53)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runMultiVariableSearch(TypeInferenceVisitor.java:99)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:92)
        	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
        	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$1(DepthTraversal.java:14)
        	at java.util.ArrayList.forEach(Unknown Source)
        	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
        	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$0(DepthTraversal.java:13)
        	at java.util.ArrayList.forEach(Unknown Source)
        	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:13)
        	at jadx.core.ProcessClass.process(ProcessClass.java:30)
        	at jadx.core.ProcessClass.lambda$processDependencies$0(ProcessClass.java:49)
        	at java.util.ArrayList.forEach(Unknown Source)
        	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:49)
        	at jadx.core.ProcessClass.process(ProcessClass.java:35)
        	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:311)
        	at jadx.api.JavaClass.decompile(JavaClass.java:62)
        	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:217)
         */
        /* JADX WARNING: Unknown variable types count: 12 */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        private void consumeFieldValue(com.google.protobuf.TextFormat.Tokenizer r7, com.google.protobuf.ExtensionRegistry r8, com.google.protobuf.MessageReflection.MergeTarget r9, com.google.protobuf.Descriptors.FieldDescriptor r10, com.google.protobuf.ExtensionRegistry.ExtensionInfo r11) throws com.google.protobuf.TextFormat.ParseException {
            /*
                r6 = this;
                r0 = 0
                com.google.protobuf.Descriptors$FieldDescriptor$JavaType r1 = r10.getJavaType()
                com.google.protobuf.Descriptors$FieldDescriptor$JavaType r2 = com.google.protobuf.Descriptors.FieldDescriptor.JavaType.MESSAGE
                if (r1 != r2) goto L_0x006e
                java.lang.String r1 = "<"
                boolean r1 = r7.tryConsume(r1)
                if (r1 == 0) goto L_0x0051
                java.lang.String r1 = ">"
            L_0x0013:
                if (r11 != 0) goto L_0x0059
            L_0x0015:
                com.google.protobuf.MessageReflection$MergeTarget r0 = r9.newMergeTargetForField(r10, r0)
            L_0x0019:
                boolean r2 = r7.tryConsume(r1)
                if (r2 != 0) goto L_0x0060
                boolean r2 = r7.atEnd()
                if (r2 == 0) goto L_0x005c
                java.lang.String r0 = java.lang.String.valueOf(r1)
                java.lang.String r0 = java.lang.String.valueOf(r0)
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                int r2 = r0.length()
                int r2 = r2 + 12
                r1.<init>(r2)
                java.lang.String r2 = "Expected \""
                java.lang.StringBuilder r1 = r1.append(r2)
                java.lang.StringBuilder r0 = r1.append(r0)
                java.lang.String r1 = "\"."
                java.lang.StringBuilder r0 = r0.append(r1)
                java.lang.String r0 = r0.toString()
                com.google.protobuf.TextFormat$ParseException r0 = r7.parseException(r0)
                throw r0
            L_0x0051:
                java.lang.String r1 = "{"
                r7.consume(r1)
                java.lang.String r1 = "}"
                goto L_0x0013
            L_0x0059:
                com.google.protobuf.Message r0 = r11.defaultInstance
                goto L_0x0015
            L_0x005c:
                r6.mergeField(r7, r8, r0)
                goto L_0x0019
            L_0x0060:
                java.lang.Object r0 = r0.finish()
            L_0x0064:
                boolean r1 = r10.isRepeated()
                if (r1 == 0) goto L_0x016e
                r9.addRepeatedField(r10, r0)
            L_0x006d:
                return
            L_0x006e:
                int[] r1 = com.google.protobuf.TextFormat.AnonymousClass3.$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type
                com.google.protobuf.Descriptors$FieldDescriptor$Type r2 = r10.getType()
                int r2 = r2.ordinal()
                r1 = r1[r2]
                switch(r1) {
                    case 1: goto L_0x007e;
                    case 2: goto L_0x007e;
                    case 3: goto L_0x007e;
                    case 4: goto L_0x0087;
                    case 5: goto L_0x0087;
                    case 6: goto L_0x0087;
                    case 7: goto L_0x00b4;
                    case 8: goto L_0x00a2;
                    case 9: goto L_0x00ab;
                    case 10: goto L_0x0090;
                    case 11: goto L_0x0090;
                    case 12: goto L_0x0099;
                    case 13: goto L_0x0099;
                    case 14: goto L_0x00bd;
                    case 15: goto L_0x00c2;
                    case 16: goto L_0x00c7;
                    case 17: goto L_0x0166;
                    case 18: goto L_0x0166;
                    default: goto L_0x007d;
                }
            L_0x007d:
                goto L_0x0064
            L_0x007e:
                int r0 = r7.consumeInt32()
                java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
                goto L_0x0064
            L_0x0087:
                long r0 = r7.consumeInt64()
                java.lang.Long r0 = java.lang.Long.valueOf(r0)
                goto L_0x0064
            L_0x0090:
                int r0 = r7.consumeUInt32()
                java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
                goto L_0x0064
            L_0x0099:
                long r0 = r7.consumeUInt64()
                java.lang.Long r0 = java.lang.Long.valueOf(r0)
                goto L_0x0064
            L_0x00a2:
                float r0 = r7.consumeFloat()
                java.lang.Float r0 = java.lang.Float.valueOf(r0)
                goto L_0x0064
            L_0x00ab:
                double r0 = r7.consumeDouble()
                java.lang.Double r0 = java.lang.Double.valueOf(r0)
                goto L_0x0064
            L_0x00b4:
                boolean r0 = r7.consumeBoolean()
                java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
                goto L_0x0064
            L_0x00bd:
                java.lang.String r0 = r7.consumeString()
                goto L_0x0064
            L_0x00c2:
                com.google.protobuf.ByteString r0 = r7.consumeByteString()
                goto L_0x0064
            L_0x00c7:
                com.google.protobuf.Descriptors$EnumDescriptor r1 = r10.getEnumType()
                boolean r0 = r7.lookingAtInteger()
                if (r0 == 0) goto L_0x0115
                int r2 = r7.consumeInt32()
                com.google.protobuf.Descriptors$EnumValueDescriptor r0 = r1.findValueByNumber(r2)
                if (r0 != 0) goto L_0x0064
                java.lang.String r0 = r1.getFullName()
                java.lang.String r0 = java.lang.String.valueOf(r0)
                java.lang.String r0 = java.lang.String.valueOf(r0)
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                int r3 = r0.length()
                int r3 = r3 + 50
                r1.<init>(r3)
                java.lang.String r3 = "Enum type \""
                java.lang.StringBuilder r1 = r1.append(r3)
                java.lang.StringBuilder r0 = r1.append(r0)
                java.lang.String r1 = "\" has no value with number "
                java.lang.StringBuilder r0 = r0.append(r1)
                java.lang.StringBuilder r0 = r0.append(r2)
                java.lang.String r1 = "."
                java.lang.StringBuilder r0 = r0.append(r1)
                java.lang.String r0 = r0.toString()
                com.google.protobuf.TextFormat$ParseException r0 = r7.parseExceptionPreviousToken(r0)
                throw r0
            L_0x0115:
                java.lang.String r2 = r7.consumeIdentifier()
                com.google.protobuf.Descriptors$EnumValueDescriptor r0 = r1.findValueByName(r2)
                if (r0 != 0) goto L_0x0064
                java.lang.String r0 = r1.getFullName()
                java.lang.String r0 = java.lang.String.valueOf(r0)
                java.lang.String r0 = java.lang.String.valueOf(r0)
                java.lang.String r1 = java.lang.String.valueOf(r2)
                java.lang.String r1 = java.lang.String.valueOf(r1)
                java.lang.StringBuilder r2 = new java.lang.StringBuilder
                int r3 = r0.length()
                int r3 = r3 + 35
                int r4 = r1.length()
                int r3 = r3 + r4
                r2.<init>(r3)
                java.lang.String r3 = "Enum type \""
                java.lang.StringBuilder r2 = r2.append(r3)
                java.lang.StringBuilder r0 = r2.append(r0)
                java.lang.String r2 = "\" has no value named \""
                java.lang.StringBuilder r0 = r0.append(r2)
                java.lang.StringBuilder r0 = r0.append(r1)
                java.lang.String r1 = "\"."
                java.lang.StringBuilder r0 = r0.append(r1)
                java.lang.String r0 = r0.toString()
                com.google.protobuf.TextFormat$ParseException r0 = r7.parseExceptionPreviousToken(r0)
                throw r0
            L_0x0166:
                java.lang.RuntimeException r0 = new java.lang.RuntimeException
                java.lang.String r1 = "Can't get here."
                r0.<init>(r1)
                throw r0
            L_0x016e:
                com.google.protobuf.TextFormat$Parser$SingularOverwritePolicy r1 = r6.singularOverwritePolicy
                com.google.protobuf.TextFormat$Parser$SingularOverwritePolicy r2 = com.google.protobuf.TextFormat.Parser.SingularOverwritePolicy.FORBID_SINGULAR_OVERWRITES
                if (r1 != r2) goto L_0x01aa
                boolean r1 = r9.hasField(r10)
                if (r1 == 0) goto L_0x01aa
                java.lang.String r0 = r10.getFullName()
                java.lang.String r0 = java.lang.String.valueOf(r0)
                java.lang.String r0 = java.lang.String.valueOf(r0)
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                int r2 = r0.length()
                int r2 = r2 + 44
                r1.<init>(r2)
                java.lang.String r2 = "Non-repeated field \""
                java.lang.StringBuilder r1 = r1.append(r2)
                java.lang.StringBuilder r0 = r1.append(r0)
                java.lang.String r1 = "\" cannot be overwritten."
                java.lang.StringBuilder r0 = r0.append(r1)
                java.lang.String r0 = r0.toString()
                com.google.protobuf.TextFormat$ParseException r0 = r7.parseExceptionPreviousToken(r0)
                throw r0
            L_0x01aa:
                com.google.protobuf.TextFormat$Parser$SingularOverwritePolicy r1 = r6.singularOverwritePolicy
                com.google.protobuf.TextFormat$Parser$SingularOverwritePolicy r2 = com.google.protobuf.TextFormat.Parser.SingularOverwritePolicy.FORBID_SINGULAR_OVERWRITES
                if (r1 != r2) goto L_0x022e
                com.google.protobuf.Descriptors$OneofDescriptor r1 = r10.getContainingOneof()
                if (r1 == 0) goto L_0x022e
                com.google.protobuf.Descriptors$OneofDescriptor r1 = r10.getContainingOneof()
                boolean r1 = r9.hasOneof(r1)
                if (r1 == 0) goto L_0x022e
                com.google.protobuf.Descriptors$OneofDescriptor r0 = r10.getContainingOneof()
                java.lang.String r1 = r10.getFullName()
                java.lang.String r1 = java.lang.String.valueOf(r1)
                java.lang.String r1 = java.lang.String.valueOf(r1)
                com.google.protobuf.Descriptors$FieldDescriptor r2 = r9.getOneofFieldDescriptor(r0)
                java.lang.String r2 = r2.getFullName()
                java.lang.String r2 = java.lang.String.valueOf(r2)
                java.lang.String r2 = java.lang.String.valueOf(r2)
                java.lang.String r0 = r0.getName()
                java.lang.String r0 = java.lang.String.valueOf(r0)
                java.lang.String r0 = java.lang.String.valueOf(r0)
                java.lang.StringBuilder r3 = new java.lang.StringBuilder
                int r4 = r1.length()
                int r4 = r4 + 70
                int r5 = r2.length()
                int r4 = r4 + r5
                int r5 = r0.length()
                int r4 = r4 + r5
                r3.<init>(r4)
                java.lang.String r4 = "Field \""
                java.lang.StringBuilder r3 = r3.append(r4)
                java.lang.StringBuilder r1 = r3.append(r1)
                java.lang.String r3 = "\" is specified along with field \""
                java.lang.StringBuilder r1 = r1.append(r3)
                java.lang.StringBuilder r1 = r1.append(r2)
                java.lang.String r2 = "\", another member of oneof \""
                java.lang.StringBuilder r1 = r1.append(r2)
                java.lang.StringBuilder r0 = r1.append(r0)
                java.lang.String r1 = "\"."
                java.lang.StringBuilder r0 = r0.append(r1)
                java.lang.String r0 = r0.toString()
                com.google.protobuf.TextFormat$ParseException r0 = r7.parseExceptionPreviousToken(r0)
                throw r0
            L_0x022e:
                r9.setField(r10, r0)
                goto L_0x006d
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.TextFormat.Parser.consumeFieldValue(com.google.protobuf.TextFormat$Tokenizer, com.google.protobuf.ExtensionRegistry, com.google.protobuf.MessageReflection$MergeTarget, com.google.protobuf.Descriptors$FieldDescriptor, com.google.protobuf.ExtensionRegistry$ExtensionInfo):void");
        }

        private void skipField(Tokenizer tokenizer) throws ParseException {
            if (tokenizer.tryConsume("[")) {
                do {
                    tokenizer.consumeIdentifier();
                } while (tokenizer.tryConsume("."));
                tokenizer.consume("]");
            } else {
                tokenizer.consumeIdentifier();
            }
            if (!tokenizer.tryConsume(":") || tokenizer.lookingAt("<") || tokenizer.lookingAt("{")) {
                skipFieldMessage(tokenizer);
            } else {
                skipFieldValue(tokenizer);
            }
            if (!tokenizer.tryConsume(";")) {
                tokenizer.tryConsume(Constants.ACCEPT_TIME_SEPARATOR_SP);
            }
        }

        private void skipFieldMessage(Tokenizer tokenizer) throws ParseException {
            String str;
            if (tokenizer.tryConsume("<")) {
                str = ">";
            } else {
                tokenizer.consume("{");
                str = "}";
            }
            while (!tokenizer.lookingAt(">") && !tokenizer.lookingAt("}")) {
                skipField(tokenizer);
            }
            tokenizer.consume(str);
        }

        private void skipFieldValue(Tokenizer tokenizer) throws ParseException {
            if (tokenizer.tryConsumeString()) {
                do {
                } while (tokenizer.tryConsumeString());
            } else if (!tokenizer.tryConsumeIdentifier() && !tokenizer.tryConsumeInt64() && !tokenizer.tryConsumeUInt64() && !tokenizer.tryConsumeDouble() && !tokenizer.tryConsumeFloat()) {
                String str = "Invalid field value: ";
                String valueOf = String.valueOf(tokenizer.currentToken);
                throw tokenizer.parseException(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
            }
        }
    }

    private static final class Printer {
        boolean escapeNonAscii;
        boolean singleLineMode;

        private Printer() {
            this.singleLineMode = false;
            this.escapeNonAscii = true;
        }

        /* access modifiers changed from: private */
        public Printer setSingleLineMode(boolean z) {
            this.singleLineMode = z;
            return this;
        }

        /* access modifiers changed from: private */
        public Printer setEscapeNonAscii(boolean z) {
            this.escapeNonAscii = z;
            return this;
        }

        /* access modifiers changed from: private */
        public void print(MessageOrBuilder messageOrBuilder, TextGenerator textGenerator) throws IOException {
            for (Entry entry : messageOrBuilder.getAllFields().entrySet()) {
                printField((FieldDescriptor) entry.getKey(), entry.getValue(), textGenerator);
            }
            printUnknownFields(messageOrBuilder.getUnknownFields(), textGenerator);
        }

        /* access modifiers changed from: private */
        public void printField(FieldDescriptor fieldDescriptor, Object obj, TextGenerator textGenerator) throws IOException {
            if (fieldDescriptor.isRepeated()) {
                for (Object printSingleField : (List) obj) {
                    printSingleField(fieldDescriptor, printSingleField, textGenerator);
                }
                return;
            }
            printSingleField(fieldDescriptor, obj, textGenerator);
        }

        private void printSingleField(FieldDescriptor fieldDescriptor, Object obj, TextGenerator textGenerator) throws IOException {
            if (fieldDescriptor.isExtension()) {
                textGenerator.print("[");
                if (!fieldDescriptor.getContainingType().getOptions().getMessageSetWireFormat() || fieldDescriptor.getType() != Type.MESSAGE || !fieldDescriptor.isOptional() || fieldDescriptor.getExtensionScope() != fieldDescriptor.getMessageType()) {
                    textGenerator.print(fieldDescriptor.getFullName());
                } else {
                    textGenerator.print(fieldDescriptor.getMessageType().getFullName());
                }
                textGenerator.print("]");
            } else if (fieldDescriptor.getType() == Type.GROUP) {
                textGenerator.print(fieldDescriptor.getMessageType().getName());
            } else {
                textGenerator.print(fieldDescriptor.getName());
            }
            if (fieldDescriptor.getJavaType() != JavaType.MESSAGE) {
                textGenerator.print(": ");
            } else if (this.singleLineMode) {
                textGenerator.print(" { ");
            } else {
                textGenerator.print(" {\n");
                textGenerator.indent();
            }
            printFieldValue(fieldDescriptor, obj, textGenerator);
            if (fieldDescriptor.getJavaType() == JavaType.MESSAGE) {
                if (this.singleLineMode) {
                    textGenerator.print("} ");
                    return;
                }
                textGenerator.outdent();
                textGenerator.print("}\n");
            } else if (this.singleLineMode) {
                textGenerator.print(Token.SEPARATOR);
            } else {
                textGenerator.print("\n");
            }
        }

        /* access modifiers changed from: private */
        public void printFieldValue(FieldDescriptor fieldDescriptor, Object obj, TextGenerator textGenerator) throws IOException {
            switch (fieldDescriptor.getType()) {
                case INT32:
                case SINT32:
                case SFIXED32:
                    textGenerator.print(((Integer) obj).toString());
                    return;
                case INT64:
                case SINT64:
                case SFIXED64:
                    textGenerator.print(((Long) obj).toString());
                    return;
                case BOOL:
                    textGenerator.print(((Boolean) obj).toString());
                    return;
                case FLOAT:
                    textGenerator.print(((Float) obj).toString());
                    return;
                case DOUBLE:
                    textGenerator.print(((Double) obj).toString());
                    return;
                case UINT32:
                case FIXED32:
                    textGenerator.print(TextFormat.unsignedToString(((Integer) obj).intValue()));
                    return;
                case UINT64:
                case FIXED64:
                    textGenerator.print(TextFormat.unsignedToString(((Long) obj).longValue()));
                    return;
                case STRING:
                    textGenerator.print("\"");
                    textGenerator.print(this.escapeNonAscii ? TextFormat.escapeText((String) obj) : TextFormat.escapeDoubleQuotesAndBackslashes((String) obj));
                    textGenerator.print("\"");
                    return;
                case BYTES:
                    textGenerator.print("\"");
                    if (obj instanceof ByteString) {
                        textGenerator.print(TextFormat.escapeBytes((ByteString) obj));
                    } else {
                        textGenerator.print(TextFormat.escapeBytes((byte[]) obj));
                    }
                    textGenerator.print("\"");
                    return;
                case ENUM:
                    textGenerator.print(((EnumValueDescriptor) obj).getName());
                    return;
                case MESSAGE:
                case GROUP:
                    print((Message) obj, textGenerator);
                    return;
                default:
                    return;
            }
        }

        /* access modifiers changed from: private */
        public void printUnknownFields(UnknownFieldSet unknownFieldSet, TextGenerator textGenerator) throws IOException {
            for (Entry entry : unknownFieldSet.asMap().entrySet()) {
                int intValue = ((Integer) entry.getKey()).intValue();
                Field field = (Field) entry.getValue();
                printUnknownField(intValue, 0, field.getVarintList(), textGenerator);
                printUnknownField(intValue, 5, field.getFixed32List(), textGenerator);
                printUnknownField(intValue, 1, field.getFixed64List(), textGenerator);
                printUnknownField(intValue, 2, field.getLengthDelimitedList(), textGenerator);
                for (UnknownFieldSet unknownFieldSet2 : field.getGroupList()) {
                    textGenerator.print(((Integer) entry.getKey()).toString());
                    if (this.singleLineMode) {
                        textGenerator.print(" { ");
                    } else {
                        textGenerator.print(" {\n");
                        textGenerator.indent();
                    }
                    printUnknownFields(unknownFieldSet2, textGenerator);
                    if (this.singleLineMode) {
                        textGenerator.print("} ");
                    } else {
                        textGenerator.outdent();
                        textGenerator.print("}\n");
                    }
                }
            }
        }

        private void printUnknownField(int i, int i2, List<?> list, TextGenerator textGenerator) throws IOException {
            for (Object next : list) {
                textGenerator.print(String.valueOf(i));
                textGenerator.print(": ");
                TextFormat.printUnknownFieldValue(i2, next, textGenerator);
                textGenerator.print(this.singleLineMode ? Token.SEPARATOR : "\n");
            }
        }
    }

    private static final class TextGenerator {
        private boolean atStartOfLine;
        private final StringBuilder indent;
        private final Appendable output;

        private TextGenerator(Appendable appendable) {
            this.indent = new StringBuilder();
            this.atStartOfLine = true;
            this.output = appendable;
        }

        public void indent() {
            this.indent.append("  ");
        }

        public void outdent() {
            int length = this.indent.length();
            if (length == 0) {
                throw new IllegalArgumentException(" Outdent() without matching Indent().");
            }
            this.indent.delete(length - 2, length);
        }

        public void print(CharSequence charSequence) throws IOException {
            int i = 0;
            int length = charSequence.length();
            for (int i2 = 0; i2 < length; i2++) {
                if (charSequence.charAt(i2) == 10) {
                    write(charSequence.subSequence(i, i2 + 1));
                    i = i2 + 1;
                    this.atStartOfLine = true;
                }
            }
            write(charSequence.subSequence(i, length));
        }

        private void write(CharSequence charSequence) throws IOException {
            if (charSequence.length() != 0) {
                if (this.atStartOfLine) {
                    this.atStartOfLine = false;
                    this.output.append(this.indent);
                }
                this.output.append(charSequence);
            }
        }
    }

    private static final class Tokenizer {
        private static final Pattern DOUBLE_INFINITY = Pattern.compile("-?inf(inity)?", 2);
        private static final Pattern FLOAT_INFINITY = Pattern.compile("-?inf(inity)?f?", 2);
        private static final Pattern FLOAT_NAN = Pattern.compile("nanf?", 2);
        private static final Pattern TOKEN = Pattern.compile("[a-zA-Z_][0-9a-zA-Z_+-]*+|[.]?[0-9+-][0-9a-zA-Z_.+-]*+|\"([^\"\n\\\\]|\\\\.)*+(\"|\\\\?$)|'([^'\n\\\\]|\\\\.)*+('|\\\\?$)", 8);
        private static final Pattern WHITESPACE = Pattern.compile("(\\s|(#.*$))++", 8);
        private int column;
        /* access modifiers changed from: private */
        public String currentToken;
        private int line;
        private final Matcher matcher;
        private int pos;
        private int previousColumn;
        private int previousLine;
        private final CharSequence text;

        private Tokenizer(CharSequence charSequence) {
            this.pos = 0;
            this.line = 0;
            this.column = 0;
            this.previousLine = 0;
            this.previousColumn = 0;
            this.text = charSequence;
            this.matcher = WHITESPACE.matcher(charSequence);
            skipWhitespace();
            nextToken();
        }

        public boolean atEnd() {
            return this.currentToken.length() == 0;
        }

        public void nextToken() {
            this.previousLine = this.line;
            this.previousColumn = this.column;
            while (this.pos < this.matcher.regionStart()) {
                if (this.text.charAt(this.pos) == 10) {
                    this.line++;
                    this.column = 0;
                } else {
                    this.column++;
                }
                this.pos++;
            }
            if (this.matcher.regionStart() == this.matcher.regionEnd()) {
                this.currentToken = "";
                return;
            }
            this.matcher.usePattern(TOKEN);
            if (this.matcher.lookingAt()) {
                this.currentToken = this.matcher.group();
                this.matcher.region(this.matcher.end(), this.matcher.regionEnd());
            } else {
                this.currentToken = String.valueOf(this.text.charAt(this.pos));
                this.matcher.region(this.pos + 1, this.matcher.regionEnd());
            }
            skipWhitespace();
        }

        private void skipWhitespace() {
            this.matcher.usePattern(WHITESPACE);
            if (this.matcher.lookingAt()) {
                this.matcher.region(this.matcher.end(), this.matcher.regionEnd());
            }
        }

        public boolean tryConsume(String str) {
            if (!this.currentToken.equals(str)) {
                return false;
            }
            nextToken();
            return true;
        }

        public void consume(String str) throws ParseException {
            if (!tryConsume(str)) {
                String valueOf = String.valueOf(String.valueOf(str));
                throw parseException(new StringBuilder(valueOf.length() + 12).append("Expected \"").append(valueOf).append("\".").toString());
            }
        }

        public boolean lookingAtInteger() {
            if (this.currentToken.length() == 0) {
                return false;
            }
            char charAt = this.currentToken.charAt(0);
            if (('0' <= charAt && charAt <= '9') || charAt == '-' || charAt == '+') {
                return true;
            }
            return false;
        }

        public boolean lookingAt(String str) {
            return this.currentToken.equals(str);
        }

        public String consumeIdentifier() throws ParseException {
            for (int i = 0; i < this.currentToken.length(); i++) {
                char charAt = this.currentToken.charAt(i);
                if (('a' > charAt || charAt > 'z') && (('A' > charAt || charAt > 'Z') && !(('0' <= charAt && charAt <= '9') || charAt == '_' || charAt == '.'))) {
                    String valueOf = String.valueOf(String.valueOf(this.currentToken));
                    throw parseException(new StringBuilder(valueOf.length() + 29).append("Expected identifier. Found '").append(valueOf).append("'").toString());
                }
            }
            String str = this.currentToken;
            nextToken();
            return str;
        }

        public boolean tryConsumeIdentifier() {
            try {
                consumeIdentifier();
                return true;
            } catch (ParseException e) {
                return false;
            }
        }

        public int consumeInt32() throws ParseException {
            try {
                int parseInt32 = TextFormat.parseInt32(this.currentToken);
                nextToken();
                return parseInt32;
            } catch (NumberFormatException e) {
                throw integerParseException(e);
            }
        }

        public int consumeUInt32() throws ParseException {
            try {
                int parseUInt32 = TextFormat.parseUInt32(this.currentToken);
                nextToken();
                return parseUInt32;
            } catch (NumberFormatException e) {
                throw integerParseException(e);
            }
        }

        public long consumeInt64() throws ParseException {
            try {
                long parseInt64 = TextFormat.parseInt64(this.currentToken);
                nextToken();
                return parseInt64;
            } catch (NumberFormatException e) {
                throw integerParseException(e);
            }
        }

        public boolean tryConsumeInt64() {
            try {
                consumeInt64();
                return true;
            } catch (ParseException e) {
                return false;
            }
        }

        public long consumeUInt64() throws ParseException {
            try {
                long parseUInt64 = TextFormat.parseUInt64(this.currentToken);
                nextToken();
                return parseUInt64;
            } catch (NumberFormatException e) {
                throw integerParseException(e);
            }
        }

        public boolean tryConsumeUInt64() {
            try {
                consumeUInt64();
                return true;
            } catch (ParseException e) {
                return false;
            }
        }

        public double consumeDouble() throws ParseException {
            if (DOUBLE_INFINITY.matcher(this.currentToken).matches()) {
                boolean startsWith = this.currentToken.startsWith("-");
                nextToken();
                return startsWith ? Double.NEGATIVE_INFINITY : Double.POSITIVE_INFINITY;
            } else if (this.currentToken.equalsIgnoreCase("nan")) {
                nextToken();
                return Double.NaN;
            } else {
                try {
                    double parseDouble = Double.parseDouble(this.currentToken);
                    nextToken();
                    return parseDouble;
                } catch (NumberFormatException e) {
                    throw floatParseException(e);
                }
            }
        }

        public boolean tryConsumeDouble() {
            try {
                consumeDouble();
                return true;
            } catch (ParseException e) {
                return false;
            }
        }

        public float consumeFloat() throws ParseException {
            if (FLOAT_INFINITY.matcher(this.currentToken).matches()) {
                boolean startsWith = this.currentToken.startsWith("-");
                nextToken();
                return startsWith ? Float.NEGATIVE_INFINITY : Float.POSITIVE_INFINITY;
            } else if (FLOAT_NAN.matcher(this.currentToken).matches()) {
                nextToken();
                return Float.NaN;
            } else {
                try {
                    float parseFloat = Float.parseFloat(this.currentToken);
                    nextToken();
                    return parseFloat;
                } catch (NumberFormatException e) {
                    throw floatParseException(e);
                }
            }
        }

        public boolean tryConsumeFloat() {
            try {
                consumeFloat();
                return true;
            } catch (ParseException e) {
                return false;
            }
        }

        public boolean consumeBoolean() throws ParseException {
            if (this.currentToken.equals("true") || this.currentToken.equals("t") || this.currentToken.equals("1")) {
                nextToken();
                return true;
            } else if (this.currentToken.equals(Bugly.SDK_IS_DEV) || this.currentToken.equals("f") || this.currentToken.equals("0")) {
                nextToken();
                return false;
            } else {
                throw parseException("Expected \"true\" or \"false\".");
            }
        }

        public String consumeString() throws ParseException {
            return consumeByteString().toStringUtf8();
        }

        public boolean tryConsumeString() {
            try {
                consumeString();
                return true;
            } catch (ParseException e) {
                return false;
            }
        }

        public ByteString consumeByteString() throws ParseException {
            ArrayList arrayList = new ArrayList();
            consumeByteString(arrayList);
            while (true) {
                if (!this.currentToken.startsWith("'") && !this.currentToken.startsWith("\"")) {
                    return ByteString.copyFrom((Iterable<ByteString>) arrayList);
                }
                consumeByteString(arrayList);
            }
        }

        private void consumeByteString(List<ByteString> list) throws ParseException {
            char c = 0;
            if (this.currentToken.length() > 0) {
                c = this.currentToken.charAt(0);
            }
            if (c != '\"' && c != '\'') {
                throw parseException("Expected string.");
            } else if (this.currentToken.length() < 2 || this.currentToken.charAt(this.currentToken.length() - 1) != c) {
                throw parseException("String missing ending quote.");
            } else {
                try {
                    ByteString unescapeBytes = TextFormat.unescapeBytes(this.currentToken.substring(1, this.currentToken.length() - 1));
                    nextToken();
                    list.add(unescapeBytes);
                } catch (InvalidEscapeSequenceException e) {
                    throw parseException(e.getMessage());
                }
            }
        }

        public ParseException parseException(String str) {
            return new ParseException(this.line + 1, this.column + 1, str);
        }

        public ParseException parseExceptionPreviousToken(String str) {
            return new ParseException(this.previousLine + 1, this.previousColumn + 1, str);
        }

        private ParseException integerParseException(NumberFormatException numberFormatException) {
            String str = "Couldn't parse integer: ";
            String valueOf = String.valueOf(numberFormatException.getMessage());
            return parseException(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
        }

        private ParseException floatParseException(NumberFormatException numberFormatException) {
            String str = "Couldn't parse number: ";
            String valueOf = String.valueOf(numberFormatException.getMessage());
            return parseException(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
        }
    }

    private TextFormat() {
    }

    public static void print(MessageOrBuilder messageOrBuilder, Appendable appendable) throws IOException {
        DEFAULT_PRINTER.print(messageOrBuilder, new TextGenerator(appendable));
    }

    public static void print(UnknownFieldSet unknownFieldSet, Appendable appendable) throws IOException {
        DEFAULT_PRINTER.printUnknownFields(unknownFieldSet, new TextGenerator(appendable));
    }

    public static void printUnicode(MessageOrBuilder messageOrBuilder, Appendable appendable) throws IOException {
        UNICODE_PRINTER.print(messageOrBuilder, new TextGenerator(appendable));
    }

    public static void printUnicode(UnknownFieldSet unknownFieldSet, Appendable appendable) throws IOException {
        UNICODE_PRINTER.printUnknownFields(unknownFieldSet, new TextGenerator(appendable));
    }

    public static String shortDebugString(MessageOrBuilder messageOrBuilder) {
        try {
            StringBuilder sb = new StringBuilder();
            SINGLE_LINE_PRINTER.print(messageOrBuilder, new TextGenerator(sb));
            return sb.toString().trim();
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    public static String shortDebugString(UnknownFieldSet unknownFieldSet) {
        try {
            StringBuilder sb = new StringBuilder();
            SINGLE_LINE_PRINTER.printUnknownFields(unknownFieldSet, new TextGenerator(sb));
            return sb.toString().trim();
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    public static String printToString(MessageOrBuilder messageOrBuilder) {
        try {
            StringBuilder sb = new StringBuilder();
            print(messageOrBuilder, (Appendable) sb);
            return sb.toString();
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    public static String printToString(UnknownFieldSet unknownFieldSet) {
        try {
            StringBuilder sb = new StringBuilder();
            print(unknownFieldSet, (Appendable) sb);
            return sb.toString();
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    public static String printToUnicodeString(MessageOrBuilder messageOrBuilder) {
        try {
            StringBuilder sb = new StringBuilder();
            UNICODE_PRINTER.print(messageOrBuilder, new TextGenerator(sb));
            return sb.toString();
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    public static String printToUnicodeString(UnknownFieldSet unknownFieldSet) {
        try {
            StringBuilder sb = new StringBuilder();
            UNICODE_PRINTER.printUnknownFields(unknownFieldSet, new TextGenerator(sb));
            return sb.toString();
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    public static void printField(FieldDescriptor fieldDescriptor, Object obj, Appendable appendable) throws IOException {
        DEFAULT_PRINTER.printField(fieldDescriptor, obj, new TextGenerator(appendable));
    }

    public static String printFieldToString(FieldDescriptor fieldDescriptor, Object obj) {
        try {
            StringBuilder sb = new StringBuilder();
            printField(fieldDescriptor, obj, sb);
            return sb.toString();
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    public static void printFieldValue(FieldDescriptor fieldDescriptor, Object obj, Appendable appendable) throws IOException {
        DEFAULT_PRINTER.printFieldValue(fieldDescriptor, obj, new TextGenerator(appendable));
    }

    public static void printUnknownFieldValue(int i, Object obj, Appendable appendable) throws IOException {
        printUnknownFieldValue(i, obj, new TextGenerator(appendable));
    }

    /* access modifiers changed from: private */
    public static void printUnknownFieldValue(int i, Object obj, TextGenerator textGenerator) throws IOException {
        switch (WireFormat.getTagWireType(i)) {
            case 0:
                textGenerator.print(unsignedToString(((Long) obj).longValue()));
                return;
            case 1:
                textGenerator.print(String.format(null, "0x%016x", new Object[]{(Long) obj}));
                return;
            case 2:
                textGenerator.print("\"");
                textGenerator.print(escapeBytes((ByteString) obj));
                textGenerator.print("\"");
                return;
            case 3:
                DEFAULT_PRINTER.printUnknownFields((UnknownFieldSet) obj, textGenerator);
                return;
            case 5:
                textGenerator.print(String.format(null, "0x%08x", new Object[]{(Integer) obj}));
                return;
            default:
                throw new IllegalArgumentException("Bad tag: " + i);
        }
    }

    public static String unsignedToString(int i) {
        if (i >= 0) {
            return Integer.toString(i);
        }
        return Long.toString(((long) i) & 4294967295L);
    }

    public static String unsignedToString(long j) {
        if (j >= 0) {
            return Long.toString(j);
        }
        return BigInteger.valueOf(FileTracerConfig.FOREVER & j).setBit(63).toString();
    }

    public static Parser getParser() {
        return PARSER;
    }

    public static void merge(Readable readable, Builder builder) throws IOException {
        PARSER.merge(readable, builder);
    }

    public static void merge(CharSequence charSequence, Builder builder) throws ParseException {
        PARSER.merge(charSequence, builder);
    }

    public static void merge(Readable readable, ExtensionRegistry extensionRegistry, Builder builder) throws IOException {
        PARSER.merge(readable, extensionRegistry, builder);
    }

    public static void merge(CharSequence charSequence, ExtensionRegistry extensionRegistry, Builder builder) throws ParseException {
        PARSER.merge(charSequence, extensionRegistry, builder);
    }

    private static String escapeBytes(ByteSequence byteSequence) {
        StringBuilder sb = new StringBuilder(byteSequence.size());
        for (int i = 0; i < byteSequence.size(); i++) {
            byte byteAt = byteSequence.byteAt(i);
            switch (byteAt) {
                case 7:
                    sb.append("\\a");
                    break;
                case 8:
                    sb.append("\\b");
                    break;
                case 9:
                    sb.append("\\t");
                    break;
                case 10:
                    sb.append("\\n");
                    break;
                case 11:
                    sb.append("\\v");
                    break;
                case 12:
                    sb.append("\\f");
                    break;
                case 13:
                    sb.append("\\r");
                    break;
                case 34:
                    sb.append("\\\"");
                    break;
                case 39:
                    sb.append("\\'");
                    break;
                case 92:
                    sb.append("\\\\");
                    break;
                default:
                    if (byteAt < 32) {
                        sb.append('\\');
                        sb.append((char) (((byteAt >>> 6) & 3) + 48));
                        sb.append((char) (((byteAt >>> 3) & 7) + 48));
                        sb.append((char) ((byteAt & 7) + 48));
                        break;
                    } else {
                        sb.append((char) byteAt);
                        break;
                    }
            }
        }
        return sb.toString();
    }

    static String escapeBytes(final ByteString byteString) {
        return escapeBytes((ByteSequence) new ByteSequence() {
            public int size() {
                return byteString.size();
            }

            public byte byteAt(int i) {
                return byteString.byteAt(i);
            }
        });
    }

    static String escapeBytes(final byte[] bArr) {
        return escapeBytes((ByteSequence) new ByteSequence() {
            public int size() {
                return bArr.length;
            }

            public byte byteAt(int i) {
                return bArr[i];
            }
        });
    }

    static ByteString unescapeBytes(CharSequence charSequence) throws InvalidEscapeSequenceException {
        int i;
        int i2;
        ByteString copyFromUtf8 = ByteString.copyFromUtf8(charSequence.toString());
        byte[] bArr = new byte[copyFromUtf8.size()];
        int i3 = 0;
        for (int i4 = 0; i4 < copyFromUtf8.size(); i4 = i + 1) {
            byte byteAt = copyFromUtf8.byteAt(i4);
            if (byteAt != 92) {
                int i5 = i3 + 1;
                bArr[i3] = byteAt;
                i3 = i5;
                i = i4;
            } else if (i4 + 1 < copyFromUtf8.size()) {
                i = i4 + 1;
                byte byteAt2 = copyFromUtf8.byteAt(i);
                if (isOctal(byteAt2)) {
                    int digitValue = digitValue(byteAt2);
                    if (i + 1 < copyFromUtf8.size() && isOctal(copyFromUtf8.byteAt(i + 1))) {
                        i++;
                        digitValue = (digitValue * 8) + digitValue(copyFromUtf8.byteAt(i));
                    }
                    if (i + 1 < copyFromUtf8.size() && isOctal(copyFromUtf8.byteAt(i + 1))) {
                        i++;
                        digitValue = (digitValue * 8) + digitValue(copyFromUtf8.byteAt(i));
                    }
                    int i6 = i3 + 1;
                    bArr[i3] = (byte) digitValue;
                    i3 = i6;
                } else {
                    switch (byteAt2) {
                        case 34:
                            i2 = i3 + 1;
                            bArr[i3] = HttpConstants.DOUBLE_QUOTE;
                            break;
                        case 39:
                            i2 = i3 + 1;
                            bArr[i3] = 39;
                            break;
                        case 92:
                            i2 = i3 + 1;
                            bArr[i3] = 92;
                            break;
                        case 97:
                            i2 = i3 + 1;
                            bArr[i3] = 7;
                            break;
                        case 98:
                            i2 = i3 + 1;
                            bArr[i3] = 8;
                            break;
                        case 102:
                            i2 = i3 + 1;
                            bArr[i3] = 12;
                            break;
                        case 110:
                            i2 = i3 + 1;
                            bArr[i3] = 10;
                            break;
                        case 114:
                            i2 = i3 + 1;
                            bArr[i3] = HttpConstants.CR;
                            break;
                        case Error.E_REG_WRONG_TOKEN /*116*/:
                            i2 = i3 + 1;
                            bArr[i3] = 9;
                            break;
                        case 118:
                            i2 = i3 + 1;
                            bArr[i3] = 11;
                            break;
                        case 120:
                            if (i + 1 < copyFromUtf8.size() && isHex(copyFromUtf8.byteAt(i + 1))) {
                                i++;
                                int digitValue2 = digitValue(copyFromUtf8.byteAt(i));
                                if (i + 1 < copyFromUtf8.size() && isHex(copyFromUtf8.byteAt(i + 1))) {
                                    i++;
                                    digitValue2 = (digitValue2 * 16) + digitValue(copyFromUtf8.byteAt(i));
                                }
                                int i7 = i3 + 1;
                                bArr[i3] = (byte) digitValue2;
                                i2 = i7;
                                break;
                            } else {
                                throw new InvalidEscapeSequenceException("Invalid escape sequence: '\\x' with no digits");
                            }
                            break;
                        default:
                            throw new InvalidEscapeSequenceException("Invalid escape sequence: '\\" + ((char) byteAt2) + "'");
                    }
                    i3 = i2;
                }
            } else {
                throw new InvalidEscapeSequenceException("Invalid escape sequence: '\\' at end of string.");
            }
        }
        return ByteString.copyFrom(bArr, 0, i3);
    }

    static String escapeText(String str) {
        return escapeBytes(ByteString.copyFromUtf8(str));
    }

    public static String escapeDoubleQuotesAndBackslashes(String str) {
        return str.replace("\\", "\\\\").replace("\"", "\\\"");
    }

    static String unescapeText(String str) throws InvalidEscapeSequenceException {
        return unescapeBytes(str).toStringUtf8();
    }

    private static boolean isOctal(byte b) {
        return 48 <= b && b <= 55;
    }

    private static boolean isHex(byte b) {
        return (48 <= b && b <= 57) || (97 <= b && b <= 102) || (65 <= b && b <= 70);
    }

    private static int digitValue(byte b) {
        if (48 <= b && b <= 57) {
            return b - 48;
        }
        if (97 > b || b > 122) {
            return (b - 65) + 10;
        }
        return (b - 97) + 10;
    }

    static int parseInt32(String str) throws NumberFormatException {
        return (int) parseInteger(str, true, false);
    }

    static int parseUInt32(String str) throws NumberFormatException {
        return (int) parseInteger(str, false, false);
    }

    static long parseInt64(String str) throws NumberFormatException {
        return parseInteger(str, true, true);
    }

    static long parseUInt64(String str) throws NumberFormatException {
        return parseInteger(str, false, true);
    }

    private static long parseInteger(String str, boolean z, boolean z2) throws NumberFormatException {
        int i;
        int i2;
        BigInteger bigInteger;
        long j;
        String str2;
        boolean z3 = true;
        int i3 = 0;
        if (!str.startsWith("-", 0)) {
            z3 = false;
        } else if (!z) {
            String str3 = "Number must be positive: ";
            String valueOf = String.valueOf(str);
            throw new NumberFormatException(valueOf.length() != 0 ? str3.concat(valueOf) : new String(str3));
        } else {
            i3 = 1;
        }
        if (str.startsWith("0x", i3)) {
            i = i3 + 2;
            i2 = 16;
        } else if (str.startsWith("0", i3)) {
            i = i3;
            i2 = 8;
        } else {
            i = i3;
            i2 = 10;
        }
        String substring = str.substring(i);
        if (substring.length() < 16) {
            long parseLong = Long.parseLong(substring, i2);
            if (z3) {
                j = -parseLong;
            } else {
                j = parseLong;
            }
            if (z2) {
                return j;
            }
            if (z) {
                if (j <= 2147483647L && j >= -2147483648L) {
                    return j;
                }
                String str4 = "Number out of range for 32-bit signed integer: ";
                String valueOf2 = String.valueOf(str);
                if (valueOf2.length() != 0) {
                    str2 = str4.concat(valueOf2);
                } else {
                    str2 = new String(str4);
                }
                throw new NumberFormatException(str2);
            } else if (j < 4294967296L && j >= 0) {
                return j;
            } else {
                String str5 = "Number out of range for 32-bit unsigned integer: ";
                String valueOf3 = String.valueOf(str);
                throw new NumberFormatException(valueOf3.length() != 0 ? str5.concat(valueOf3) : new String(str5));
            }
        } else {
            BigInteger bigInteger2 = new BigInteger(substring, i2);
            if (z3) {
                bigInteger = bigInteger2.negate();
            } else {
                bigInteger = bigInteger2;
            }
            if (!z2) {
                if (z) {
                    if (bigInteger.bitLength() > 31) {
                        String str6 = "Number out of range for 32-bit signed integer: ";
                        String valueOf4 = String.valueOf(str);
                        throw new NumberFormatException(valueOf4.length() != 0 ? str6.concat(valueOf4) : new String(str6));
                    }
                } else if (bigInteger.bitLength() > 32) {
                    String str7 = "Number out of range for 32-bit unsigned integer: ";
                    String valueOf5 = String.valueOf(str);
                    throw new NumberFormatException(valueOf5.length() != 0 ? str7.concat(valueOf5) : new String(str7));
                }
            } else if (z) {
                if (bigInteger.bitLength() > 63) {
                    String str8 = "Number out of range for 64-bit signed integer: ";
                    String valueOf6 = String.valueOf(str);
                    throw new NumberFormatException(valueOf6.length() != 0 ? str8.concat(valueOf6) : new String(str8));
                }
            } else if (bigInteger.bitLength() > 64) {
                String str9 = "Number out of range for 64-bit unsigned integer: ";
                String valueOf7 = String.valueOf(str);
                throw new NumberFormatException(valueOf7.length() != 0 ? str9.concat(valueOf7) : new String(str9));
            }
            return bigInteger.longValue();
        }
    }
}
