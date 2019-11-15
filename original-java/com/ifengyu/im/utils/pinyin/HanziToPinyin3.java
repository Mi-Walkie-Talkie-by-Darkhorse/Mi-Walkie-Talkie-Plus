package com.ifengyu.im.utils.pinyin;

import android.text.TextUtils;
import android.util.Log;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Locale;
import org.apache.http.HttpStatus;

public class HanziToPinyin3 {
    private static final Collator COLLATOR = Collator.getInstance(Locale.CHINESE);
    private static final boolean DEBUG = false;
    private static final String FIRST_PINYIN_UNIHAN = "阿";
    private static final String LAST_PINYIN_UNIHAN = "鿿";
    public static final byte[][] PINYINS;
    private static final String TAG = "HanziToPinyin";
    public static final char[] UNIHANS;
    private static HanziToPinyin3 sInstance;
    private final boolean mHasChinaCollator;

    public static class Token {
        public static final int LATIN = 1;
        public static final int PINYIN = 2;
        public static final String SEPARATOR = " ";
        public static final int UNKNOWN = 3;
        public String source;
        public String target;
        public int type;

        public Token() {
        }

        public Token(int i, String str, String str2) {
            this.type = i;
            this.source = str;
            this.target = str2;
        }
    }

    static {
        char[] cArr = new char[HttpStatus.SC_FAILED_DEPENDENCY];
        // fill-array-data instruction
        cArr[0] = -27073;
        cArr[1] = 21710;
        cArr[2] = 23433;
        cArr[3] = -32594;
        cArr[4] = 20985;
        cArr[5] = 20843;
        cArr[6] = 25344;
        cArr[7] = 25203;
        cArr[8] = -28506;
        cArr[9] = 21241;
        cArr[10] = -27070;
        cArr[11] = 22868;
        cArr[12] = 20283;
        cArr[13] = 23620;
        cArr[14] = -28743;
        cArr[15] = 28780;
        cArr[16] = 24971;
        cArr[17] = 27715;
        cArr[18] = 20907;
        cArr[19] = 30326;
        cArr[20] = 23788;
        cArr[21] = 22163;
        cArr[22] = 20594;
        cArr[23] = 21442;
        cArr[24] = 20179;
        cArr[25] = 25761;
        cArr[26] = 20874;
        cArr[27] = 23934;
        cArr[28] = 26365;
        cArr[29] = 26366;
        cArr[30] = 23652;
        cArr[31] = 21449;
        cArr[32] = -32122;
        cArr[33] = -28737;
        cArr[34] = 20261;
        cArr[35] = 25220;
        cArr[36] = -28826;
        cArr[37] = 25275;
        cArr[38] = 27784;
        cArr[39] = 27785;
        cArr[40] = -27081;
        cArr[41] = 21507;
        cArr[42] = 20805;
        cArr[43] = 25277;
        cArr[44] = 20986;
        cArr[45] = 27451;
        cArr[46] = 25571;
        cArr[47] = 24027;
        cArr[48] = 20997;
        cArr[49] = 21561;
        cArr[50] = 26110;
        cArr[51] = -28620;
        cArr[52] = 21618;
        cArr[53] = 21254;
        cArr[54] = 20945;
        cArr[55] = 31895;
        cArr[56] = 27718;
        cArr[57] = 23828;
        cArr[58] = -28504;
        cArr[59] = 25619;
        cArr[60] = 21649;
        cArr[61] = 21574;
        cArr[62] = 20025;
        cArr[63] = 24403;
        cArr[64] = 20992;
        cArr[65] = 22042;
        cArr[66] = 25189;
        cArr[67] = 28783;
        cArr[68] = 27664;
        cArr[69] = 22002;
        cArr[70] = 30008;
        cArr[71] = 20993;
        cArr[72] = 29241;
        cArr[73] = 19969;
        cArr[74] = 19999;
        cArr[75] = 19996;
        cArr[76] = 21562;
        cArr[77] = 21438;
        cArr[78] = -32751;
        cArr[79] = -30360;
        cArr[80] = 21544;
        cArr[81] = 22810;
        cArr[82] = 22968;
        cArr[83] = -29706;
        cArr[84] = 22848;
        cArr[85] = -26715;
        cArr[86] = 20799;
        cArr[87] = 21457;
        cArr[88] = 24070;
        cArr[89] = 21274;
        cArr[90] = -26402;
        cArr[91] = 20998;
        cArr[92] = 20016;
        cArr[93] = -30331;
        cArr[94] = 20175;
        cArr[95] = 32017;
        cArr[96] = 20245;
        cArr[97] = 26094;
        cArr[98] = 20357;
        cArr[99] = 29976;
        cArr[100] = 20872;
        cArr[101] = 30347;
        cArr[102] = 25096;
        cArr[103] = 32473;
        cArr[104] = 26681;
        cArr[105] = 21039;
        cArr[106] = 24037;
        cArr[107] = 21246;
        cArr[108] = 20272;
        cArr[109] = 29916;
        cArr[110] = 20054;
        cArr[111] = 20851;
        cArr[112] = 20809;
        cArr[113] = 24402;
        cArr[114] = 20008;
        cArr[115] = 21593;
        cArr[116] = 21704;
        cArr[117] = 21645;
        cArr[118] = 20292;
        cArr[119] = 22831;
        cArr[120] = -31968;
        cArr[121] = -29757;
        cArr[122] = -24878;
        cArr[123] = 25323;
        cArr[124] = 20136;
        cArr[125] = 22135;
        cArr[126] = 21503;
        cArr[127] = -24767;
        cArr[128] = 20079;
        cArr[129] = -32079;
        cArr[130] = 24576;
        cArr[131] = 29375;
        cArr[132] = 24031;
        cArr[133] = 28784;
        cArr[134] = 26127;
        cArr[135] = 21529;
        cArr[136] = 19980;
        cArr[137] = 21152;
        cArr[138] = 25099;
        cArr[139] = 27743;
        cArr[140] = -32131;
        cArr[141] = -27082;
        cArr[142] = 24062;
        cArr[143] = 22357;
        cArr[144] = 20866;
        cArr[145] = 20009;
        cArr[146] = 20965;
        cArr[147] = 23010;
        cArr[148] = 22104;
        cArr[149] = 20891;
        cArr[150] = 21652;
        cArr[151] = 24320;
        cArr[152] = 21002;
        cArr[153] = 24572;
        cArr[154] = 23611;
        cArr[155] = 21308;
        cArr[156] = -32626;
        cArr[157] = 21157;
        cArr[158] = 31354;
        cArr[159] = 25248;
        cArr[160] = 25181;
        cArr[161] = 22840;
        cArr[162] = -31569;
        cArr[163] = 23485;
        cArr[164] = 21281;
        cArr[165] = 20111;
        cArr[166] = 22372;
        cArr[167] = 25193;
        cArr[168] = 22403;
        cArr[169] = 26469;
        cArr[170] = 20848;
        cArr[171] = 21879;
        cArr[172] = 25438;
        cArr[173] = -32629;
        cArr[174] = 21202;
        cArr[175] = 23834;
        cArr[176] = 21013;
        cArr[177] = 20457;
        cArr[178] = 22849;
        cArr[179] = -32145;
        cArr[180] = 25769;
        cArr[181] = 21015;
        cArr[182] = 25294;
        cArr[183] = 21026;
        cArr[184] = 28316;
        cArr[185] = 22230;
        cArr[186] = -24679;
        cArr[187] = 30620;
        cArr[188] = 22108;
        cArr[189] = 23048;
        cArr[190] = 30055;
        cArr[191] = 25249;
        cArr[192] = 32599;
        cArr[193] = 21603;
        cArr[194] = 22920;
        cArr[195] = 22475;
        cArr[196] = 23258;
        cArr[197] = 29284;
        cArr[198] = 29483;
        cArr[199] = 20040;
        cArr[200] = 21573;
        cArr[201] = -27160;
        cArr[202] = 30015;
        cArr[203] = 21674;
        cArr[204] = 23424;
        cArr[205] = 21941;
        cArr[206] = 20060;
        cArr[207] = 27665;
        cArr[208] = 21517;
        cArr[209] = -29652;
        cArr[210] = 25720;
        cArr[211] = 21726;
        cArr[212] = 27626;
        cArr[213] = 21999;
        cArr[214] = 25295;
        cArr[215] = -32439;
        cArr[216] = 22241;
        cArr[217] = 22228;
        cArr[218] = 23404;
        cArr[219] = 30098;
        cArr[220] = 23070;
        cArr[221] = 24641;
        cArr[222] = -32515;
        cArr[223] = 22958;
        cArr[224] = 25288;
        cArr[225] = 23330;
        cArr[226] = -25057;
        cArr[227] = 25423;
        cArr[228] = 22236;
        cArr[229] = 23425;
        cArr[230] = 22942;
        cArr[231] = 20892;
        cArr[232] = 32698;
        cArr[233] = 22900;
        cArr[234] = 22907;
        cArr[235] = 30111;
        cArr[236] = -24895;
        cArr[237] = -28467;
        cArr[238] = 21908;
        cArr[239] = -29772;
        cArr[240] = 22929;
        cArr[241] = 25293;
        cArr[242] = 30469;
        cArr[243] = 20051;
        cArr[244] = 25243;
        cArr[245] = 21624;
        cArr[246] = 21943;
        cArr[247] = 21257;
        cArr[248] = 19989;
        cArr[249] = 22248;
        cArr[250] = 21117;
        cArr[251] = 27669;
        cArr[252] = 23000;
        cArr[253] = 20050;
        cArr[254] = -27509;
        cArr[255] = 21078;
        cArr[256] = 20166;
        cArr[257] = 19971;
        cArr[258] = 25488;
        cArr[259] = 21315;
        cArr[260] = 21595;
        cArr[261] = 24708;
        cArr[262] = 30335;
        cArr[263] = 20146;
        cArr[264] = 29381;
        cArr[265] = -32114;
        cArr[266] = 19992;
        cArr[267] = 21306;
        cArr[268] = 23761;
        cArr[269] = 32570;
        cArr[270] = 22795;
        cArr[271] = 21605;
        cArr[272] = 31331;
        cArr[273] = 23046;
        cArr[274] = 24825;
        cArr[275] = 20154;
        cArr[276] = 25172;
        cArr[277] = 26085;
        cArr[278] = -31944;
        cArr[279] = 21433;
        cArr[280] = -28518;
        cArr[281] = 25404;
        cArr[282] = 22567;
        cArr[283] = 23121;
        cArr[284] = 30628;
        cArr[285] = 25468;
        cArr[286] = 20200;
        cArr[287] = 27618;
        cArr[288] = 19977;
        cArr[289] = 26706;
        cArr[290] = 25531;
        cArr[291] = -27222;
        cArr[292] = 26862;
        cArr[293] = 20711;
        cArr[294] = 26432;
        cArr[295] = 31579;
        cArr[296] = 23665;
        cArr[297] = 20260;
        cArr[298] = 24368;
        cArr[299] = 22882;
        cArr[300] = 30003;
        cArr[301] = -31848;
        cArr[302] = 25938;
        cArr[303] = 21319;
        cArr[304] = 23608;
        cArr[305] = 21454;
        cArr[306] = 20070;
        cArr[307] = 21047;
        cArr[308] = -30608;
        cArr[309] = -27159;
        cArr[310] = 21452;
        cArr[311] = -29695;
        cArr[312] = 21550;
        cArr[313] = -29708;
        cArr[314] = 21430;
        cArr[315] = 24554;
        cArr[316] = 25436;
        cArr[317] = -32049;
        cArr[318] = 29435;
        cArr[319] = 22794;
        cArr[320] = 23385;
        cArr[321] = 21766;
        cArr[322] = 20182;
        cArr[323] = 22268;
        cArr[324] = 22349;
        cArr[325] = 27748;
        cArr[326] = 22834;
        cArr[327] = 24529;
        cArr[328] = 29093;
        cArr[329] = 21076;
        cArr[330] = 22825;
        cArr[331] = 26091;
        cArr[332] = 24086;
        cArr[333] = 21381;
        cArr[334] = 22258;
        cArr[335] = 20599;
        cArr[336] = 20984;
        cArr[337] = 28237;
        cArr[338] = 25512;
        cArr[339] = 21534;
        cArr[340] = 20039;
        cArr[341] = 31349;
        cArr[342] = 27498;
        cArr[343] = 24367;
        cArr[344] = 23587;
        cArr[345] = 21361;
        cArr[346] = 26167;
        cArr[347] = 32705;
        cArr[348] = 25373;
        cArr[349] = 20044;
        cArr[350] = 22805;
        cArr[351] = -31118;
        cArr[352] = 20186;
        cArr[353] = 20065;
        cArr[354] = 28785;
        cArr[355] = 20123;
        cArr[356] = 24515;
        cArr[357] = 26143;
        cArr[358] = 20982;
        cArr[359] = 20241;
        cArr[360] = 21505;
        cArr[361] = 21509;
        cArr[362] = 21066;
        cArr[363] = 22339;
        cArr[364] = 20011;
        cArr[365] = 24697;
        cArr[366] = 22830;
        cArr[367] = 24186;
        cArr[368] = 20539;
        cArr[369] = 19968;
        cArr[370] = 22233;
        cArr[371] = 24212;
        cArr[372] = 21727;
        cArr[373] = 20323;
        cArr[374] = 20248;
        cArr[375] = 25180;
        cArr[376] = 22246;
        cArr[377] = 26352;
        cArr[378] = 26197;
        cArr[379] = 31584;
        cArr[380] = 31612;
        cArr[381] = 24064;
        cArr[382] = 28797;
        cArr[383] = 20802;
        cArr[384] = 21288;
        cArr[385] = 20654;
        cArr[386] = 21017;
        cArr[387] = -29380;
        cArr[388] = 24590;
        cArr[389] = 22679;
        cArr[390] = 25166;
        cArr[391] = 25434;
        cArr[392] = 27838;
        cArr[393] = 24352;
        cArr[394] = -27265;
        cArr[395] = -27273;
        cArr[396] = 20299;
        cArr[397] = -30969;
        cArr[398] = -29410;
        cArr[399] = 20105;
        cArr[400] = 20043;
        cArr[401] = 23769;
        cArr[402] = 24226;
        cArr[403] = 20013;
        cArr[404] = 24030;
        cArr[405] = 26417;
        cArr[406] = 25235;
        cArr[407] = 25341;
        cArr[408] = 19987;
        cArr[409] = 22918;
        cArr[410] = -26951;
        cArr[411] = 23442;
        cArr[412] = 21331;
        cArr[413] = 20082;
        cArr[414] = 23447;
        cArr[415] = -28487;
        cArr[416] = 31199;
        cArr[417] = -27461;
        cArr[418] = 21404;
        cArr[419] = 23562;
        cArr[420] = 26152;
        cArr[421] = 20825;
        cArr[422] = -24637;
        cArr[423] = -24636;
        UNIHANS = cArr;
        byte[][] bArr = new byte[HttpStatus.SC_FAILED_DEPENDENCY][];
        bArr[0] = new byte[]{65, 0, 0, 0, 0, 0};
        bArr[1] = new byte[]{65, 73, 0, 0, 0, 0};
        bArr[2] = new byte[]{65, 78, 0, 0, 0, 0};
        bArr[3] = new byte[]{65, 78, 71, 0, 0, 0};
        bArr[4] = new byte[]{65, 79, 0, 0, 0, 0};
        bArr[5] = new byte[]{66, 65, 0, 0, 0, 0};
        bArr[6] = new byte[]{66, 65, 73, 0, 0, 0};
        bArr[7] = new byte[]{66, 65, 78, 0, 0, 0};
        bArr[8] = new byte[]{66, 65, 78, 71, 0, 0};
        bArr[9] = new byte[]{66, 65, 79, 0, 0, 0};
        bArr[10] = new byte[]{66, 69, 73, 0, 0, 0};
        bArr[11] = new byte[]{66, 69, 78, 0, 0, 0};
        bArr[12] = new byte[]{66, 69, 78, 71, 0, 0};
        bArr[13] = new byte[]{66, 73, 0, 0, 0, 0};
        bArr[14] = new byte[]{66, 73, 65, 78, 0, 0};
        bArr[15] = new byte[]{66, 73, 65, 79, 0, 0};
        bArr[16] = new byte[]{66, 73, 69, 0, 0, 0};
        bArr[17] = new byte[]{66, 73, 78, 0, 0, 0};
        bArr[18] = new byte[]{66, 73, 78, 71, 0, 0};
        bArr[19] = new byte[]{66, 79, 0, 0, 0, 0};
        bArr[20] = new byte[]{66, 85, 0, 0, 0, 0};
        bArr[21] = new byte[]{67, 65, 0, 0, 0, 0};
        bArr[22] = new byte[]{67, 65, 73, 0, 0, 0};
        bArr[23] = new byte[]{67, 65, 78, 0, 0, 0};
        bArr[24] = new byte[]{67, 65, 78, 71, 0, 0};
        bArr[25] = new byte[]{67, 65, 79, 0, 0, 0};
        bArr[26] = new byte[]{67, 69, 0, 0, 0, 0};
        bArr[27] = new byte[]{67, 69, 78, 0, 0, 0};
        bArr[28] = new byte[]{67, 69, 78, 71, 0, 0};
        bArr[29] = new byte[]{90, 69, 78, 71, 0, 0};
        bArr[30] = new byte[]{67, 69, 78, 71, 0, 0};
        bArr[31] = new byte[]{67, 72, 65, 0, 0, 0};
        bArr[32] = new byte[]{67, 72, 65, 73, 0, 0};
        bArr[33] = new byte[]{67, 72, 65, 78, 0, 0};
        bArr[34] = new byte[]{67, 72, 65, 78, 71, 0};
        bArr[35] = new byte[]{67, 72, 65, 79, 0, 0};
        bArr[36] = new byte[]{67, 72, 69, 0, 0, 0};
        bArr[37] = new byte[]{67, 72, 69, 78, 0, 0};
        bArr[38] = new byte[]{83, 72, 69, 78, 0, 0};
        bArr[39] = new byte[]{67, 72, 69, 78, 0, 0};
        bArr[40] = new byte[]{67, 72, 69, 78, 71, 0};
        bArr[41] = new byte[]{67, 72, 73, 0, 0, 0};
        bArr[42] = new byte[]{67, 72, 79, 78, 71, 0};
        bArr[43] = new byte[]{67, 72, 79, 85, 0, 0};
        bArr[44] = new byte[]{67, 72, 85, 0, 0, 0};
        bArr[45] = new byte[]{67, 72, 85, 65, 0, 0};
        bArr[46] = new byte[]{67, 72, 85, 65, 73, 0};
        bArr[47] = new byte[]{67, 72, 85, 65, 78, 0};
        bArr[48] = new byte[]{67, 72, 85, 65, 78, 71};
        bArr[49] = new byte[]{67, 72, 85, 73, 0, 0};
        bArr[50] = new byte[]{67, 72, 85, 78, 0, 0};
        bArr[51] = new byte[]{67, 72, 85, 79, 0, 0};
        bArr[52] = new byte[]{67, 73, 0, 0, 0, 0};
        bArr[53] = new byte[]{67, 79, 78, 71, 0, 0};
        bArr[54] = new byte[]{67, 79, 85, 0, 0, 0};
        bArr[55] = new byte[]{67, 85, 0, 0, 0, 0};
        bArr[56] = new byte[]{67, 85, 65, 78, 0, 0};
        bArr[57] = new byte[]{67, 85, 73, 0, 0, 0};
        bArr[58] = new byte[]{67, 85, 78, 0, 0, 0};
        bArr[59] = new byte[]{67, 85, 79, 0, 0, 0};
        bArr[60] = new byte[]{68, 65, 0, 0, 0, 0};
        bArr[61] = new byte[]{68, 65, 73, 0, 0, 0};
        bArr[62] = new byte[]{68, 65, 78, 0, 0, 0};
        bArr[63] = new byte[]{68, 65, 78, 71, 0, 0};
        bArr[64] = new byte[]{68, 65, 79, 0, 0, 0};
        bArr[65] = new byte[]{68, 69, 0, 0, 0, 0};
        bArr[66] = new byte[]{68, 69, 78, 0, 0, 0};
        bArr[67] = new byte[]{68, 69, 78, 71, 0, 0};
        bArr[68] = new byte[]{68, 73, 0, 0, 0, 0};
        bArr[69] = new byte[]{68, 73, 65, 0, 0, 0};
        bArr[70] = new byte[]{68, 73, 65, 78, 0, 0};
        bArr[71] = new byte[]{68, 73, 65, 79, 0, 0};
        bArr[72] = new byte[]{68, 73, 69, 0, 0, 0};
        bArr[73] = new byte[]{68, 73, 78, 71, 0, 0};
        bArr[74] = new byte[]{68, 73, 85, 0, 0, 0};
        bArr[75] = new byte[]{68, 79, 78, 71, 0, 0};
        bArr[76] = new byte[]{68, 79, 85, 0, 0, 0};
        bArr[77] = new byte[]{68, 85, 0, 0, 0, 0};
        bArr[78] = new byte[]{68, 85, 65, 78, 0, 0};
        bArr[79] = new byte[]{68, 85, 73, 0, 0, 0};
        bArr[80] = new byte[]{68, 85, 78, 0, 0, 0};
        bArr[81] = new byte[]{68, 85, 79, 0, 0, 0};
        bArr[82] = new byte[]{69, 0, 0, 0, 0, 0};
        bArr[83] = new byte[]{69, 73, 0, 0, 0, 0};
        bArr[84] = new byte[]{69, 78, 0, 0, 0, 0};
        bArr[85] = new byte[]{69, 78, 71, 0, 0, 0};
        bArr[86] = new byte[]{69, 82, 0, 0, 0, 0};
        bArr[87] = new byte[]{70, 65, 0, 0, 0, 0};
        bArr[88] = new byte[]{70, 65, 78, 0, 0, 0};
        bArr[89] = new byte[]{70, 65, 78, 71, 0, 0};
        bArr[90] = new byte[]{70, 69, 73, 0, 0, 0};
        bArr[91] = new byte[]{70, 69, 78, 0, 0, 0};
        bArr[92] = new byte[]{70, 69, 78, 71, 0, 0};
        bArr[93] = new byte[]{70, 73, 65, 79, 0, 0};
        bArr[94] = new byte[]{70, 79, 0, 0, 0, 0};
        bArr[95] = new byte[]{70, 79, 85, 0, 0, 0};
        bArr[96] = new byte[]{70, 85, 0, 0, 0, 0};
        bArr[97] = new byte[]{71, 65, 0, 0, 0, 0};
        bArr[98] = new byte[]{71, 65, 73, 0, 0, 0};
        bArr[99] = new byte[]{71, 65, 78, 0, 0, 0};
        bArr[100] = new byte[]{71, 65, 78, 71, 0, 0};
        bArr[101] = new byte[]{71, 65, 79, 0, 0, 0};
        bArr[102] = new byte[]{71, 69, 0, 0, 0, 0};
        bArr[103] = new byte[]{71, 69, 73, 0, 0, 0};
        bArr[104] = new byte[]{71, 69, 78, 0, 0, 0};
        bArr[105] = new byte[]{71, 69, 78, 71, 0, 0};
        bArr[106] = new byte[]{71, 79, 78, 71, 0, 0};
        bArr[107] = new byte[]{71, 79, 85, 0, 0, 0};
        bArr[108] = new byte[]{71, 85, 0, 0, 0, 0};
        bArr[109] = new byte[]{71, 85, 65, 0, 0, 0};
        bArr[110] = new byte[]{71, 85, 65, 73, 0, 0};
        bArr[111] = new byte[]{71, 85, 65, 78, 0, 0};
        bArr[112] = new byte[]{71, 85, 65, 78, 71, 0};
        bArr[113] = new byte[]{71, 85, 73, 0, 0, 0};
        bArr[114] = new byte[]{71, 85, 78, 0, 0, 0};
        bArr[115] = new byte[]{71, 85, 79, 0, 0, 0};
        bArr[116] = new byte[]{72, 65, 0, 0, 0, 0};
        bArr[117] = new byte[]{72, 65, 73, 0, 0, 0};
        bArr[118] = new byte[]{72, 65, 78, 0, 0, 0};
        bArr[119] = new byte[]{72, 65, 78, 71, 0, 0};
        bArr[120] = new byte[]{72, 65, 79, 0, 0, 0};
        bArr[121] = new byte[]{72, 69, 0, 0, 0, 0};
        bArr[122] = new byte[]{72, 69, 73, 0, 0, 0};
        bArr[123] = new byte[]{72, 69, 78, 0, 0, 0};
        bArr[124] = new byte[]{72, 69, 78, 71, 0, 0};
        bArr[125] = new byte[]{72, 77, 0, 0, 0, 0};
        bArr[126] = new byte[]{72, 79, 78, 71, 0, 0};
        bArr[127] = new byte[]{72, 79, 85, 0, 0, 0};
        bArr[128] = new byte[]{72, 85, 0, 0, 0, 0};
        bArr[129] = new byte[]{72, 85, 65, 0, 0, 0};
        bArr[130] = new byte[]{72, 85, 65, 73, 0, 0};
        bArr[131] = new byte[]{72, 85, 65, 78, 0, 0};
        bArr[132] = new byte[]{72, 85, 65, 78, 71, 0};
        bArr[133] = new byte[]{72, 85, 73, 0, 0, 0};
        bArr[134] = new byte[]{72, 85, 78, 0, 0, 0};
        bArr[135] = new byte[]{72, 85, 79, 0, 0, 0};
        bArr[136] = new byte[]{74, 73, 0, 0, 0, 0};
        bArr[137] = new byte[]{74, 73, 65, 0, 0, 0};
        bArr[138] = new byte[]{74, 73, 65, 78, 0, 0};
        bArr[139] = new byte[]{74, 73, 65, 78, 71, 0};
        bArr[140] = new byte[]{74, 73, 65, 79, 0, 0};
        bArr[141] = new byte[]{74, 73, 69, 0, 0, 0};
        bArr[142] = new byte[]{74, 73, 78, 0, 0, 0};
        bArr[143] = new byte[]{74, 73, 78, 71, 0, 0};
        bArr[144] = new byte[]{74, 73, 79, 78, 71, 0};
        bArr[145] = new byte[]{74, 73, 85, 0, 0, 0};
        bArr[146] = new byte[]{74, 85, 0, 0, 0, 0};
        bArr[147] = new byte[]{74, 85, 65, 78, 0, 0};
        bArr[148] = new byte[]{74, 85, 69, 0, 0, 0};
        bArr[149] = new byte[]{74, 85, 78, 0, 0, 0};
        bArr[150] = new byte[]{75, 65, 0, 0, 0, 0};
        bArr[151] = new byte[]{75, 65, 73, 0, 0, 0};
        bArr[152] = new byte[]{75, 65, 78, 0, 0, 0};
        bArr[153] = new byte[]{75, 65, 78, 71, 0, 0};
        bArr[154] = new byte[]{75, 65, 79, 0, 0, 0};
        bArr[155] = new byte[]{75, 69, 0, 0, 0, 0};
        bArr[156] = new byte[]{75, 69, 78, 0, 0, 0};
        bArr[157] = new byte[]{75, 69, 78, 71, 0, 0};
        bArr[158] = new byte[]{75, 79, 78, 71, 0, 0};
        bArr[159] = new byte[]{75, 79, 85, 0, 0, 0};
        bArr[160] = new byte[]{75, 85, 0, 0, 0, 0};
        bArr[161] = new byte[]{75, 85, 65, 0, 0, 0};
        bArr[162] = new byte[]{75, 85, 65, 73, 0, 0};
        bArr[163] = new byte[]{75, 85, 65, 78, 0, 0};
        bArr[164] = new byte[]{75, 85, 65, 78, 71, 0};
        bArr[165] = new byte[]{75, 85, 73, 0, 0, 0};
        bArr[166] = new byte[]{75, 85, 78, 0, 0, 0};
        bArr[167] = new byte[]{75, 85, 79, 0, 0, 0};
        bArr[168] = new byte[]{76, 65, 0, 0, 0, 0};
        bArr[169] = new byte[]{76, 65, 73, 0, 0, 0};
        bArr[170] = new byte[]{76, 65, 78, 0, 0, 0};
        bArr[171] = new byte[]{76, 65, 78, 71, 0, 0};
        bArr[172] = new byte[]{76, 65, 79, 0, 0, 0};
        bArr[173] = new byte[]{76, 69, 0, 0, 0, 0};
        bArr[174] = new byte[]{76, 69, 73, 0, 0, 0};
        bArr[175] = new byte[]{76, 69, 78, 71, 0, 0};
        bArr[176] = new byte[]{76, 73, 0, 0, 0, 0};
        bArr[177] = new byte[]{76, 73, 65, 0, 0, 0};
        bArr[178] = new byte[]{76, 73, 65, 78, 0, 0};
        bArr[179] = new byte[]{76, 73, 65, 78, 71, 0};
        bArr[180] = new byte[]{76, 73, 65, 79, 0, 0};
        bArr[181] = new byte[]{76, 73, 69, 0, 0, 0};
        bArr[182] = new byte[]{76, 73, 78, 0, 0, 0};
        bArr[183] = new byte[]{76, 73, 78, 71, 0, 0};
        bArr[184] = new byte[]{76, 73, 85, 0, 0, 0};
        bArr[185] = new byte[]{76, 79, 0, 0, 0, 0};
        bArr[186] = new byte[]{76, 79, 78, 71, 0, 0};
        bArr[187] = new byte[]{76, 79, 85, 0, 0, 0};
        bArr[188] = new byte[]{76, 85, 0, 0, 0, 0};
        bArr[189] = new byte[]{76, 85, 65, 78, 0, 0};
        bArr[190] = new byte[]{76, 85, 69, 0, 0, 0};
        bArr[191] = new byte[]{76, 85, 78, 0, 0, 0};
        bArr[192] = new byte[]{76, 85, 79, 0, 0, 0};
        bArr[193] = new byte[]{77, 0, 0, 0, 0, 0};
        bArr[194] = new byte[]{77, 65, 0, 0, 0, 0};
        bArr[195] = new byte[]{77, 65, 73, 0, 0, 0};
        bArr[196] = new byte[]{77, 65, 78, 0, 0, 0};
        bArr[197] = new byte[]{77, 65, 78, 71, 0, 0};
        bArr[198] = new byte[]{77, 65, 79, 0, 0, 0};
        bArr[199] = new byte[]{77, 69, 0, 0, 0, 0};
        bArr[200] = new byte[]{77, 69, 73, 0, 0, 0};
        bArr[201] = new byte[]{77, 69, 78, 0, 0, 0};
        bArr[202] = new byte[]{77, 69, 78, 71, 0, 0};
        bArr[203] = new byte[]{77, 73, 0, 0, 0, 0};
        bArr[204] = new byte[]{77, 73, 65, 78, 0, 0};
        bArr[205] = new byte[]{77, 73, 65, 79, 0, 0};
        bArr[206] = new byte[]{77, 73, 69, 0, 0, 0};
        bArr[207] = new byte[]{77, 73, 78, 0, 0, 0};
        bArr[208] = new byte[]{77, 73, 78, 71, 0, 0};
        bArr[209] = new byte[]{77, 73, 85, 0, 0, 0};
        bArr[210] = new byte[]{77, 79, 0, 0, 0, 0};
        bArr[211] = new byte[]{77, 79, 85, 0, 0, 0};
        bArr[212] = new byte[]{77, 85, 0, 0, 0, 0};
        bArr[213] = new byte[]{78, 0, 0, 0, 0, 0};
        bArr[214] = new byte[]{78, 65, 0, 0, 0, 0};
        bArr[215] = new byte[]{78, 65, 73, 0, 0, 0};
        bArr[216] = new byte[]{78, 65, 78, 0, 0, 0};
        bArr[217] = new byte[]{78, 65, 78, 71, 0, 0};
        bArr[218] = new byte[]{78, 65, 79, 0, 0, 0};
        bArr[219] = new byte[]{78, 69, 0, 0, 0, 0};
        bArr[220] = new byte[]{78, 69, 73, 0, 0, 0};
        bArr[221] = new byte[]{78, 69, 78, 0, 0, 0};
        bArr[222] = new byte[]{78, 69, 78, 71, 0, 0};
        bArr[223] = new byte[]{78, 73, 0, 0, 0, 0};
        bArr[224] = new byte[]{78, 73, 65, 78, 0, 0};
        bArr[225] = new byte[]{78, 73, 65, 78, 71, 0};
        bArr[226] = new byte[]{78, 73, 65, 79, 0, 0};
        bArr[227] = new byte[]{78, 73, 69, 0, 0, 0};
        bArr[228] = new byte[]{78, 73, 78, 0, 0, 0};
        bArr[229] = new byte[]{78, 73, 78, 71, 0, 0};
        bArr[230] = new byte[]{78, 73, 85, 0, 0, 0};
        bArr[231] = new byte[]{78, 79, 78, 71, 0, 0};
        bArr[232] = new byte[]{78, 79, 85, 0, 0, 0};
        bArr[233] = new byte[]{78, 85, 0, 0, 0, 0};
        bArr[234] = new byte[]{78, 85, 65, 78, 0, 0};
        bArr[235] = new byte[]{78, 85, 69, 0, 0, 0};
        bArr[236] = new byte[]{78, 85, 78, 0, 0, 0};
        bArr[237] = new byte[]{78, 85, 79, 0, 0, 0};
        bArr[238] = new byte[]{79, 0, 0, 0, 0, 0};
        bArr[239] = new byte[]{79, 85, 0, 0, 0, 0};
        bArr[240] = new byte[]{80, 65, 0, 0, 0, 0};
        bArr[241] = new byte[]{80, 65, 73, 0, 0, 0};
        bArr[242] = new byte[]{80, 65, 78, 0, 0, 0};
        bArr[243] = new byte[]{80, 65, 78, 71, 0, 0};
        bArr[244] = new byte[]{80, 65, 79, 0, 0, 0};
        bArr[245] = new byte[]{80, 69, 73, 0, 0, 0};
        bArr[246] = new byte[]{80, 69, 78, 0, 0, 0};
        bArr[247] = new byte[]{80, 69, 78, 71, 0, 0};
        bArr[248] = new byte[]{80, 73, 0, 0, 0, 0};
        bArr[249] = new byte[]{80, 73, 65, 78, 0, 0};
        bArr[250] = new byte[]{80, 73, 65, 79, 0, 0};
        bArr[251] = new byte[]{80, 73, 69, 0, 0, 0};
        bArr[252] = new byte[]{80, 73, 78, 0, 0, 0};
        bArr[253] = new byte[]{80, 73, 78, 71, 0, 0};
        bArr[254] = new byte[]{80, 79, 0, 0, 0, 0};
        bArr[255] = new byte[]{80, 79, 85, 0, 0, 0};
        bArr[256] = new byte[]{80, 85, 0, 0, 0, 0};
        bArr[257] = new byte[]{81, 73, 0, 0, 0, 0};
        bArr[258] = new byte[]{81, 73, 65, 0, 0, 0};
        bArr[259] = new byte[]{81, 73, 65, 78, 0, 0};
        bArr[260] = new byte[]{81, 73, 65, 78, 71, 0};
        bArr[261] = new byte[]{81, 73, 65, 79, 0, 0};
        bArr[262] = new byte[]{81, 73, 69, 0, 0, 0};
        bArr[263] = new byte[]{81, 73, 78, 0, 0, 0};
        bArr[264] = new byte[]{81, 73, 78, 71, 0, 0};
        bArr[265] = new byte[]{81, 73, 79, 78, 71, 0};
        bArr[266] = new byte[]{81, 73, 85, 0, 0, 0};
        bArr[267] = new byte[]{81, 85, 0, 0, 0, 0};
        bArr[268] = new byte[]{81, 85, 65, 78, 0, 0};
        bArr[269] = new byte[]{81, 85, 69, 0, 0, 0};
        bArr[270] = new byte[]{81, 85, 78, 0, 0, 0};
        bArr[271] = new byte[]{82, 65, 78, 0, 0, 0};
        bArr[272] = new byte[]{82, 65, 78, 71, 0, 0};
        bArr[273] = new byte[]{82, 65, 79, 0, 0, 0};
        bArr[274] = new byte[]{82, 69, 0, 0, 0, 0};
        bArr[275] = new byte[]{82, 69, 78, 0, 0, 0};
        bArr[276] = new byte[]{82, 69, 78, 71, 0, 0};
        bArr[277] = new byte[]{82, 73, 0, 0, 0, 0};
        bArr[278] = new byte[]{82, 79, 78, 71, 0, 0};
        bArr[279] = new byte[]{82, 79, 85, 0, 0, 0};
        bArr[280] = new byte[]{82, 85, 0, 0, 0, 0};
        bArr[281] = new byte[]{82, 85, 65, 0, 0, 0};
        bArr[282] = new byte[]{82, 85, 65, 78, 0, 0};
        bArr[283] = new byte[]{82, 85, 73, 0, 0, 0};
        bArr[284] = new byte[]{82, 85, 78, 0, 0, 0};
        bArr[285] = new byte[]{82, 85, 79, 0, 0, 0};
        bArr[286] = new byte[]{83, 65, 0, 0, 0, 0};
        bArr[287] = new byte[]{83, 65, 73, 0, 0, 0};
        bArr[288] = new byte[]{83, 65, 78, 0, 0, 0};
        bArr[289] = new byte[]{83, 65, 78, 71, 0, 0};
        bArr[290] = new byte[]{83, 65, 79, 0, 0, 0};
        bArr[291] = new byte[]{83, 69, 0, 0, 0, 0};
        bArr[292] = new byte[]{83, 69, 78, 0, 0, 0};
        bArr[293] = new byte[]{83, 69, 78, 71, 0, 0};
        bArr[294] = new byte[]{83, 72, 65, 0, 0, 0};
        bArr[295] = new byte[]{83, 72, 65, 73, 0, 0};
        bArr[296] = new byte[]{83, 72, 65, 78, 0, 0};
        bArr[297] = new byte[]{83, 72, 65, 78, 71, 0};
        bArr[298] = new byte[]{83, 72, 65, 79, 0, 0};
        bArr[299] = new byte[]{83, 72, 69, 0, 0, 0};
        bArr[300] = new byte[]{83, 72, 69, 78, 0, 0};
        bArr[301] = new byte[]{88, 73, 78, 0, 0, 0};
        bArr[302] = new byte[]{83, 72, 69, 78, 0, 0};
        bArr[303] = new byte[]{83, 72, 69, 78, 71, 0};
        bArr[304] = new byte[]{83, 72, 73, 0, 0, 0};
        bArr[305] = new byte[]{83, 72, 79, 85, 0, 0};
        bArr[306] = new byte[]{83, 72, 85, 0, 0, 0};
        bArr[307] = new byte[]{83, 72, 85, 65, 0, 0};
        bArr[308] = new byte[]{83, 72, 85, 65, 73, 0};
        bArr[309] = new byte[]{83, 72, 85, 65, 78, 0};
        bArr[310] = new byte[]{83, 72, 85, 65, 78, 71};
        bArr[311] = new byte[]{83, 72, 85, 73, 0, 0};
        bArr[312] = new byte[]{83, 72, 85, 78, 0, 0};
        bArr[313] = new byte[]{83, 72, 85, 79, 0, 0};
        bArr[314] = new byte[]{83, 73, 0, 0, 0, 0};
        bArr[315] = new byte[]{83, 79, 78, 71, 0, 0};
        bArr[316] = new byte[]{83, 79, 85, 0, 0, 0};
        bArr[317] = new byte[]{83, 85, 0, 0, 0, 0};
        bArr[318] = new byte[]{83, 85, 65, 78, 0, 0};
        bArr[319] = new byte[]{83, 85, 73, 0, 0, 0};
        bArr[320] = new byte[]{83, 85, 78, 0, 0, 0};
        bArr[321] = new byte[]{83, 85, 79, 0, 0, 0};
        bArr[322] = new byte[]{84, 65, 0, 0, 0, 0};
        bArr[323] = new byte[]{84, 65, 73, 0, 0, 0};
        bArr[324] = new byte[]{84, 65, 78, 0, 0, 0};
        bArr[325] = new byte[]{84, 65, 78, 71, 0, 0};
        bArr[326] = new byte[]{84, 65, 79, 0, 0, 0};
        bArr[327] = new byte[]{84, 69, 0, 0, 0, 0};
        bArr[328] = new byte[]{84, 69, 78, 71, 0, 0};
        bArr[329] = new byte[]{84, 73, 0, 0, 0, 0};
        bArr[330] = new byte[]{84, 73, 65, 78, 0, 0};
        bArr[331] = new byte[]{84, 73, 65, 79, 0, 0};
        bArr[332] = new byte[]{84, 73, 69, 0, 0, 0};
        bArr[333] = new byte[]{84, 73, 78, 71, 0, 0};
        bArr[334] = new byte[]{84, 79, 78, 71, 0, 0};
        bArr[335] = new byte[]{84, 79, 85, 0, 0, 0};
        bArr[336] = new byte[]{84, 85, 0, 0, 0, 0};
        bArr[337] = new byte[]{84, 85, 65, 78, 0, 0};
        bArr[338] = new byte[]{84, 85, 73, 0, 0, 0};
        bArr[339] = new byte[]{84, 85, 78, 0, 0, 0};
        bArr[340] = new byte[]{84, 85, 79, 0, 0, 0};
        bArr[341] = new byte[]{87, 65, 0, 0, 0, 0};
        bArr[342] = new byte[]{87, 65, 73, 0, 0, 0};
        bArr[343] = new byte[]{87, 65, 78, 0, 0, 0};
        bArr[344] = new byte[]{87, 65, 78, 71, 0, 0};
        bArr[345] = new byte[]{87, 69, 73, 0, 0, 0};
        bArr[346] = new byte[]{87, 69, 78, 0, 0, 0};
        bArr[347] = new byte[]{87, 69, 78, 71, 0, 0};
        bArr[348] = new byte[]{87, 79, 0, 0, 0, 0};
        bArr[349] = new byte[]{87, 85, 0, 0, 0, 0};
        bArr[350] = new byte[]{88, 73, 0, 0, 0, 0};
        bArr[351] = new byte[]{88, 73, 65, 0, 0, 0};
        bArr[352] = new byte[]{88, 73, 65, 78, 0, 0};
        bArr[353] = new byte[]{88, 73, 65, 78, 71, 0};
        bArr[354] = new byte[]{88, 73, 65, 79, 0, 0};
        bArr[355] = new byte[]{88, 73, 69, 0, 0, 0};
        bArr[356] = new byte[]{88, 73, 78, 0, 0, 0};
        bArr[357] = new byte[]{88, 73, 78, 71, 0, 0};
        bArr[358] = new byte[]{88, 73, 79, 78, 71, 0};
        bArr[359] = new byte[]{88, 73, 85, 0, 0, 0};
        bArr[360] = new byte[]{88, 85, 0, 0, 0, 0};
        bArr[361] = new byte[]{88, 85, 65, 78, 0, 0};
        bArr[362] = new byte[]{88, 85, 69, 0, 0, 0};
        bArr[363] = new byte[]{88, 85, 78, 0, 0, 0};
        bArr[364] = new byte[]{89, 65, 0, 0, 0, 0};
        bArr[365] = new byte[]{89, 65, 78, 0, 0, 0};
        bArr[366] = new byte[]{89, 65, 78, 71, 0, 0};
        bArr[367] = new byte[]{89, 65, 79, 0, 0, 0};
        bArr[368] = new byte[]{89, 69, 0, 0, 0, 0};
        bArr[369] = new byte[]{89, 73, 0, 0, 0, 0};
        bArr[370] = new byte[]{89, 73, 78, 0, 0, 0};
        bArr[371] = new byte[]{89, 73, 78, 71, 0, 0};
        bArr[372] = new byte[]{89, 79, 0, 0, 0, 0};
        bArr[373] = new byte[]{89, 79, 78, 71, 0, 0};
        bArr[374] = new byte[]{89, 79, 85, 0, 0, 0};
        bArr[375] = new byte[]{89, 85, 0, 0, 0, 0};
        bArr[376] = new byte[]{89, 85, 65, 78, 0, 0};
        bArr[377] = new byte[]{89, 85, 69, 0, 0, 0};
        bArr[378] = new byte[]{89, 85, 78, 0, 0, 0};
        bArr[379] = new byte[]{74, 85, 78, 0, 0, 0};
        bArr[380] = new byte[]{89, 85, 78, 0, 0, 0};
        bArr[381] = new byte[]{90, 65, 0, 0, 0, 0};
        bArr[382] = new byte[]{90, 65, 73, 0, 0, 0};
        bArr[383] = new byte[]{90, 65, 78, 0, 0, 0};
        bArr[384] = new byte[]{90, 65, 78, 71, 0, 0};
        bArr[385] = new byte[]{90, 65, 79, 0, 0, 0};
        bArr[386] = new byte[]{90, 69, 0, 0, 0, 0};
        bArr[387] = new byte[]{90, 69, 73, 0, 0, 0};
        bArr[388] = new byte[]{90, 69, 78, 0, 0, 0};
        bArr[389] = new byte[]{90, 69, 78, 71, 0, 0};
        bArr[390] = new byte[]{90, 72, 65, 0, 0, 0};
        bArr[391] = new byte[]{90, 72, 65, 73, 0, 0};
        bArr[392] = new byte[]{90, 72, 65, 78, 0, 0};
        bArr[393] = new byte[]{90, 72, 65, 78, 71, 0};
        bArr[394] = new byte[]{67, 72, 65, 78, 71, 0};
        bArr[395] = new byte[]{90, 72, 65, 78, 71, 0};
        bArr[396] = new byte[]{90, 72, 65, 79, 0, 0};
        bArr[397] = new byte[]{90, 72, 69, 0, 0, 0};
        bArr[398] = new byte[]{90, 72, 69, 78, 0, 0};
        bArr[399] = new byte[]{90, 72, 69, 78, 71, 0};
        bArr[400] = new byte[]{90, 72, 73, 0, 0, 0};
        bArr[401] = new byte[]{83, 72, 73, 0, 0, 0};
        bArr[402] = new byte[]{90, 72, 73, 0, 0, 0};
        bArr[403] = new byte[]{90, 72, 79, 78, 71, 0};
        bArr[404] = new byte[]{90, 72, 79, 85, 0, 0};
        bArr[405] = new byte[]{90, 72, 85, 0, 0, 0};
        bArr[406] = new byte[]{90, 72, 85, 65, 0, 0};
        bArr[407] = new byte[]{90, 72, 85, 65, 73, 0};
        bArr[408] = new byte[]{90, 72, 85, 65, 78, 0};
        bArr[409] = new byte[]{90, 72, 85, 65, 78, 71};
        bArr[410] = new byte[]{90, 72, 85, 73, 0, 0};
        bArr[411] = new byte[]{90, 72, 85, 78, 0, 0};
        bArr[412] = new byte[]{90, 72, 85, 79, 0, 0};
        bArr[413] = new byte[]{90, 73, 0, 0, 0, 0};
        bArr[414] = new byte[]{90, 79, 78, 71, 0, 0};
        bArr[415] = new byte[]{90, 79, 85, 0, 0, 0};
        bArr[416] = new byte[]{90, 85, 0, 0, 0, 0};
        bArr[417] = new byte[]{90, 85, 65, 78, 0, 0};
        bArr[418] = new byte[]{90, 85, 73, 0, 0, 0};
        bArr[419] = new byte[]{90, 85, 78, 0, 0, 0};
        bArr[420] = new byte[]{90, 85, 79, 0, 0, 0};
        bArr[421] = new byte[]{0, 0, 0, 0, 0, 0};
        bArr[422] = new byte[]{83, 72, 65, 78, 0, 0};
        bArr[423] = new byte[]{0, 0, 0, 0, 0, 0};
        PINYINS = bArr;
    }

    protected HanziToPinyin3(boolean z) {
        this.mHasChinaCollator = z;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:22:?, code lost:
        android.util.Log.w(TAG, "There is no Chinese collator, HanziToPinyin is disabled");
        sInstance = new com.ifengyu.im.utils.pinyin.HanziToPinyin3(false);
        r0 = sInstance;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.ifengyu.im.utils.pinyin.HanziToPinyin3 getInstance() {
        /*
            r0 = 0
            java.lang.Class<com.ifengyu.im.utils.pinyin.HanziToPinyin3> r1 = com.ifengyu.im.utils.pinyin.HanziToPinyin3.class
            monitor-enter(r1)
            com.ifengyu.im.utils.pinyin.HanziToPinyin3 r2 = sInstance     // Catch:{ all -> 0x0029 }
            if (r2 == 0) goto L_0x000c
            com.ifengyu.im.utils.pinyin.HanziToPinyin3 r0 = sInstance     // Catch:{ all -> 0x0029 }
            monitor-exit(r1)     // Catch:{ all -> 0x0029 }
        L_0x000b:
            return r0
        L_0x000c:
            java.util.Locale[] r2 = java.text.Collator.getAvailableLocales()     // Catch:{ all -> 0x0029 }
        L_0x0010:
            int r3 = r2.length     // Catch:{ all -> 0x0029 }
            if (r0 >= r3) goto L_0x002f
            r3 = r2[r0]     // Catch:{ all -> 0x0029 }
            java.util.Locale r4 = java.util.Locale.CHINESE     // Catch:{ all -> 0x0029 }
            boolean r3 = r3.equals(r4)     // Catch:{ all -> 0x0029 }
            if (r3 == 0) goto L_0x002c
            com.ifengyu.im.utils.pinyin.HanziToPinyin3 r0 = new com.ifengyu.im.utils.pinyin.HanziToPinyin3     // Catch:{ all -> 0x0029 }
            r2 = 1
            r0.<init>(r2)     // Catch:{ all -> 0x0029 }
            sInstance = r0     // Catch:{ all -> 0x0029 }
            com.ifengyu.im.utils.pinyin.HanziToPinyin3 r0 = sInstance     // Catch:{ all -> 0x0029 }
            monitor-exit(r1)     // Catch:{ all -> 0x0029 }
            goto L_0x000b
        L_0x0029:
            r0 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x0029 }
            throw r0
        L_0x002c:
            int r0 = r0 + 1
            goto L_0x0010
        L_0x002f:
            java.lang.String r0 = "HanziToPinyin"
            java.lang.String r2 = "There is no Chinese collator, HanziToPinyin is disabled"
            android.util.Log.w(r0, r2)     // Catch:{ all -> 0x0029 }
            com.ifengyu.im.utils.pinyin.HanziToPinyin3 r0 = new com.ifengyu.im.utils.pinyin.HanziToPinyin3     // Catch:{ all -> 0x0029 }
            r2 = 0
            r0.<init>(r2)     // Catch:{ all -> 0x0029 }
            sInstance = r0     // Catch:{ all -> 0x0029 }
            com.ifengyu.im.utils.pinyin.HanziToPinyin3 r0 = sInstance     // Catch:{ all -> 0x0029 }
            monitor-exit(r1)     // Catch:{ all -> 0x0029 }
            goto L_0x000b
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ifengyu.im.utils.pinyin.HanziToPinyin3.getInstance():com.ifengyu.im.utils.pinyin.HanziToPinyin3");
    }

    private static boolean doSelfValidation() {
        char[] cArr;
        char c = UNIHANS[0];
        String ch = Character.toString(c);
        for (char c2 : UNIHANS) {
            if (c != c2) {
                String ch2 = Character.toString(c2);
                if (COLLATOR.compare(ch, ch2) >= 0) {
                    Log.e(TAG, "Internal error in Unihan table. The last string \"" + ch + "\" is greater than current string \"" + ch2 + "\".");
                    return false;
                }
                ch = ch2;
            }
        }
        return true;
    }

    private Token getToken(char c) {
        int i;
        int i2;
        int i3 = 0;
        Token token = new Token();
        String ch = Character.toString(c);
        token.source = ch;
        int i4 = -1;
        if (c < 256) {
            token.type = 1;
            token.target = ch;
            return token;
        }
        int compare = COLLATOR.compare(ch, FIRST_PINYIN_UNIHAN);
        if (compare < 0) {
            token.type = 3;
            token.target = ch;
            return token;
        }
        if (compare == 0) {
            token.type = 2;
            i4 = 0;
        } else {
            compare = COLLATOR.compare(ch, LAST_PINYIN_UNIHAN);
            if (compare > 0) {
                token.type = 3;
                token.target = ch;
                return token;
            } else if (compare == 0) {
                token.type = 2;
                i4 = UNIHANS.length - 1;
            }
        }
        token.type = 2;
        if (i4 < 0) {
            int i5 = i4;
            int i6 = 0;
            int i7 = compare;
            int length = UNIHANS.length - 1;
            int i8 = i7;
            while (true) {
                if (i6 > length) {
                    i2 = i8;
                    i = i5;
                    break;
                }
                i5 = (i6 + length) / 2;
                i8 = COLLATOR.compare(ch, Character.toString(UNIHANS[i5]));
                if (i8 == 0) {
                    i2 = i8;
                    i = i5;
                    break;
                } else if (i8 > 0) {
                    i6 = i5 + 1;
                } else {
                    length = i5 - 1;
                }
            }
        } else {
            int i9 = compare;
            i = i4;
            i2 = i9;
        }
        if (i2 < 0) {
            i--;
        }
        StringBuilder sb = new StringBuilder();
        while (i3 < PINYINS[i].length && PINYINS[i][i3] != 0) {
            sb.append((char) PINYINS[i][i3]);
            i3++;
        }
        token.target = sb.toString();
        if (TextUtils.isEmpty(token.target)) {
            token.type = 3;
            token.target = token.source;
        }
        return token;
    }

    public ArrayList<Token> get(String str) {
        ArrayList arrayList = new ArrayList();
        if (!this.mHasChinaCollator || TextUtils.isEmpty(str)) {
            return arrayList;
        }
        int length = str.length();
        StringBuilder sb = new StringBuilder();
        int i = 1;
        for (int i2 = 0; i2 < length; i2++) {
            char charAt = str.charAt(i2);
            if (charAt == ' ') {
                if (sb.length() > 0) {
                    addToken(sb, arrayList, i);
                }
            } else if (charAt < 256) {
                if (i != 1 && sb.length() > 0) {
                    addToken(sb, arrayList, i);
                }
                sb.append(charAt);
                i = 1;
            } else {
                Token token = getToken(charAt);
                if (token.type == 2) {
                    if (sb.length() > 0) {
                        addToken(sb, arrayList, i);
                    }
                    arrayList.add(token);
                    i = 2;
                } else {
                    if (i != token.type && sb.length() > 0) {
                        addToken(sb, arrayList, i);
                    }
                    i = token.type;
                    sb.append(charAt);
                }
            }
        }
        if (sb.length() > 0) {
            addToken(sb, arrayList, i);
        }
        return arrayList;
    }

    private void addToken(StringBuilder sb, ArrayList<Token> arrayList, int i) {
        String sb2 = sb.toString();
        arrayList.add(new Token(i, sb2, sb2));
        sb.setLength(0);
    }
}
