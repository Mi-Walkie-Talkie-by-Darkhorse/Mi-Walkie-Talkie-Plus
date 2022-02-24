.class public Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay$TextureGenedInfo;
.super Ljava/lang/Object;
.source "GLLineOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextureGenedInfo"
.end annotation


# instance fields
.field public m_genMimps:Z

.field public m_isRepeat:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay$TextureGenedInfo;->m_genMimps:Z

    .line 3
    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay$TextureGenedInfo;->m_isRepeat:Z

    return-void
.end method
