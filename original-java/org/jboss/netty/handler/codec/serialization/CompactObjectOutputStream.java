package org.jboss.netty.handler.codec.serialization;

import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamClass;
import java.io.OutputStream;

class CompactObjectOutputStream extends ObjectOutputStream {
    static final int TYPE_FAT_DESCRIPTOR = 0;
    static final int TYPE_THIN_DESCRIPTOR = 1;

    CompactObjectOutputStream(OutputStream outputStream) throws IOException {
        super(outputStream);
    }

    /* access modifiers changed from: protected */
    public void writeStreamHeader() throws IOException {
        writeByte(5);
    }

    /* access modifiers changed from: protected */
    public void writeClassDescriptor(ObjectStreamClass objectStreamClass) throws IOException {
        Class forClass = objectStreamClass.forClass();
        if (forClass.isPrimitive() || forClass.isArray() || forClass.isInterface() || objectStreamClass.getSerialVersionUID() == 0) {
            write(0);
            super.writeClassDescriptor(objectStreamClass);
            return;
        }
        write(1);
        writeUTF(objectStreamClass.getName());
    }
}
