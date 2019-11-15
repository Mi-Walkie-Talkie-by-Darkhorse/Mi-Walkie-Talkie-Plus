package org.bouncycastle.asn1;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.SimpleTimeZone;
import java.util.TimeZone;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Strings;

public class ASN1GeneralizedTime extends ASN1Primitive {
    private byte[] time;

    public ASN1GeneralizedTime(String str) {
        this.time = Strings.toByteArray(str);
        try {
            getDate();
        } catch (ParseException e) {
            throw new IllegalArgumentException("invalid date string: " + e.getMessage());
        }
    }

    public ASN1GeneralizedTime(Date date) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss'Z'");
        simpleDateFormat.setTimeZone(new SimpleTimeZone(0, "Z"));
        this.time = Strings.toByteArray(simpleDateFormat.format(date));
    }

    public ASN1GeneralizedTime(Date date, Locale locale) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss'Z'", locale);
        simpleDateFormat.setTimeZone(new SimpleTimeZone(0, "Z"));
        this.time = Strings.toByteArray(simpleDateFormat.format(date));
    }

    ASN1GeneralizedTime(byte[] bArr) {
        this.time = bArr;
    }

    private String calculateGMTOffset() {
        int i;
        String str = "+";
        TimeZone timeZone = TimeZone.getDefault();
        int rawOffset = timeZone.getRawOffset();
        if (rawOffset < 0) {
            str = "-";
            rawOffset = -rawOffset;
        }
        int i2 = rawOffset / 3600000;
        int i3 = (rawOffset - (((i2 * 60) * 60) * 1000)) / 60000;
        try {
            if (!timeZone.useDaylightTime() || !timeZone.inDaylightTime(getDate())) {
                i = i2;
                return "GMT" + str + convert(i) + ":" + convert(i3);
            }
            i = (str.equals("+") ? 1 : -1) + i2;
            return "GMT" + str + convert(i) + ":" + convert(i3);
        } catch (ParseException e) {
            i = i2;
        }
    }

    private String convert(int i) {
        return i < 10 ? "0" + i : Integer.toString(i);
    }

    public static ASN1GeneralizedTime getInstance(Object obj) {
        if (obj == null || (obj instanceof ASN1GeneralizedTime)) {
            return (ASN1GeneralizedTime) obj;
        }
        if (obj instanceof byte[]) {
            try {
                return (ASN1GeneralizedTime) fromByteArray((byte[]) obj);
            } catch (Exception e) {
                throw new IllegalArgumentException("encoding error in getInstance: " + e.toString());
            }
        } else {
            throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
        }
    }

    public static ASN1GeneralizedTime getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z) {
        ASN1Primitive object = aSN1TaggedObject.getObject();
        return (z || (object instanceof ASN1GeneralizedTime)) ? getInstance(object) : new ASN1GeneralizedTime(((ASN1OctetString) object).getOctets());
    }

    private boolean hasFractionalSeconds() {
        for (int i = 0; i != this.time.length; i++) {
            if (this.time[i] == 46 && i == 14) {
                return true;
            }
        }
        return false;
    }

    /* access modifiers changed from: 0000 */
    public boolean asn1Equals(ASN1Primitive aSN1Primitive) {
        if (!(aSN1Primitive instanceof ASN1GeneralizedTime)) {
            return false;
        }
        return Arrays.areEqual(this.time, ((ASN1GeneralizedTime) aSN1Primitive).time);
    }

    /* access modifiers changed from: 0000 */
    public void encode(ASN1OutputStream aSN1OutputStream) throws IOException {
        aSN1OutputStream.writeEncoded(24, this.time);
    }

    /* access modifiers changed from: 0000 */
    public int encodedLength() {
        int length = this.time.length;
        return length + StreamUtil.calculateBodyLength(length) + 1;
    }

    public Date getDate() throws ParseException {
        SimpleDateFormat simpleDateFormat;
        String str;
        String fromByteArray = Strings.fromByteArray(this.time);
        if (fromByteArray.endsWith("Z")) {
            SimpleDateFormat simpleDateFormat2 = hasFractionalSeconds() ? new SimpleDateFormat("yyyyMMddHHmmss.SSS'Z'") : new SimpleDateFormat("yyyyMMddHHmmss'Z'");
            simpleDateFormat2.setTimeZone(new SimpleTimeZone(0, "Z"));
            String str2 = fromByteArray;
            simpleDateFormat = simpleDateFormat2;
            str = str2;
        } else if (fromByteArray.indexOf(45) > 0 || fromByteArray.indexOf(43) > 0) {
            String time2 = getTime();
            SimpleDateFormat simpleDateFormat3 = hasFractionalSeconds() ? new SimpleDateFormat("yyyyMMddHHmmss.SSSz") : new SimpleDateFormat("yyyyMMddHHmmssz");
            simpleDateFormat3.setTimeZone(new SimpleTimeZone(0, "Z"));
            String str3 = time2;
            simpleDateFormat = simpleDateFormat3;
            str = str3;
        } else {
            SimpleDateFormat simpleDateFormat4 = hasFractionalSeconds() ? new SimpleDateFormat("yyyyMMddHHmmss.SSS") : new SimpleDateFormat("yyyyMMddHHmmss");
            simpleDateFormat4.setTimeZone(new SimpleTimeZone(0, TimeZone.getDefault().getID()));
            String str4 = fromByteArray;
            simpleDateFormat = simpleDateFormat4;
            str = str4;
        }
        if (hasFractionalSeconds()) {
            String substring = str.substring(14);
            int i = 1;
            while (i < substring.length()) {
                char charAt = substring.charAt(i);
                if ('0' > charAt || charAt > '9') {
                    break;
                }
                i++;
            }
            if (i - 1 > 3) {
                str = str.substring(0, 14) + (substring.substring(0, 4) + substring.substring(i));
            } else if (i - 1 == 1) {
                str = str.substring(0, 14) + (substring.substring(0, i) + "00" + substring.substring(i));
            } else if (i - 1 == 2) {
                str = str.substring(0, 14) + (substring.substring(0, i) + "0" + substring.substring(i));
            }
        }
        return simpleDateFormat.parse(str);
    }

    public String getTime() {
        String fromByteArray = Strings.fromByteArray(this.time);
        if (fromByteArray.charAt(fromByteArray.length() - 1) == 'Z') {
            return fromByteArray.substring(0, fromByteArray.length() - 1) + "GMT+00:00";
        }
        int length = fromByteArray.length() - 5;
        char charAt = fromByteArray.charAt(length);
        if (charAt == '-' || charAt == '+') {
            return fromByteArray.substring(0, length) + "GMT" + fromByteArray.substring(length, length + 3) + ":" + fromByteArray.substring(length + 3);
        }
        int length2 = fromByteArray.length() - 3;
        char charAt2 = fromByteArray.charAt(length2);
        return (charAt2 == '-' || charAt2 == '+') ? fromByteArray.substring(0, length2) + "GMT" + fromByteArray.substring(length2) + ":00" : fromByteArray + calculateGMTOffset();
    }

    public String getTimeString() {
        return Strings.fromByteArray(this.time);
    }

    public int hashCode() {
        return Arrays.hashCode(this.time);
    }

    /* access modifiers changed from: 0000 */
    public boolean isConstructed() {
        return false;
    }
}
