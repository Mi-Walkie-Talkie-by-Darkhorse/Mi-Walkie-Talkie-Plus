package com.sina.weibo.sdk.statistic;

/* compiled from: PageLog */
class f {
    private static String f = "session";
    private static long g = 1000;
    protected LogType a;
    protected String b;
    protected long c;
    private long d;
    private long e;

    public f(String str) {
        this.b = str;
        this.c = System.currentTimeMillis();
    }

    public f() {
    }

    public LogType e() {
        return this.a;
    }

    public void a(LogType logType) {
        this.a = logType;
    }

    public String f() {
        return this.b;
    }

    public long g() {
        return this.c;
    }

    public long h() {
        return this.d;
    }

    public long i() {
        return this.e;
    }
}
