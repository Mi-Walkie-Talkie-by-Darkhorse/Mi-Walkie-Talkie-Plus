package pub.devrel.easypermissions;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo.Scope;
import android.support.v7.app.AppCompatActivity;

@RestrictTo({Scope.LIBRARY_GROUP})
public class AppSettingsDialogHolderActivity extends AppCompatActivity implements OnClickListener {
    public static Intent createShowDialogIntent(Context context, AppSettingsDialog appSettingsDialog) {
        return new Intent(context, AppSettingsDialogHolderActivity.class).putExtra("extra_app_settings", appSettingsDialog);
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        AppSettingsDialog appSettingsDialog = (AppSettingsDialog) getIntent().getParcelableExtra("extra_app_settings");
        appSettingsDialog.setContext(this);
        appSettingsDialog.setActivityOrFragment(this);
        appSettingsDialog.setNegativeListener(this);
        appSettingsDialog.showDialog();
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        setResult(0);
        finish();
    }

    /* access modifiers changed from: protected */
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        setResult(i2, intent);
        finish();
    }
}
