.class public interface abstract Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;
.super Ljava/lang/Object;
.source "SimpleFastPointOverlay.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PointAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lorg/osmdroid/api/IGeoPoint;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract get(I)Lorg/osmdroid/api/IGeoPoint;
.end method

.method public abstract isLabelled()Z
.end method

.method public abstract size()I
.end method
