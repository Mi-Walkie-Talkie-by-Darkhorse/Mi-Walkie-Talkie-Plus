package com.amap.api.mapcore.util;

@gm(a = "update_item_file")
/* compiled from: DTFileInfo */
class az {
    @gn(a = "mAdcode", b = 6)
    private String a = "";
    @gn(a = "file", b = 6)
    private String b = "";

    public az() {
    }

    public az(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    public String a() {
        return this.b;
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
