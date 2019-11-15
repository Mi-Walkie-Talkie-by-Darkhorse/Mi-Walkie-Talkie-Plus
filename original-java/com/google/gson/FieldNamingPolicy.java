package com.google.gson;

import com.ifengyu.im.utils.pinyin.HanziToPinyin3.Token;
import java.lang.reflect.Field;
import java.util.Locale;

public enum FieldNamingPolicy implements FieldNamingStrategy {
    IDENTITY {
        public String translateName(Field field) {
            return field.getName();
        }
    },
    UPPER_CAMEL_CASE {
        public String translateName(Field field) {
            return upperCaseFirstLetter(field.getName());
        }
    },
    UPPER_CAMEL_CASE_WITH_SPACES {
        public String translateName(Field field) {
            return upperCaseFirstLetter(separateCamelCase(field.getName(), Token.SEPARATOR));
        }
    },
    LOWER_CASE_WITH_UNDERSCORES {
        public String translateName(Field field) {
            return separateCamelCase(field.getName(), "_").toLowerCase(Locale.ENGLISH);
        }
    },
    LOWER_CASE_WITH_DASHES {
        public String translateName(Field field) {
            return separateCamelCase(field.getName(), "-").toLowerCase(Locale.ENGLISH);
        }
    };

    static String separateCamelCase(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (Character.isUpperCase(charAt) && sb.length() != 0) {
                sb.append(str2);
            }
            sb.append(charAt);
        }
        return sb.toString();
    }

    static String upperCaseFirstLetter(String str) {
        StringBuilder sb = new StringBuilder();
        int i = 0;
        char charAt = str.charAt(0);
        while (i < str.length() - 1 && !Character.isLetter(charAt)) {
            sb.append(charAt);
            i++;
            charAt = str.charAt(i);
        }
        if (i == str.length()) {
            return sb.toString();
        }
        if (!Character.isUpperCase(charAt)) {
            return sb.append(modifyString(Character.toUpperCase(charAt), str, i + 1)).toString();
        }
        return str;
    }

    private static String modifyString(char c, String str, int i) {
        if (i < str.length()) {
            return c + str.substring(i);
        }
        return String.valueOf(c);
    }
}
