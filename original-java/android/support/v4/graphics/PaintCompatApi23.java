package android.support.v4.graphics;

import android.graphics.Paint;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;

@RequiresApi(23)
class PaintCompatApi23 {
    PaintCompatApi23() {
    }

    static boolean hasGlyph(@NonNull Paint paint, @NonNull String str) {
        return paint.hasGlyph(str);
    }
}
