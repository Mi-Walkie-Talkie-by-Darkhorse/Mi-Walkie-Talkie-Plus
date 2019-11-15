package com.google.gson.stream;

import com.tencent.bugly.mimsg.Bugly;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;

public class JsonWriter implements Closeable, Flushable {
    private static final String[] HTML_SAFE_REPLACEMENT_CHARS = ((String[]) REPLACEMENT_CHARS.clone());
    private static final String[] REPLACEMENT_CHARS = new String[128];
    private String deferredName;
    private boolean htmlSafe;
    private String indent;
    private boolean lenient;
    private final Writer out;
    private String separator;
    private boolean serializeNulls;
    private int[] stack = new int[32];
    private int stackSize = 0;

    static {
        for (int i = 0; i <= 31; i++) {
            REPLACEMENT_CHARS[i] = String.format("\\u%04x", new Object[]{Integer.valueOf(i)});
        }
        REPLACEMENT_CHARS[34] = "\\\"";
        REPLACEMENT_CHARS[92] = "\\\\";
        REPLACEMENT_CHARS[9] = "\\t";
        REPLACEMENT_CHARS[8] = "\\b";
        REPLACEMENT_CHARS[10] = "\\n";
        REPLACEMENT_CHARS[13] = "\\r";
        REPLACEMENT_CHARS[12] = "\\f";
        HTML_SAFE_REPLACEMENT_CHARS[60] = "\\u003c";
        HTML_SAFE_REPLACEMENT_CHARS[62] = "\\u003e";
        HTML_SAFE_REPLACEMENT_CHARS[38] = "\\u0026";
        HTML_SAFE_REPLACEMENT_CHARS[61] = "\\u003d";
        HTML_SAFE_REPLACEMENT_CHARS[39] = "\\u0027";
    }

    public JsonWriter(Writer writer) {
        push(6);
        this.separator = ":";
        this.serializeNulls = true;
        if (writer == null) {
            throw new NullPointerException("out == null");
        }
        this.out = writer;
    }

    public final void setIndent(String str) {
        if (str.length() == 0) {
            this.indent = null;
            this.separator = ":";
            return;
        }
        this.indent = str;
        this.separator = ": ";
    }

    public final void setLenient(boolean z) {
        this.lenient = z;
    }

    public boolean isLenient() {
        return this.lenient;
    }

    public final void setHtmlSafe(boolean z) {
        this.htmlSafe = z;
    }

    public final boolean isHtmlSafe() {
        return this.htmlSafe;
    }

    public final void setSerializeNulls(boolean z) {
        this.serializeNulls = z;
    }

    public final boolean getSerializeNulls() {
        return this.serializeNulls;
    }

    public JsonWriter beginArray() throws IOException {
        writeDeferredName();
        return open(1, "[");
    }

    public JsonWriter endArray() throws IOException {
        return close(1, 2, "]");
    }

    public JsonWriter beginObject() throws IOException {
        writeDeferredName();
        return open(3, "{");
    }

    public JsonWriter endObject() throws IOException {
        return close(3, 5, "}");
    }

    private JsonWriter open(int i, String str) throws IOException {
        beforeValue();
        push(i);
        this.out.write(str);
        return this;
    }

    private JsonWriter close(int i, int i2, String str) throws IOException {
        int peek = peek();
        if (peek != i2 && peek != i) {
            throw new IllegalStateException("Nesting problem.");
        } else if (this.deferredName != null) {
            throw new IllegalStateException("Dangling name: " + this.deferredName);
        } else {
            this.stackSize--;
            if (peek == i2) {
                newline();
            }
            this.out.write(str);
            return this;
        }
    }

    private void push(int i) {
        if (this.stackSize == this.stack.length) {
            int[] iArr = new int[(this.stackSize * 2)];
            System.arraycopy(this.stack, 0, iArr, 0, this.stackSize);
            this.stack = iArr;
        }
        int[] iArr2 = this.stack;
        int i2 = this.stackSize;
        this.stackSize = i2 + 1;
        iArr2[i2] = i;
    }

    private int peek() {
        if (this.stackSize != 0) {
            return this.stack[this.stackSize - 1];
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    private void replaceTop(int i) {
        this.stack[this.stackSize - 1] = i;
    }

    public JsonWriter name(String str) throws IOException {
        if (str == null) {
            throw new NullPointerException("name == null");
        } else if (this.deferredName != null) {
            throw new IllegalStateException();
        } else if (this.stackSize == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        } else {
            this.deferredName = str;
            return this;
        }
    }

    private void writeDeferredName() throws IOException {
        if (this.deferredName != null) {
            beforeName();
            string(this.deferredName);
            this.deferredName = null;
        }
    }

    public JsonWriter value(String str) throws IOException {
        if (str == null) {
            return nullValue();
        }
        writeDeferredName();
        beforeValue();
        string(str);
        return this;
    }

    public JsonWriter jsonValue(String str) throws IOException {
        if (str == null) {
            return nullValue();
        }
        writeDeferredName();
        beforeValue();
        this.out.append(str);
        return this;
    }

    public JsonWriter nullValue() throws IOException {
        if (this.deferredName != null) {
            if (this.serializeNulls) {
                writeDeferredName();
            } else {
                this.deferredName = null;
                return this;
            }
        }
        beforeValue();
        this.out.write("null");
        return this;
    }

    public JsonWriter value(boolean z) throws IOException {
        writeDeferredName();
        beforeValue();
        this.out.write(z ? "true" : Bugly.SDK_IS_DEV);
        return this;
    }

    public JsonWriter value(Boolean bool) throws IOException {
        if (bool == null) {
            return nullValue();
        }
        writeDeferredName();
        beforeValue();
        this.out.write(bool.booleanValue() ? "true" : Bugly.SDK_IS_DEV);
        return this;
    }

    public JsonWriter value(double d) throws IOException {
        if (Double.isNaN(d) || Double.isInfinite(d)) {
            throw new IllegalArgumentException("Numeric values must be finite, but was " + d);
        }
        writeDeferredName();
        beforeValue();
        this.out.append(Double.toString(d));
        return this;
    }

    public JsonWriter value(long j) throws IOException {
        writeDeferredName();
        beforeValue();
        this.out.write(Long.toString(j));
        return this;
    }

    public JsonWriter value(Number number) throws IOException {
        if (number == null) {
            return nullValue();
        }
        writeDeferredName();
        String obj = number.toString();
        if (this.lenient || (!obj.equals("-Infinity") && !obj.equals("Infinity") && !obj.equals("NaN"))) {
            beforeValue();
            this.out.append(obj);
            return this;
        }
        throw new IllegalArgumentException("Numeric values must be finite, but was " + number);
    }

    public void flush() throws IOException {
        if (this.stackSize == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        this.out.flush();
    }

    public void close() throws IOException {
        this.out.close();
        int i = this.stackSize;
        if (i > 1 || (i == 1 && this.stack[i - 1] != 7)) {
            throw new IOException("Incomplete document");
        }
        this.stackSize = 0;
    }

    /* JADX WARNING: Removed duplicated region for block: B:15:0x0030  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void string(java.lang.String r8) throws java.io.IOException {
        /*
            r7 = this;
            r1 = 0
            boolean r0 = r7.htmlSafe
            if (r0 == 0) goto L_0x0025
            java.lang.String[] r0 = HTML_SAFE_REPLACEMENT_CHARS
        L_0x0007:
            java.io.Writer r2 = r7.out
            java.lang.String r3 = "\""
            r2.write(r3)
            int r4 = r8.length()
            r3 = r1
        L_0x0013:
            if (r3 >= r4) goto L_0x0046
            char r2 = r8.charAt(r3)
            r5 = 128(0x80, float:1.794E-43)
            if (r2 >= r5) goto L_0x0028
            r2 = r0[r2]
            if (r2 != 0) goto L_0x002e
        L_0x0021:
            int r2 = r3 + 1
            r3 = r2
            goto L_0x0013
        L_0x0025:
            java.lang.String[] r0 = REPLACEMENT_CHARS
            goto L_0x0007
        L_0x0028:
            r5 = 8232(0x2028, float:1.1535E-41)
            if (r2 != r5) goto L_0x003f
            java.lang.String r2 = "\\u2028"
        L_0x002e:
            if (r1 >= r3) goto L_0x0037
            java.io.Writer r5 = r7.out
            int r6 = r3 - r1
            r5.write(r8, r1, r6)
        L_0x0037:
            java.io.Writer r1 = r7.out
            r1.write(r2)
            int r1 = r3 + 1
            goto L_0x0021
        L_0x003f:
            r5 = 8233(0x2029, float:1.1537E-41)
            if (r2 != r5) goto L_0x0021
            java.lang.String r2 = "\\u2029"
            goto L_0x002e
        L_0x0046:
            if (r1 >= r4) goto L_0x004f
            java.io.Writer r0 = r7.out
            int r2 = r4 - r1
            r0.write(r8, r1, r2)
        L_0x004f:
            java.io.Writer r0 = r7.out
            java.lang.String r1 = "\""
            r0.write(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.stream.JsonWriter.string(java.lang.String):void");
    }

    private void newline() throws IOException {
        if (this.indent != null) {
            this.out.write("\n");
            int i = this.stackSize;
            for (int i2 = 1; i2 < i; i2++) {
                this.out.write(this.indent);
            }
        }
    }

    private void beforeName() throws IOException {
        int peek = peek();
        if (peek == 5) {
            this.out.write(44);
        } else if (peek != 3) {
            throw new IllegalStateException("Nesting problem.");
        }
        newline();
        replaceTop(4);
    }

    private void beforeValue() throws IOException {
        switch (peek()) {
            case 1:
                replaceTop(2);
                newline();
                return;
            case 2:
                this.out.append(',');
                newline();
                return;
            case 4:
                this.out.append(this.separator);
                replaceTop(5);
                return;
            case 6:
                break;
            case 7:
                if (!this.lenient) {
                    throw new IllegalStateException("JSON must have only one top-level value.");
                }
                break;
            default:
                throw new IllegalStateException("Nesting problem.");
        }
        replaceTop(7);
    }
}
