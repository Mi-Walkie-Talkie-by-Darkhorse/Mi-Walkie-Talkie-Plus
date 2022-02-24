package com.ifengyu.library.a;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.net.URLDecoder;
import java.net.URLEncoder;
import org.bouncycastle.i18n.LocalizedMessage;

/* compiled from: SerializeUtils.java */
/* loaded from: classes2.dex */
public class k {
    public static String a(Object obj) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            objectOutputStream.writeObject(obj);
            String encode = URLEncoder.encode(byteArrayOutputStream.toString(LocalizedMessage.DEFAULT_ENCODING), "UTF-8");
            objectOutputStream.close();
            byteArrayOutputStream.close();
            return encode;
        } catch (IOException e) {
            g.d("SerializeUtils", e.getMessage());
            return null;
        }
    }

    public static <T> T a(String str) {
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(URLDecoder.decode(str, "UTF-8").getBytes(LocalizedMessage.DEFAULT_ENCODING));
            ObjectInputStream objectInputStream = new ObjectInputStream(byteArrayInputStream);
            T t = (T) objectInputStream.readObject();
            objectInputStream.close();
            byteArrayInputStream.close();
            return t;
        } catch (IOException | ClassNotFoundException e) {
            g.d("SerializeUtils", e.getMessage());
            return null;
        }
    }
}
