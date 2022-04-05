.class final Lcom/liulishuo/okdownload/core/exception/InterruptException$1;
.super Lcom/liulishuo/okdownload/core/exception/InterruptException;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/okdownload/core/exception/InterruptException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/liulishuo/okdownload/core/exception/InterruptException;-><init>(Lcom/liulishuo/okdownload/core/exception/InterruptException$1;)V

    return-void
.end method


# virtual methods
.method public printStackTrace()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "Stack is ignored for signal"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method
