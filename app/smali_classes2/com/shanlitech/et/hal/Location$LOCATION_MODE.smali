.class public Lcom/shanlitech/et/hal/Location$LOCATION_MODE;
.super Ljava/lang/Object;
.source "Location.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shanlitech/et/hal/Location;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LOCATION_MODE"
.end annotation


# static fields
.field public static final LOC_MODE_TRACK_GPS:I = 0x0

.field public static final LOC_MODE_TRACK_NETWORK:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
