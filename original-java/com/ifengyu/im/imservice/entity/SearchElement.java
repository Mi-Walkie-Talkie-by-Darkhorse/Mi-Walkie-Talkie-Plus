package com.ifengyu.im.imservice.entity;

public class SearchElement {
    public int endIndex = -1;
    public int startIndex = -1;

    public String toString() {
        return "SearchElement [startIndex=" + this.startIndex + ", endIndex=" + this.endIndex + "]";
    }

    public void reset() {
        this.startIndex = -1;
        this.endIndex = -1;
    }
}
