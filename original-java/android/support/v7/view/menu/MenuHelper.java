package android.support.v7.view.menu;

import android.support.v7.view.menu.MenuPresenter.Callback;

interface MenuHelper {
    void dismiss();

    void setPresenterCallback(Callback callback);
}
