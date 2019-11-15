package com.ksyun.ks3.a;

import android.net.ParseException;
import com.ksyun.ks3.exception.Ks3ClientException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.SimpleTimeZone;

/* compiled from: DateUtil */
public class b {
    public static Date a(String str) throws Exception {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("E, dd MMM yyyy HH:mm:ss z", Locale.UK);
        simpleDateFormat.setTimeZone(new SimpleTimeZone(0, "GMT"));
        if (str.contains("-") && str.contains("T")) {
            if (str.endsWith("Z")) {
                str = str.replace("Z", " GMT");
                simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS z", Locale.UK);
            } else if (str.endsWith("+08:00")) {
                str = str.replace("+08:00", " GMT");
                simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS z", Locale.UK);
            }
        }
        try {
            return simpleDateFormat.parse(str);
        } catch (ParseException e) {
            throw new Ks3ClientException("The server did not return the expected value,it is " + str, e);
        }
    }

    public static String a() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss 'GMT'", Locale.ENGLISH);
        Calendar instance = Calendar.getInstance(Locale.CHINA);
        instance.add(14, -(instance.get(15) + instance.get(16)));
        return simpleDateFormat.format(instance.getTime());
    }
}
