package com.ksyun.ks3.exception;

import android.util.Log;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import org.apache.http.HttpStatus;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* compiled from: Ks3Error */
public class a {
    private int a;
    private String b;
    private b c;

    public a(int i, byte[] bArr, Throwable th) {
        if (bArr != null) {
            Log.e("ks3_sdk_android", new String(bArr));
        } else {
            Log.e("ks3_sdk_android", "response string is null");
        }
        if (a(bArr)) {
            this.a = a(i, th);
            this.b = this.c.b();
            return;
        }
        Log.e("ks3_sdk_android", "Parse Ks3Error Failed");
    }

    private int a(int i, Throwable th) {
        String a2 = this.c.a();
        if (a2 != null) {
            switch (i) {
                case 400:
                    if (a2.equals("BadDigest")) {
                        return 0;
                    }
                    if (a2.equals("InvalidACLString")) {
                        return 1;
                    }
                    if (a2.equals("InvalidAuthorizationString")) {
                        return 2;
                    }
                    if (a2.equals("InvalidBucketName")) {
                        return 3;
                    }
                    if (a2.equals("InvalidDateFormat")) {
                        return 4;
                    }
                    if (a2.equals("InvalidDigest")) {
                        return 5;
                    }
                    if (a2.equals("InvalidEncryptionAlgorithm")) {
                        return 6;
                    }
                    if (a2.equals("InvalidHostHeader")) {
                        return 7;
                    }
                    if (a2.equals("InvalidParameter")) {
                        return 8;
                    }
                    if (a2.equals("InvalidPath")) {
                        return 9;
                    }
                    if (a2.equals("InvalidQueryString")) {
                        return 10;
                    }
                    if (a2.equals("MetadataTooLarge")) {
                        return 11;
                    }
                    if (a2.equals("MissingDateHeader")) {
                        return 12;
                    }
                    if (a2.equals("MissingHostHeader")) {
                        return 13;
                    }
                    if (a2.equals("TooManyBuckets")) {
                        return 14;
                    }
                    if (a2.equals("BadParams")) {
                        return 15;
                    }
                    if (a2.equals("ImageTypeNotSupport")) {
                        return 16;
                    }
                    if (a2.equals("MissingFormArgs")) {
                        return 17;
                    }
                    if (a2.equals("ContentRangeError")) {
                        return 18;
                    }
                    if (a2.equals("ContentLengthOutOfRange")) {
                        return 19;
                    }
                    if (a2.equals("PolicyError")) {
                        return 20;
                    }
                    if (a2.equals("ExpirationError")) {
                        return 21;
                    }
                    if (a2.equals("FormUnmatchPolicy")) {
                        return 22;
                    }
                    break;
                case HttpStatus.SC_FORBIDDEN /*403*/:
                    if (a2.equals("AccessDenied")) {
                        return 23;
                    }
                    if (a2.equals("InvalidAccessKey")) {
                        return 24;
                    }
                    if (a2.equals("RequestTimeTooSkewed")) {
                        return 25;
                    }
                    if (a2.equals("SignatureDoesNotMatch")) {
                        return 26;
                    }
                    if (a2.equals("URLExpired")) {
                        return 27;
                    }
                    break;
                case HttpStatus.SC_NOT_FOUND /*404*/:
                    if (a2.equals("NoSuchBucket")) {
                        return 28;
                    }
                    if (a2.equals("NoSuchKey")) {
                        return 29;
                    }
                    break;
                case HttpStatus.SC_METHOD_NOT_ALLOWED /*405*/:
                    if (a2.equals("MethodNotAllowed")) {
                        return 30;
                    }
                    break;
                case HttpStatus.SC_CONFLICT /*409*/:
                    if (a2.equals("BucketAlreadyExists")) {
                        return 31;
                    }
                    if (a2.equals("BucketAlreadyOwnedByYou")) {
                        return 32;
                    }
                    if (a2.equals("BucketNotEmpty")) {
                        return 33;
                    }
                    break;
                case HttpStatus.SC_REQUESTED_RANGE_NOT_SATISFIABLE /*416*/:
                    if (a2.equals("InvalidRange")) {
                        return 34;
                    }
                    break;
                case 500:
                    if (a2.equals("InternalError")) {
                        return 35;
                    }
                    break;
                case HttpStatus.SC_NOT_IMPLEMENTED /*501*/:
                    if (a2.equals("NotImplemented")) {
                        return 36;
                    }
                    break;
            }
        }
        return -1;
    }

    private boolean a(byte[] bArr) {
        if (bArr == null) {
            return false;
        }
        try {
            XmlPullParser newPullParser = XmlPullParserFactory.newInstance().newPullParser();
            newPullParser.setInput(new ByteArrayInputStream(bArr), "UTF-8");
            for (int eventType = newPullParser.getEventType(); 1 != eventType; eventType = newPullParser.next()) {
                String name = newPullParser.getName();
                switch (eventType) {
                    case 0:
                        this.c = new b();
                        break;
                    case 2:
                        if (name.equalsIgnoreCase("Code")) {
                            this.c.a(newPullParser.nextText());
                        }
                        if (name.equalsIgnoreCase("Message")) {
                            this.c.b(newPullParser.nextText());
                        }
                        if (name.equalsIgnoreCase("Resource")) {
                            this.c.c(newPullParser.nextText());
                        }
                        if (!name.equalsIgnoreCase("RequestId")) {
                            break;
                        } else {
                            this.c.d(newPullParser.nextText());
                            break;
                        }
                }
            }
            return true;
        } catch (XmlPullParserException e) {
            ThrowableExtension.printStackTrace(e);
            return false;
        } catch (IOException e2) {
            ThrowableExtension.printStackTrace(e2);
            return false;
        } catch (Exception e3) {
            ThrowableExtension.printStackTrace(e3);
            return false;
        }
    }

    public int a() {
        return this.a;
    }

    public String b() {
        return this.b;
    }
}
