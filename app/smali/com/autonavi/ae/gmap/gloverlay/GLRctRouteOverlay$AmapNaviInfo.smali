.class public Lcom/autonavi/ae/gmap/gloverlay/GLRctRouteOverlay$AmapNaviInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/ae/gmap/gloverlay/GLRctRouteOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AmapNaviInfo"
.end annotation


# instance fields
.field public n3DEDLinkNumber:I

.field public n3DSTLinkNumber:I

.field public n64routeRemainDistance:J

.field public n64routeRemainTime:J

.field public ncurrentLinkNumber:I

.field public ncurrentSegNumber:I

.field public nmaneuverID:I

.field public nsegmentLength:I

.field public nsegmentRemainDistance:I

.field public nsegmentRemainTime:I

.field public ntype:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
