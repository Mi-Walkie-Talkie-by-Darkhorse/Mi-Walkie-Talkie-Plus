package com.google.protobuf;

import java.io.IOException;

public class LazyFieldLite {
    private ByteString bytes;
    private ExtensionRegistryLite extensionRegistry;
    private volatile boolean isDirty = false;
    protected volatile MessageLite value;

    public LazyFieldLite(ExtensionRegistryLite extensionRegistryLite, ByteString byteString) {
        this.extensionRegistry = extensionRegistryLite;
        this.bytes = byteString;
    }

    public LazyFieldLite() {
    }

    public static LazyFieldLite fromValue(MessageLite messageLite) {
        LazyFieldLite lazyFieldLite = new LazyFieldLite();
        lazyFieldLite.setValue(messageLite);
        return lazyFieldLite;
    }

    public boolean containsDefaultInstance() {
        return this.value == null && this.bytes == null;
    }

    public void clear() {
        this.bytes = null;
        this.value = null;
        this.extensionRegistry = null;
        this.isDirty = true;
    }

    public MessageLite getValue(MessageLite messageLite) {
        ensureInitialized(messageLite);
        return this.value;
    }

    public MessageLite setValue(MessageLite messageLite) {
        MessageLite messageLite2 = this.value;
        this.value = messageLite;
        this.bytes = null;
        this.isDirty = true;
        return messageLite2;
    }

    public void merge(LazyFieldLite lazyFieldLite) {
        if (!lazyFieldLite.containsDefaultInstance()) {
            if (this.bytes == null) {
                this.bytes = lazyFieldLite.bytes;
            } else {
                this.bytes.concat(lazyFieldLite.toByteString());
            }
            this.isDirty = false;
        }
    }

    public void setByteString(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) {
        this.bytes = byteString;
        this.extensionRegistry = extensionRegistryLite;
        this.isDirty = false;
    }

    public ExtensionRegistryLite getExtensionRegistry() {
        return this.extensionRegistry;
    }

    public int getSerializedSize() {
        if (this.isDirty) {
            return this.value.getSerializedSize();
        }
        return this.bytes.size();
    }

    public ByteString toByteString() {
        if (!this.isDirty) {
            return this.bytes;
        }
        synchronized (this) {
            if (!this.isDirty) {
                ByteString byteString = this.bytes;
                return byteString;
            }
            if (this.value == null) {
                this.bytes = ByteString.EMPTY;
            } else {
                this.bytes = this.value.toByteString();
            }
            this.isDirty = false;
            ByteString byteString2 = this.bytes;
            return byteString2;
        }
    }

    /* access modifiers changed from: protected */
    public void ensureInitialized(MessageLite messageLite) {
        if (this.value == null) {
            synchronized (this) {
                if (this.value == null) {
                    try {
                        if (this.bytes != null) {
                            this.value = (MessageLite) messageLite.getParserForType().parseFrom(this.bytes, this.extensionRegistry);
                        } else {
                            this.value = messageLite;
                        }
                    } catch (IOException e) {
                    }
                }
            }
        }
    }
}
