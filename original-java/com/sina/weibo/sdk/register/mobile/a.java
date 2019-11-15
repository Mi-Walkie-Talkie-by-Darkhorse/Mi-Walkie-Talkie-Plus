package com.sina.weibo.sdk.register.mobile;

import android.content.Context;
import android.text.TextUtils;
import org.apache.http.HttpStatus;

/* compiled from: PinyinUtils */
public class a {
    private static a a;
    private static short[] b;
    private static final String[] c;
    private static volatile boolean d = false;

    static {
        String[] strArr = new String[HttpStatus.SC_PROXY_AUTHENTICATION_REQUIRED];
        strArr[0] = "a";
        strArr[1] = "ai";
        strArr[2] = "an";
        strArr[3] = "ang";
        strArr[4] = "ao";
        strArr[5] = "ba";
        strArr[6] = "bai";
        strArr[7] = "ban";
        strArr[8] = "bang";
        strArr[9] = "bao";
        strArr[10] = "bei";
        strArr[11] = "ben";
        strArr[12] = "beng";
        strArr[13] = "bi";
        strArr[14] = "bian";
        strArr[15] = "biao";
        strArr[16] = "bie";
        strArr[17] = "bin";
        strArr[18] = "bing";
        strArr[19] = "bo";
        strArr[20] = "bu";
        strArr[21] = "ca";
        strArr[22] = "cai";
        strArr[23] = "can";
        strArr[24] = "cang";
        strArr[25] = "cao";
        strArr[26] = "ce";
        strArr[27] = "cen";
        strArr[28] = "ceng";
        strArr[29] = "cha";
        strArr[30] = "chai";
        strArr[31] = "chan";
        strArr[32] = "chang";
        strArr[33] = "chao";
        strArr[34] = "che";
        strArr[35] = "chen";
        strArr[36] = "cheng";
        strArr[37] = "chi";
        strArr[38] = "chong";
        strArr[39] = "chou";
        strArr[40] = "chu";
        strArr[41] = "chuai";
        strArr[42] = "chuan";
        strArr[43] = "chuang";
        strArr[44] = "chui";
        strArr[45] = "chun";
        strArr[46] = "chuo";
        strArr[47] = "ci";
        strArr[48] = "cong";
        strArr[49] = "cou";
        strArr[50] = "cu";
        strArr[51] = "cuan";
        strArr[52] = "cui";
        strArr[53] = "cun";
        strArr[54] = "cuo";
        strArr[55] = "da";
        strArr[56] = "dai";
        strArr[57] = "dan";
        strArr[58] = "dang";
        strArr[59] = "dao";
        strArr[60] = "de";
        strArr[61] = "deng";
        strArr[62] = "di";
        strArr[63] = "dia";
        strArr[64] = "dian";
        strArr[65] = "diao";
        strArr[66] = "die";
        strArr[67] = "ding";
        strArr[68] = "diu";
        strArr[69] = "dong";
        strArr[70] = "dou";
        strArr[71] = "du";
        strArr[72] = "duan";
        strArr[73] = "dui";
        strArr[74] = "dun";
        strArr[75] = "duo";
        strArr[76] = "e";
        strArr[77] = "ei";
        strArr[78] = "en";
        strArr[79] = "er";
        strArr[80] = "fa";
        strArr[81] = "fan";
        strArr[82] = "fang";
        strArr[83] = "fei";
        strArr[84] = "fen";
        strArr[85] = "feng";
        strArr[86] = "fo";
        strArr[87] = "fou";
        strArr[88] = "fu";
        strArr[89] = "ga";
        strArr[90] = "gai";
        strArr[91] = "gan";
        strArr[92] = "gang";
        strArr[93] = "gao";
        strArr[94] = "ge";
        strArr[95] = "gei";
        strArr[96] = "gen";
        strArr[97] = "geng";
        strArr[98] = "gong";
        strArr[99] = "gou";
        strArr[100] = "gu";
        strArr[101] = "gua";
        strArr[102] = "guai";
        strArr[103] = "guan";
        strArr[104] = "guang";
        strArr[105] = "gui";
        strArr[106] = "gun";
        strArr[107] = "guo";
        strArr[108] = "ha";
        strArr[109] = "hai";
        strArr[110] = "han";
        strArr[111] = "hang";
        strArr[112] = "hao";
        strArr[113] = "he";
        strArr[114] = "hei";
        strArr[115] = "hen";
        strArr[116] = "heng";
        strArr[117] = "hong";
        strArr[118] = "hou";
        strArr[119] = "hu";
        strArr[120] = "hua";
        strArr[121] = "huai";
        strArr[122] = "huan";
        strArr[123] = "huang";
        strArr[124] = "hui";
        strArr[125] = "hun";
        strArr[126] = "huo";
        strArr[127] = "ji";
        strArr[128] = "jia";
        strArr[129] = "jian";
        strArr[130] = "jiang";
        strArr[131] = "jiao";
        strArr[132] = "jie";
        strArr[133] = "jin";
        strArr[134] = "jing";
        strArr[135] = "jiong";
        strArr[136] = "jiu";
        strArr[137] = "ju";
        strArr[138] = "juan";
        strArr[139] = "jue";
        strArr[140] = "jun";
        strArr[141] = "ka";
        strArr[142] = "kai";
        strArr[143] = "kan";
        strArr[144] = "kang";
        strArr[145] = "kao";
        strArr[146] = "ke";
        strArr[147] = "ken";
        strArr[148] = "keng";
        strArr[149] = "kong";
        strArr[150] = "kou";
        strArr[151] = "ku";
        strArr[152] = "kua";
        strArr[153] = "kuai";
        strArr[154] = "kuan";
        strArr[155] = "kuang";
        strArr[156] = "kui";
        strArr[157] = "kun";
        strArr[158] = "kuo";
        strArr[159] = "la";
        strArr[160] = "lai";
        strArr[161] = "lan";
        strArr[162] = "lang";
        strArr[163] = "lao";
        strArr[164] = "le";
        strArr[165] = "lei";
        strArr[166] = "leng";
        strArr[167] = "li";
        strArr[168] = "lia";
        strArr[169] = "lian";
        strArr[170] = "liang";
        strArr[171] = "liao";
        strArr[172] = "lie";
        strArr[173] = "lin";
        strArr[174] = "ling";
        strArr[175] = "liu";
        strArr[176] = "long";
        strArr[177] = "lou";
        strArr[178] = "lu";
        strArr[179] = "luan";
        strArr[180] = "lun";
        strArr[181] = "luo";
        strArr[182] = "lv";
        strArr[183] = "lve";
        strArr[184] = "m";
        strArr[185] = "ma";
        strArr[186] = "mai";
        strArr[187] = "man";
        strArr[188] = "mang";
        strArr[189] = "mao";
        strArr[190] = "me";
        strArr[191] = "mei";
        strArr[192] = "men";
        strArr[193] = "meng";
        strArr[194] = "mi";
        strArr[195] = "mian";
        strArr[196] = "miao";
        strArr[197] = "mie";
        strArr[198] = "min";
        strArr[199] = "ming";
        strArr[200] = "miu";
        strArr[201] = "mo";
        strArr[202] = "mou";
        strArr[203] = "mu";
        strArr[204] = "na";
        strArr[205] = "nai";
        strArr[206] = "nan";
        strArr[207] = "nang";
        strArr[208] = "nao";
        strArr[209] = "ne";
        strArr[210] = "nei";
        strArr[211] = "nen";
        strArr[212] = "neng";
        strArr[213] = "ng";
        strArr[214] = "ni";
        strArr[215] = "nian";
        strArr[216] = "niang";
        strArr[217] = "niao";
        strArr[218] = "nie";
        strArr[219] = "nin";
        strArr[220] = "ning";
        strArr[221] = "niu";
        strArr[222] = "none";
        strArr[223] = "nong";
        strArr[224] = "nou";
        strArr[225] = "nu";
        strArr[226] = "nuan";
        strArr[227] = "nuo";
        strArr[228] = "nv";
        strArr[229] = "nve";
        strArr[230] = "o";
        strArr[231] = "ou";
        strArr[232] = "pa";
        strArr[233] = "pai";
        strArr[234] = "pan";
        strArr[235] = "pang";
        strArr[236] = "pao";
        strArr[237] = "pei";
        strArr[238] = "pen";
        strArr[239] = "peng";
        strArr[240] = "pi";
        strArr[241] = "pian";
        strArr[242] = "piao";
        strArr[243] = "pie";
        strArr[244] = "pin";
        strArr[245] = "ping";
        strArr[246] = "po";
        strArr[247] = "pou";
        strArr[248] = "pu";
        strArr[249] = "qi";
        strArr[250] = "qia";
        strArr[251] = "qian";
        strArr[252] = "qiang";
        strArr[253] = "qiao";
        strArr[254] = "qie";
        strArr[255] = "qin";
        strArr[256] = "qing";
        strArr[257] = "qiong";
        strArr[258] = "qiu";
        strArr[259] = "qu";
        strArr[260] = "quan";
        strArr[261] = "que";
        strArr[262] = "qun";
        strArr[263] = "ran";
        strArr[264] = "rang";
        strArr[265] = "rao";
        strArr[266] = "re";
        strArr[267] = "ren";
        strArr[268] = "reng";
        strArr[269] = "ri";
        strArr[270] = "rong";
        strArr[271] = "rou";
        strArr[272] = "ru";
        strArr[273] = "ruan";
        strArr[274] = "rui";
        strArr[275] = "run";
        strArr[276] = "ruo";
        strArr[277] = "sa";
        strArr[278] = "sai";
        strArr[279] = "san";
        strArr[280] = "sang";
        strArr[281] = "sao";
        strArr[282] = "se";
        strArr[283] = "sen";
        strArr[284] = "seng";
        strArr[285] = "sha";
        strArr[286] = "shai";
        strArr[287] = "shan";
        strArr[288] = "shang";
        strArr[289] = "shao";
        strArr[290] = "she";
        strArr[291] = "shei";
        strArr[292] = "shen";
        strArr[293] = "sheng";
        strArr[294] = "shi";
        strArr[295] = "shou";
        strArr[296] = "shu";
        strArr[297] = "shua";
        strArr[298] = "shuai";
        strArr[299] = "shuan";
        strArr[300] = "shuang";
        strArr[301] = "shui";
        strArr[302] = "shun";
        strArr[303] = "shuo";
        strArr[304] = "si";
        strArr[305] = "song";
        strArr[306] = "sou";
        strArr[307] = "su";
        strArr[308] = "suan";
        strArr[309] = "sui";
        strArr[310] = "sun";
        strArr[311] = "suo";
        strArr[312] = "ta";
        strArr[313] = "tai";
        strArr[314] = "tan";
        strArr[315] = "tang";
        strArr[316] = "tao";
        strArr[317] = "te";
        strArr[318] = "teng";
        strArr[319] = "ti";
        strArr[320] = "tian";
        strArr[321] = "tiao";
        strArr[322] = "tie";
        strArr[323] = "ting";
        strArr[324] = "tong";
        strArr[325] = "tou";
        strArr[326] = "tu";
        strArr[327] = "tuan";
        strArr[328] = "tui";
        strArr[329] = "tun";
        strArr[330] = "tuo";
        strArr[331] = "wa";
        strArr[332] = "wai";
        strArr[333] = "wan";
        strArr[334] = "wang";
        strArr[335] = "wei";
        strArr[336] = "wen";
        strArr[337] = "weng";
        strArr[338] = "wo";
        strArr[339] = "wu";
        strArr[340] = "xi";
        strArr[341] = "xia";
        strArr[342] = "xian";
        strArr[343] = "xiang";
        strArr[344] = "xiao";
        strArr[345] = "xie";
        strArr[346] = "xin";
        strArr[347] = "xing";
        strArr[348] = "xiong";
        strArr[349] = "xiu";
        strArr[350] = "xu";
        strArr[351] = "xuan";
        strArr[352] = "xue";
        strArr[353] = "xun";
        strArr[354] = "ya";
        strArr[355] = "yan";
        strArr[356] = "yang";
        strArr[357] = "yao";
        strArr[358] = "ye";
        strArr[359] = "yi";
        strArr[360] = "yiao";
        strArr[361] = "yin";
        strArr[362] = "ying";
        strArr[363] = "yo";
        strArr[364] = "yong";
        strArr[365] = "you";
        strArr[366] = "yu";
        strArr[367] = "yuan";
        strArr[368] = "yue";
        strArr[369] = "yun";
        strArr[370] = "za";
        strArr[371] = "zai";
        strArr[372] = "zan";
        strArr[373] = "zang";
        strArr[374] = "zao";
        strArr[375] = "ze";
        strArr[376] = "zei";
        strArr[377] = "zen";
        strArr[378] = "zeng";
        strArr[379] = "zha";
        strArr[380] = "zhai";
        strArr[381] = "zhan";
        strArr[382] = "zhang";
        strArr[383] = "zhao";
        strArr[384] = "zhe";
        strArr[385] = "zhei";
        strArr[386] = "zhen";
        strArr[387] = "zheng";
        strArr[388] = "zhi";
        strArr[389] = "zhong";
        strArr[390] = "zhou";
        strArr[391] = "zhu";
        strArr[392] = "zhua";
        strArr[393] = "zhuai";
        strArr[394] = "zhuan";
        strArr[395] = "zhuang";
        strArr[396] = "zhui";
        strArr[397] = "zhun";
        strArr[398] = "zhuo";
        strArr[399] = "zi";
        strArr[400] = "zong";
        strArr[401] = "zou";
        strArr[402] = "zu";
        strArr[403] = "zuan";
        strArr[404] = "zui";
        strArr[405] = "zun";
        strArr[406] = "zuo";
        c = strArr;
    }

    private a() {
    }

    public static synchronized a a(Context context) {
        a aVar;
        synchronized (a.class) {
            if (a == null) {
                a = new a();
            }
            b(context);
            aVar = a;
        }
        return aVar;
    }

    /* JADX WARNING: type inference failed for: r1v0 */
    /* JADX WARNING: type inference failed for: r2v1, types: [java.io.InputStream] */
    /* JADX WARNING: type inference failed for: r2v2 */
    /* JADX WARNING: type inference failed for: r2v3, types: [java.io.InputStream] */
    /* JADX WARNING: type inference failed for: r2v4 */
    /* JADX WARNING: type inference failed for: r1v6, types: [java.io.InputStream] */
    /* JADX WARNING: type inference failed for: r2v7 */
    /* JADX WARNING: type inference failed for: r1v8 */
    /* JADX WARNING: type inference failed for: r1v10 */
    /* JADX WARNING: type inference failed for: r1v21 */
    /* JADX WARNING: type inference failed for: r2v10 */
    /* JADX WARNING: type inference failed for: r2v11 */
    /* JADX WARNING: type inference failed for: r2v12 */
    /* JADX WARNING: type inference failed for: r2v13 */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x0056 A[SYNTHETIC, Splitter:B:33:0x0056] */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x005b A[Catch:{ IOException -> 0x005f }] */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x0069 A[SYNTHETIC, Splitter:B:44:0x0069] */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x006e A[Catch:{ IOException -> 0x0072 }] */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x0078 A[SYNTHETIC, Splitter:B:52:0x0078] */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x007d A[Catch:{ IOException -> 0x0081 }] */
    /* JADX WARNING: Removed duplicated region for block: B:75:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:76:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Unknown variable types count: 4 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static void b(android.content.Context r7) {
        /*
            r1 = 0
            r3 = 0
            r0 = 0
            r2 = 0
            boolean r4 = d     // Catch:{ IOException -> 0x004f, Exception -> 0x0061, all -> 0x0074 }
            if (r4 == 0) goto L_0x0013
            if (r1 == 0) goto L_0x000d
            r2.close()     // Catch:{ IOException -> 0x009c }
        L_0x000d:
            if (r1 == 0) goto L_0x0012
            r0.close()     // Catch:{ IOException -> 0x009c }
        L_0x0012:
            return
        L_0x0013:
            android.content.res.AssetManager r0 = r7.getAssets()     // Catch:{ IOException -> 0x004f, Exception -> 0x0061, all -> 0x0074 }
            java.lang.String r2 = "pinyinindex"
            java.io.InputStream r2 = r0.open(r2)     // Catch:{ IOException -> 0x004f, Exception -> 0x0061, all -> 0x0074 }
            java.io.DataInputStream r0 = new java.io.DataInputStream     // Catch:{ IOException -> 0x0095, Exception -> 0x0090, all -> 0x0083 }
            r0.<init>(r2)     // Catch:{ IOException -> 0x0095, Exception -> 0x0090, all -> 0x0083 }
            int r1 = r0.available()     // Catch:{ IOException -> 0x0099, Exception -> 0x0093 }
            int r1 = r1 >> 1
            long r4 = (long) r1     // Catch:{ IOException -> 0x0099, Exception -> 0x0093 }
            int r1 = (int) r4     // Catch:{ IOException -> 0x0099, Exception -> 0x0093 }
            short[] r1 = new short[r1]     // Catch:{ IOException -> 0x0099, Exception -> 0x0093 }
            b = r1     // Catch:{ IOException -> 0x0099, Exception -> 0x0093 }
            r1 = r3
        L_0x002f:
            short[] r3 = b     // Catch:{ IOException -> 0x0099, Exception -> 0x0093 }
            int r3 = r3.length     // Catch:{ IOException -> 0x0099, Exception -> 0x0093 }
            if (r1 < r3) goto L_0x0044
            r1 = 1
            d = r1     // Catch:{ IOException -> 0x0099, Exception -> 0x0093 }
            if (r0 == 0) goto L_0x003c
            r0.close()     // Catch:{ IOException -> 0x0042 }
        L_0x003c:
            if (r2 == 0) goto L_0x0012
            r2.close()     // Catch:{ IOException -> 0x0042 }
            goto L_0x0012
        L_0x0042:
            r0 = move-exception
            goto L_0x0012
        L_0x0044:
            short[] r3 = b     // Catch:{ IOException -> 0x0099, Exception -> 0x0093 }
            short r4 = r0.readShort()     // Catch:{ IOException -> 0x0099, Exception -> 0x0093 }
            r3[r1] = r4     // Catch:{ IOException -> 0x0099, Exception -> 0x0093 }
            int r1 = r1 + 1
            goto L_0x002f
        L_0x004f:
            r0 = move-exception
            r0 = r1
        L_0x0051:
            r2 = 0
            d = r2     // Catch:{ all -> 0x008a }
            if (r0 == 0) goto L_0x0059
            r0.close()     // Catch:{ IOException -> 0x005f }
        L_0x0059:
            if (r1 == 0) goto L_0x0012
            r1.close()     // Catch:{ IOException -> 0x005f }
            goto L_0x0012
        L_0x005f:
            r0 = move-exception
            goto L_0x0012
        L_0x0061:
            r0 = move-exception
            r0 = r1
            r2 = r1
        L_0x0064:
            r1 = 0
            d = r1     // Catch:{ all -> 0x0085 }
            if (r0 == 0) goto L_0x006c
            r0.close()     // Catch:{ IOException -> 0x0072 }
        L_0x006c:
            if (r2 == 0) goto L_0x0012
            r2.close()     // Catch:{ IOException -> 0x0072 }
            goto L_0x0012
        L_0x0072:
            r0 = move-exception
            goto L_0x0012
        L_0x0074:
            r0 = move-exception
            r2 = r1
        L_0x0076:
            if (r1 == 0) goto L_0x007b
            r1.close()     // Catch:{ IOException -> 0x0081 }
        L_0x007b:
            if (r2 == 0) goto L_0x0080
            r2.close()     // Catch:{ IOException -> 0x0081 }
        L_0x0080:
            throw r0
        L_0x0081:
            r1 = move-exception
            goto L_0x0080
        L_0x0083:
            r0 = move-exception
            goto L_0x0076
        L_0x0085:
            r1 = move-exception
            r6 = r1
            r1 = r0
            r0 = r6
            goto L_0x0076
        L_0x008a:
            r2 = move-exception
            r6 = r2
            r2 = r1
            r1 = r0
            r0 = r6
            goto L_0x0076
        L_0x0090:
            r0 = move-exception
            r0 = r1
            goto L_0x0064
        L_0x0093:
            r1 = move-exception
            goto L_0x0064
        L_0x0095:
            r0 = move-exception
            r0 = r1
            r1 = r2
            goto L_0x0051
        L_0x0099:
            r1 = move-exception
            r1 = r2
            goto L_0x0051
        L_0x009c:
            r0 = move-exception
            goto L_0x0012
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sina.weibo.sdk.register.mobile.a.b(android.content.Context):void");
    }

    private String a(char c2) {
        if (!d) {
            return "";
        }
        String str = "";
        if (c2 == 12295) {
            return "LING";
        }
        if (c2 < 19968 || c2 > 40869) {
            return String.valueOf(c2);
        }
        String str2 = c[b[c2 - 19968]];
        if (str2 == null) {
            return "";
        }
        return str2;
    }

    public String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        if (!d) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int i = 0; i < length; i++) {
            sb.append(a(str.charAt(i)));
        }
        return sb.toString();
    }

    public static a a() {
        return a;
    }
}
