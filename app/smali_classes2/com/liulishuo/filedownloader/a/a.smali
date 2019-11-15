.class public Lcom/liulishuo/filedownloader/a/a;
.super Ljava/lang/Object;
.source "DefaultConnectionCountAdapter.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/e/c$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;J)I
    .locals 2

    const-wide/32 v0, 0x100000

    cmp-long v0, p4, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-wide/32 v0, 0x500000

    cmp-long v0, p4, v0

    if-gez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const-wide/32 v0, 0x3200000

    cmp-long v0, p4, v0

    if-gez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const-wide/32 v0, 0x6400000

    cmp-long v0, p4, v0

    if-gez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    goto :goto_0
.end method
