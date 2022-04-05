.class Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream$StreamsState;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StreamsState"
.end annotation


# instance fields
.field isNoMoreStream:Z

.field newNoMoreStreamBlockList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field noMoreStreamBlockList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream$StreamsState;->noMoreStreamBlockList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream$StreamsState;->newNoMoreStreamBlockList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method isStreamsEndOrChanged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream$StreamsState;->isNoMoreStream:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream$StreamsState;->newNoMoreStreamBlockList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
