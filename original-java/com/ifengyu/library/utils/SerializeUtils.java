package com.ifengyu.library.utils;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.net.URLDecoder;
import java.net.URLEncoder;
import org.bouncycastle.i18n.LocalizedMessage;

/* renamed from: com.ifengyu.library.utils.q */
/* loaded from: classes2.dex */
public class SerializeUtils {
    /* renamed from: a */
    public static <T> T m8623a(String str) {
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(URLDecoder.decode(str, "UTF-8").getBytes(LocalizedMessage.DEFAULT_ENCODING));
            ObjectInputStream objectInputStream = new ObjectInputStream(byteArrayInputStream);
            T t = (T) objectInputStream.readObject();
            objectInputStream.close();
            byteArrayInputStream.close();
            return t;
        } catch (IOException | ClassNotFoundException e) {
            C4971k.m8647m("SerializeUtils", e.getMessage());
            return null;
        }
    }

    /* renamed from: b */
    public static String m8622b(Object obj) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            objectOutputStream.writeObject(obj);
            String encode = URLEncoder.encode(byteArrayOutputStream.toString(LocalizedMessage.DEFAULT_ENCODING), "UTF-8");
            objectOutputStream.close();
            byteArrayOutputStream.close();
            return encode;
        } catch (IOException e) {
            C4971k.m8647m("SerializeUtils", e.getMessage());
            return null;
        }
    }
}
