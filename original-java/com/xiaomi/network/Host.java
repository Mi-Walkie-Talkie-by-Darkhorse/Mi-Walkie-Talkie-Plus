package com.xiaomi.network;

import java.net.InetSocketAddress;

public final class Host {
    private String a;
    private int b;

    public Host(String str, int i) {
        this.a = str;
        this.b = i;
    }

    public static Host a(String str, int i) {
        int lastIndexOf = str.lastIndexOf(":");
        if (lastIndexOf != -1) {
            String substring = str.substring(0, lastIndexOf);
            try {
                int parseInt = Integer.parseInt(str.substring(lastIndexOf + 1));
                if (parseInt > 0) {
                    i = parseInt;
                }
                str = substring;
            } catch (NumberFormatException e) {
                str = substring;
            }
        }
        return new Host(str, i);
    }

    public static InetSocketAddress b(String str, int i) {
        Host a2 = a(str, i);
        return new InetSocketAddress(a2.b(), a2.a());
    }

    public int a() {
        return this.b;
    }

    public String b() {
        return this.a;
    }

    public String toString() {
        return this.b > 0 ? this.a + ":" + this.b : this.a;
    }
}
