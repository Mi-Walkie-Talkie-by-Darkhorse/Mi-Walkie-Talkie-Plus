package org.apache.http.client.utils;

import java.io.IOException;
import java.net.URI;
import java.util.List;
import java.util.Scanner;
import org.apache.http.HttpEntity;
import org.apache.http.NameValuePair;

@Deprecated
public class URLEncodedUtils {
    public static final String CONTENT_TYPE = "application/x-www-form-urlencoded";

    public URLEncodedUtils() {
        throw new RuntimeException("Stub!");
    }

    public static List<NameValuePair> parse(URI uri, String str) {
        throw new RuntimeException("Stub!");
    }

    public static List<NameValuePair> parse(HttpEntity httpEntity) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static boolean isEncoded(HttpEntity httpEntity) {
        throw new RuntimeException("Stub!");
    }

    public static void parse(List<NameValuePair> list, Scanner scanner, String str) {
        throw new RuntimeException("Stub!");
    }

    public static String format(List<? extends NameValuePair> list, String str) {
        throw new RuntimeException("Stub!");
    }
}
