package com.google.gson;

public final class JsonSyntaxException extends JsonParseException {
    private static final long serialVersionUID = 1;

    public JsonSyntaxException(String str) {
        super(str);
    }

    public JsonSyntaxException(String str, Throwable th) {
        super(str, th);
    }

    public JsonSyntaxException(Throwable th) {
        super(th);
    }
}
