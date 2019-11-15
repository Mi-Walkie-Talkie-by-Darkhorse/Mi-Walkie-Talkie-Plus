package com.xiaomi.channel.common.audio;

import java.util.Observable;

public class PlayerObservable extends Observable {
    public void notifyObservers(Object obj) {
        super.setChanged();
        super.notifyObservers(obj);
    }
}
