package com.google.zxing.oned.rss.expanded.decoders;

import com.google.zxing.NotFoundException;
import com.tencent.connect.common.Constants;

final class FieldParser {
    private static final Object[][] FOUR_DIGIT_DATA_LENGTH = {new Object[]{"7001", Integer.valueOf(13)}, new Object[]{"7002", VARIABLE_LENGTH, Integer.valueOf(30)}, new Object[]{"7003", Integer.valueOf(10)}, new Object[]{"8001", Integer.valueOf(14)}, new Object[]{"8002", VARIABLE_LENGTH, Integer.valueOf(20)}, new Object[]{"8003", VARIABLE_LENGTH, Integer.valueOf(30)}, new Object[]{"8004", VARIABLE_LENGTH, Integer.valueOf(30)}, new Object[]{"8005", Integer.valueOf(6)}, new Object[]{"8006", Integer.valueOf(18)}, new Object[]{"8007", VARIABLE_LENGTH, Integer.valueOf(30)}, new Object[]{"8008", VARIABLE_LENGTH, Integer.valueOf(12)}, new Object[]{"8018", Integer.valueOf(18)}, new Object[]{"8020", VARIABLE_LENGTH, Integer.valueOf(25)}, new Object[]{"8100", Integer.valueOf(6)}, new Object[]{"8101", Integer.valueOf(10)}, new Object[]{"8102", Integer.valueOf(2)}, new Object[]{"8110", VARIABLE_LENGTH, Integer.valueOf(70)}, new Object[]{"8200", VARIABLE_LENGTH, Integer.valueOf(70)}};
    private static final Object[][] THREE_DIGIT_DATA_LENGTH = {new Object[]{"240", VARIABLE_LENGTH, Integer.valueOf(30)}, new Object[]{"241", VARIABLE_LENGTH, Integer.valueOf(30)}, new Object[]{"242", VARIABLE_LENGTH, Integer.valueOf(6)}, new Object[]{"250", VARIABLE_LENGTH, Integer.valueOf(30)}, new Object[]{"251", VARIABLE_LENGTH, Integer.valueOf(30)}, new Object[]{"253", VARIABLE_LENGTH, Integer.valueOf(17)}, new Object[]{"254", VARIABLE_LENGTH, Integer.valueOf(20)}, new Object[]{"400", VARIABLE_LENGTH, Integer.valueOf(30)}, new Object[]{"401", VARIABLE_LENGTH, Integer.valueOf(30)}, new Object[]{"402", Integer.valueOf(17)}, new Object[]{"403", VARIABLE_LENGTH, Integer.valueOf(30)}, new Object[]{"410", Integer.valueOf(13)}, new Object[]{"411", Integer.valueOf(13)}, new Object[]{"412", Integer.valueOf(13)}, new Object[]{"413", Integer.valueOf(13)}, new Object[]{"414", Integer.valueOf(13)}, new Object[]{"420", VARIABLE_LENGTH, Integer.valueOf(20)}, new Object[]{"421", VARIABLE_LENGTH, Integer.valueOf(15)}, new Object[]{"422", Integer.valueOf(3)}, new Object[]{"423", VARIABLE_LENGTH, Integer.valueOf(15)}, new Object[]{"424", Integer.valueOf(3)}, new Object[]{"425", Integer.valueOf(3)}, new Object[]{"426", Integer.valueOf(3)}};
    private static final Object[][] THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH = {new Object[]{"310", Integer.valueOf(6)}, new Object[]{"311", Integer.valueOf(6)}, new Object[]{"312", Integer.valueOf(6)}, new Object[]{"313", Integer.valueOf(6)}, new Object[]{"314", Integer.valueOf(6)}, new Object[]{"315", Integer.valueOf(6)}, new Object[]{"316", Integer.valueOf(6)}, new Object[]{"320", Integer.valueOf(6)}, new Object[]{"321", Integer.valueOf(6)}, new Object[]{"322", Integer.valueOf(6)}, new Object[]{"323", Integer.valueOf(6)}, new Object[]{"324", Integer.valueOf(6)}, new Object[]{"325", Integer.valueOf(6)}, new Object[]{"326", Integer.valueOf(6)}, new Object[]{"327", Integer.valueOf(6)}, new Object[]{"328", Integer.valueOf(6)}, new Object[]{"329", Integer.valueOf(6)}, new Object[]{"330", Integer.valueOf(6)}, new Object[]{"331", Integer.valueOf(6)}, new Object[]{"332", Integer.valueOf(6)}, new Object[]{"333", Integer.valueOf(6)}, new Object[]{"334", Integer.valueOf(6)}, new Object[]{"335", Integer.valueOf(6)}, new Object[]{"336", Integer.valueOf(6)}, new Object[]{"340", Integer.valueOf(6)}, new Object[]{"341", Integer.valueOf(6)}, new Object[]{"342", Integer.valueOf(6)}, new Object[]{"343", Integer.valueOf(6)}, new Object[]{"344", Integer.valueOf(6)}, new Object[]{"345", Integer.valueOf(6)}, new Object[]{"346", Integer.valueOf(6)}, new Object[]{"347", Integer.valueOf(6)}, new Object[]{"348", Integer.valueOf(6)}, new Object[]{"349", Integer.valueOf(6)}, new Object[]{"350", Integer.valueOf(6)}, new Object[]{"351", Integer.valueOf(6)}, new Object[]{"352", Integer.valueOf(6)}, new Object[]{"353", Integer.valueOf(6)}, new Object[]{"354", Integer.valueOf(6)}, new Object[]{"355", Integer.valueOf(6)}, new Object[]{"356", Integer.valueOf(6)}, new Object[]{"357", Integer.valueOf(6)}, new Object[]{"360", Integer.valueOf(6)}, new Object[]{"361", Integer.valueOf(6)}, new Object[]{"362", Integer.valueOf(6)}, new Object[]{"363", Integer.valueOf(6)}, new Object[]{"364", Integer.valueOf(6)}, new Object[]{"365", Integer.valueOf(6)}, new Object[]{"366", Integer.valueOf(6)}, new Object[]{"367", Integer.valueOf(6)}, new Object[]{"368", Integer.valueOf(6)}, new Object[]{"369", Integer.valueOf(6)}, new Object[]{"390", VARIABLE_LENGTH, Integer.valueOf(15)}, new Object[]{"391", VARIABLE_LENGTH, Integer.valueOf(18)}, new Object[]{"392", VARIABLE_LENGTH, Integer.valueOf(15)}, new Object[]{"393", VARIABLE_LENGTH, Integer.valueOf(18)}, new Object[]{"703", VARIABLE_LENGTH, Integer.valueOf(30)}};
    private static final Object[][] TWO_DIGIT_DATA_LENGTH = {new Object[]{"00", Integer.valueOf(18)}, new Object[]{"01", Integer.valueOf(14)}, new Object[]{"02", Integer.valueOf(14)}, new Object[]{Constants.VIA_REPORT_TYPE_SHARE_TO_QQ, VARIABLE_LENGTH, Integer.valueOf(20)}, new Object[]{Constants.VIA_REPORT_TYPE_SHARE_TO_QZONE, Integer.valueOf(6)}, new Object[]{Constants.VIA_REPORT_TYPE_SET_AVATAR, Integer.valueOf(6)}, new Object[]{Constants.VIA_REPORT_TYPE_JOININ_GROUP, Integer.valueOf(6)}, new Object[]{Constants.VIA_REPORT_TYPE_WPA_STATE, Integer.valueOf(6)}, new Object[]{Constants.VIA_REPORT_TYPE_START_GROUP, Integer.valueOf(6)}, new Object[]{"20", Integer.valueOf(2)}, new Object[]{Constants.VIA_REPORT_TYPE_QQFAVORITES, VARIABLE_LENGTH, Integer.valueOf(20)}, new Object[]{Constants.VIA_REPORT_TYPE_DATALINE, VARIABLE_LENGTH, Integer.valueOf(29)}, new Object[]{"30", VARIABLE_LENGTH, Integer.valueOf(8)}, new Object[]{"37", VARIABLE_LENGTH, Integer.valueOf(8)}, new Object[]{"90", VARIABLE_LENGTH, Integer.valueOf(30)}, new Object[]{"91", VARIABLE_LENGTH, Integer.valueOf(30)}, new Object[]{"92", VARIABLE_LENGTH, Integer.valueOf(30)}, new Object[]{"93", VARIABLE_LENGTH, Integer.valueOf(30)}, new Object[]{"94", VARIABLE_LENGTH, Integer.valueOf(30)}, new Object[]{"95", VARIABLE_LENGTH, Integer.valueOf(30)}, new Object[]{"96", VARIABLE_LENGTH, Integer.valueOf(30)}, new Object[]{"97", VARIABLE_LENGTH, Integer.valueOf(30)}, new Object[]{"98", VARIABLE_LENGTH, Integer.valueOf(30)}, new Object[]{"99", VARIABLE_LENGTH, Integer.valueOf(30)}};
    private static final Object VARIABLE_LENGTH = new Object();

    private FieldParser() {
    }

    static String parseFieldsInGeneralPurpose(String str) throws NotFoundException {
        if (str.isEmpty()) {
            return null;
        }
        if (str.length() < 2) {
            throw NotFoundException.getNotFoundInstance();
        }
        String substring = str.substring(0, 2);
        Object[][] objArr = TWO_DIGIT_DATA_LENGTH;
        int length = objArr.length;
        int i = 0;
        while (i < length) {
            Object[] objArr2 = objArr[i];
            if (!objArr2[0].equals(substring)) {
                i++;
            } else if (objArr2[1] == VARIABLE_LENGTH) {
                return processVariableAI(2, ((Integer) objArr2[2]).intValue(), str);
            } else {
                return processFixedAI(2, ((Integer) objArr2[1]).intValue(), str);
            }
        }
        if (str.length() < 3) {
            throw NotFoundException.getNotFoundInstance();
        }
        String substring2 = str.substring(0, 3);
        Object[][] objArr3 = THREE_DIGIT_DATA_LENGTH;
        int length2 = objArr3.length;
        int i2 = 0;
        while (i2 < length2) {
            Object[] objArr4 = objArr3[i2];
            if (!objArr4[0].equals(substring2)) {
                i2++;
            } else if (objArr4[1] == VARIABLE_LENGTH) {
                return processVariableAI(3, ((Integer) objArr4[2]).intValue(), str);
            } else {
                return processFixedAI(3, ((Integer) objArr4[1]).intValue(), str);
            }
        }
        Object[][] objArr5 = THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH;
        int length3 = objArr5.length;
        int i3 = 0;
        while (i3 < length3) {
            Object[] objArr6 = objArr5[i3];
            if (!objArr6[0].equals(substring2)) {
                i3++;
            } else if (objArr6[1] == VARIABLE_LENGTH) {
                return processVariableAI(4, ((Integer) objArr6[2]).intValue(), str);
            } else {
                return processFixedAI(4, ((Integer) objArr6[1]).intValue(), str);
            }
        }
        if (str.length() < 4) {
            throw NotFoundException.getNotFoundInstance();
        }
        String substring3 = str.substring(0, 4);
        Object[][] objArr7 = FOUR_DIGIT_DATA_LENGTH;
        int length4 = objArr7.length;
        int i4 = 0;
        while (i4 < length4) {
            Object[] objArr8 = objArr7[i4];
            if (!objArr8[0].equals(substring3)) {
                i4++;
            } else if (objArr8[1] == VARIABLE_LENGTH) {
                return processVariableAI(4, ((Integer) objArr8[2]).intValue(), str);
            } else {
                return processFixedAI(4, ((Integer) objArr8[1]).intValue(), str);
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static String processFixedAI(int i, int i2, String str) throws NotFoundException {
        if (str.length() < i) {
            throw NotFoundException.getNotFoundInstance();
        }
        String substring = str.substring(0, i);
        if (str.length() < i + i2) {
            throw NotFoundException.getNotFoundInstance();
        }
        String substring2 = str.substring(i, i + i2);
        String substring3 = str.substring(i + i2);
        String str2 = "(" + substring + ')' + substring2;
        String parseFieldsInGeneralPurpose = parseFieldsInGeneralPurpose(substring3);
        return parseFieldsInGeneralPurpose == null ? str2 : str2 + parseFieldsInGeneralPurpose;
    }

    private static String processVariableAI(int i, int i2, String str) throws NotFoundException {
        int i3;
        String substring = str.substring(0, i);
        if (str.length() < i + i2) {
            i3 = str.length();
        } else {
            i3 = i + i2;
        }
        String substring2 = str.substring(i, i3);
        String substring3 = str.substring(i3);
        String str2 = "(" + substring + ')' + substring2;
        String parseFieldsInGeneralPurpose = parseFieldsInGeneralPurpose(substring3);
        if (parseFieldsInGeneralPurpose == null) {
            return str2;
        }
        return str2 + parseFieldsInGeneralPurpose;
    }
}
