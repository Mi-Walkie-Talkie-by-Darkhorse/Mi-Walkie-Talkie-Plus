.class public Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$CompletedFlowDirectlySnapshot;
.super Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$CompletedSnapshot;
.source "LargeMessageSnapshot.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/message/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompletedFlowDirectlySnapshot"
.end annotation


# direct methods
.method constructor <init>(IZJ)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$CompletedSnapshot;-><init>(IZJ)V

    return-void
.end method
