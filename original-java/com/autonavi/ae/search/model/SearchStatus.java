package com.autonavi.ae.search.model;

public class SearchStatus {
    private int eventId = 0;
    private int status = 0;

    private SearchStatus(int i, int i2) {
        this.status = i;
        this.eventId = i2;
    }

    public int getStatus() {
        return this.status;
    }

    public int getEventId() {
        return this.eventId;
    }
}
