.class public interface abstract Lno/nordicsemi/android/ble/v2/j;
.super Ljava/lang/Object;
.source "RssiCallback.java"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract a(Landroid/bluetooth/BluetoothDevice;I)V
    .param p1    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = -0x80L
            to = 0x14L
        .end annotation
    .end param
.end method
