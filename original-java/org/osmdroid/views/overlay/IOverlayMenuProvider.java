package org.osmdroid.views.overlay;

import android.view.Menu;
import android.view.MenuItem;
import org.osmdroid.views.MapView;

public interface IOverlayMenuProvider {
    boolean isOptionsMenuEnabled();

    boolean onCreateOptionsMenu(Menu menu, int i, MapView mapView);

    boolean onOptionsItemSelected(MenuItem menuItem, int i, MapView mapView);

    boolean onPrepareOptionsMenu(Menu menu, int i, MapView mapView);

    void setOptionsMenuEnabled(boolean z);
}
