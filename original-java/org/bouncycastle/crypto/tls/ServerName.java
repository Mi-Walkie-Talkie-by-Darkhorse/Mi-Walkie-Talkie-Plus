package org.bouncycastle.crypto.tls;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.protocol.HTTP;

public class ServerName {
    protected Object name;
    protected short nameType;

    public ServerName(short s, Object obj) {
        if (!isCorrectType(s, obj)) {
            throw new IllegalArgumentException("'name' is not an instance of the correct type");
        }
        this.nameType = s;
        this.name = obj;
    }

    protected static boolean isCorrectType(short s, Object obj) {
        switch (s) {
            case 0:
                return obj instanceof String;
            default:
                throw new IllegalArgumentException("'name' is an unsupported value");
        }
    }

    public static ServerName parse(InputStream inputStream) throws IOException {
        short readUint8 = TlsUtils.readUint8(inputStream);
        switch (readUint8) {
            case 0:
                byte[] readOpaque16 = TlsUtils.readOpaque16(inputStream);
                if (readOpaque16.length >= 1) {
                    return new ServerName(readUint8, new String(readOpaque16, HTTP.ASCII));
                }
                throw new TlsFatalAlert(50);
            default:
                throw new TlsFatalAlert(50);
        }
    }

    public void encode(OutputStream outputStream) throws IOException {
        TlsUtils.writeUint8(this.nameType, outputStream);
        switch (this.nameType) {
            case 0:
                byte[] bytes = ((String) this.name).getBytes(HTTP.ASCII);
                if (bytes.length < 1) {
                    throw new TlsFatalAlert(80);
                }
                TlsUtils.writeOpaque16(bytes, outputStream);
                return;
            default:
                throw new TlsFatalAlert(80);
        }
    }

    public String getHostName() {
        if (isCorrectType(0, this.name)) {
            return (String) this.name;
        }
        throw new IllegalStateException("'name' is not a HostName string");
    }

    public Object getName() {
        return this.name;
    }

    public short getNameType() {
        return this.nameType;
    }
}
