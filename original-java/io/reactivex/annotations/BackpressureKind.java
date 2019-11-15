package io.reactivex.annotations;

public enum BackpressureKind {
    PASS_THROUGH,
    FULL,
    SPECIAL,
    UNBOUNDED_IN,
    ERROR,
    NONE
}
