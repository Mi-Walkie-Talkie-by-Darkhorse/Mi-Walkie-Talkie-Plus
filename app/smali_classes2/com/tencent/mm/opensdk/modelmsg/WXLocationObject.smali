.class public Lcom/tencent/mm/opensdk/modelmsg/WXLocationObject;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;


# static fields
.field private static final TAG:Ljava/lang/String; = "MicroMsg.SDK.WXLocationObject"


# instance fields
.field public lat:D

.field public lng:D


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, v0, v1}, Lcom/tencent/mm/opensdk/modelmsg/WXLocationObject;-><init>(DD)V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/tencent/mm/opensdk/modelmsg/WXLocationObject;->lat:D

    iput-wide p3, p0, Lcom/tencent/mm/opensdk/modelmsg/WXLocationObject;->lng:D

    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public serialize(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "_wxlocationobject_lat"

    iget-wide v2, p0, Lcom/tencent/mm/opensdk/modelmsg/WXLocationObject;->lat:D

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v0, "_wxlocationobject_lng"

    iget-wide v2, p0, Lcom/tencent/mm/opensdk/modelmsg/WXLocationObject;->lng:D

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    return-void
.end method

.method public type()I
    .locals 1

    const/16 v0, 0x1e

    return v0
.end method

.method public unserialize(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "_wxlocationobject_lat"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/opensdk/modelmsg/WXLocationObject;->lat:D

    const-string v0, "_wxlocationobject_lng"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/opensdk/modelmsg/WXLocationObject;->lng:D

    return-void
.end method
