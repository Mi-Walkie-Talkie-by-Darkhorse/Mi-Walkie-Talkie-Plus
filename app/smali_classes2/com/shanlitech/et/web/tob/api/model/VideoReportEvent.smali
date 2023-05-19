.class public Lcom/shanlitech/et/web/tob/api/model/VideoReportEvent;
.super Ljava/lang/Object;
.source "VideoReportEvent.java"


# instance fields
.field public errorCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/shanlitech/et/web/tob/api/model/VideoReportEvent;->errorCode:I

    return-void
.end method

.method public static postSticky(I)V
    .locals 2

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/shanlitech/et/web/tob/api/model/VideoReportEvent;

    invoke-direct {v1, p0}, Lcom/shanlitech/et/web/tob/api/model/VideoReportEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->p(Ljava/lang/Object;)V

    return-void
.end method
