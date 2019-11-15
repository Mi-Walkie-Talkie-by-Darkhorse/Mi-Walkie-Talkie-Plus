package okio;

import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

public final class HashingSource extends ForwardingSource {
    private final Mac mac;
    private final MessageDigest messageDigest;

    public static HashingSource md5(Source source) {
        return new HashingSource(source, "MD5");
    }

    public static HashingSource sha1(Source source) {
        return new HashingSource(source, "SHA-1");
    }

    public static HashingSource sha256(Source source) {
        return new HashingSource(source, "SHA-256");
    }

    public static HashingSource hmacSha1(Source source, ByteString byteString) {
        return new HashingSource(source, byteString, "HmacSHA1");
    }

    public static HashingSource hmacSha256(Source source, ByteString byteString) {
        return new HashingSource(source, byteString, "HmacSHA256");
    }

    private HashingSource(Source source, String str) {
        super(source);
        try {
            this.messageDigest = MessageDigest.getInstance(str);
            this.mac = null;
        } catch (NoSuchAlgorithmException e) {
            throw new AssertionError();
        }
    }

    private HashingSource(Source source, ByteString byteString, String str) {
        super(source);
        try {
            this.mac = Mac.getInstance(str);
            this.mac.init(new SecretKeySpec(byteString.toByteArray(), str));
            this.messageDigest = null;
        } catch (NoSuchAlgorithmException e) {
            throw new AssertionError();
        } catch (InvalidKeyException e2) {
            throw new IllegalArgumentException(e2);
        }
    }

    public long read(Buffer buffer, long j) throws IOException {
        long read = super.read(buffer, j);
        if (read != -1) {
            long j2 = buffer.size - read;
            long j3 = buffer.size;
            Segment segment = buffer.head;
            while (j3 > j2) {
                segment = segment.prev;
                j3 -= (long) (segment.limit - segment.pos);
            }
            while (j3 < buffer.size) {
                int i = (int) ((j2 + ((long) segment.pos)) - j3);
                if (this.messageDigest != null) {
                    this.messageDigest.update(segment.data, i, segment.limit - i);
                } else {
                    this.mac.update(segment.data, i, segment.limit - i);
                }
                j3 += (long) (segment.limit - segment.pos);
                segment = segment.next;
                j2 = j3;
            }
        }
        return read;
    }

    public ByteString hash() {
        return ByteString.of(this.messageDigest != null ? this.messageDigest.digest() : this.mac.doFinal());
    }
}
