package android.support.graphics.drawable;

import android.content.res.TypedArray;
import org.xmlpull.v1.XmlPullParser;

/* compiled from: TypedArrayUtils */
class d {
    public static boolean a(XmlPullParser xmlPullParser, String str) {
        return xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", str) != null;
    }

    public static float a(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i, float f) {
        return !a(xmlPullParser, str) ? f : typedArray.getFloat(i, f);
    }

    public static boolean a(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i, boolean z) {
        return !a(xmlPullParser, str) ? z : typedArray.getBoolean(i, z);
    }

    public static int a(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i, int i2) {
        return !a(xmlPullParser, str) ? i2 : typedArray.getInt(i, i2);
    }

    public static int b(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i, int i2) {
        return !a(xmlPullParser, str) ? i2 : typedArray.getColor(i, i2);
    }
}
