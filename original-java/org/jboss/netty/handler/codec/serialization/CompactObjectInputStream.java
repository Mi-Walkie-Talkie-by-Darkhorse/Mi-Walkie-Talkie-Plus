package org.jboss.netty.handler.codec.serialization;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.io.StreamCorruptedException;

class CompactObjectInputStream extends ObjectInputStream {
    private final ClassResolver classResolver;

    CompactObjectInputStream(InputStream inputStream, ClassResolver classResolver2) throws IOException {
        super(inputStream);
        if (classResolver2 == null) {
            throw new NullPointerException("classResolver");
        }
        this.classResolver = classResolver2;
    }

    /* access modifiers changed from: protected */
    public void readStreamHeader() throws IOException {
        byte readByte = readByte() & 255;
        if (readByte != 5) {
            throw new StreamCorruptedException("Unsupported version: " + readByte);
        }
    }

    /* access modifiers changed from: protected */
    public ObjectStreamClass readClassDescriptor() throws IOException, ClassNotFoundException {
        int read = read();
        if (read < 0) {
            throw new EOFException();
        }
        switch (read) {
            case 0:
                return super.readClassDescriptor();
            case 1:
                Class resolve = this.classResolver.resolve(readUTF());
                ObjectStreamClass lookup = ObjectStreamClass.lookup(resolve);
                if (lookup == null) {
                    return ObjectStreamClass.lookupAny(resolve);
                }
                return lookup;
            default:
                throw new StreamCorruptedException("Unexpected class descriptor type: " + read);
        }
    }

    /* access modifiers changed from: protected */
    public Class<?> resolveClass(ObjectStreamClass objectStreamClass) throws IOException, ClassNotFoundException {
        try {
            return this.classResolver.resolve(objectStreamClass.getName());
        } catch (ClassNotFoundException e) {
            return super.resolveClass(objectStreamClass);
        }
    }
}
