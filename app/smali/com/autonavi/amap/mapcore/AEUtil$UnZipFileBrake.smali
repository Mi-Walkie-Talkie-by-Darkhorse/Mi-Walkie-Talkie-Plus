.class public Lcom/autonavi/amap/mapcore/AEUtil$UnZipFileBrake;
.super Ljava/lang/Object;
.source "AEUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/amap/mapcore/AEUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnZipFileBrake"
.end annotation


# instance fields
.field public mIsAborted:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/AEUtil$UnZipFileBrake;->mIsAborted:Z

    return-void
.end method
