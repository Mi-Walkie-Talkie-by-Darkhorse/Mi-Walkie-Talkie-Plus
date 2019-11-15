package android.support.v4.content;

import android.annotation.TargetApi;
import android.content.Intent;
import android.support.annotation.RequiresApi;

@TargetApi(15)
@RequiresApi(15)
class IntentCompatIcsMr1 {
    IntentCompatIcsMr1() {
    }

    public static Intent makeMainSelectorActivity(String str, String str2) {
        return Intent.makeMainSelectorActivity(str, str2);
    }
}
