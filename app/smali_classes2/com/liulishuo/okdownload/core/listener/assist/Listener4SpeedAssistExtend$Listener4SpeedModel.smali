.class public Lcom/liulishuo/okdownload/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedModel;
.super Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Model;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/okdownload/core/listener/assist/Listener4SpeedAssistExtend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Listener4SpeedModel"
.end annotation


# instance fields
.field blockSpeeds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/liulishuo/okdownload/SpeedCalculator;",
            ">;"
        }
    .end annotation
.end field

.field taskSpeed:Lcom/liulishuo/okdownload/SpeedCalculator;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Model;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getBlockSpeed(I)Lcom/liulishuo/okdownload/SpeedCalculator;
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedModel;->blockSpeeds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/liulishuo/okdownload/SpeedCalculator;

    return-object p1
.end method

.method public getTaskSpeed()Lcom/liulishuo/okdownload/SpeedCalculator;
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedModel;->taskSpeed:Lcom/liulishuo/okdownload/SpeedCalculator;

    return-object v0
.end method

.method public onInfoValid(Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)V
    .locals 3
    .param p1    # Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Model;->onInfoValid(Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)V

    new-instance v0, Lcom/liulishuo/okdownload/SpeedCalculator;

    invoke-direct {v0}, Lcom/liulishuo/okdownload/SpeedCalculator;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedModel;->taskSpeed:Lcom/liulishuo/okdownload/SpeedCalculator;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedModel;->blockSpeeds:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getBlockCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedModel;->blockSpeeds:Landroid/util/SparseArray;

    new-instance v2, Lcom/liulishuo/okdownload/SpeedCalculator;

    invoke-direct {v2}, Lcom/liulishuo/okdownload/SpeedCalculator;-><init>()V

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
