package com.amap.api.mapcore.util;

@gm(a = "update_item_download_info")
/* compiled from: DTDownloadInfo */
class ay {
    @gn(a = "mAdcode", b = 6)
    private String a = "";
    @gn(a = "fileLength", b = 5)
    private long b = 0;
    @gn(a = "splitter", b = 2)
    private int c = 0;
    @gn(a = "startPos", b = 5)
    private long d = 0;
    @gn(a = "endPos", b = 5)
    private long e = 0;

    public ay() {
    }

    public ay(String str, long j, int i, long j2, long j3) {
        this.a = str;
        this.b = j;
        this.c = i;
        this.d = j2;
        this.e = j3;
    }

    public static String a(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("mAdcode");
        sb.append("='");
        sb.append(str);
        sb.append("'");
        return sb.toString();
    }
}
