.class public final Lcom/umeng/analytics/pro/bl;
.super Ljava/lang/Object;
.source "TList.java"


# instance fields
.field public final a:B

.field public final b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0}, Lcom/umeng/analytics/pro/bl;-><init>(BI)V

    return-void
.end method

.method public constructor <init>(BI)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-byte p1, p0, Lcom/umeng/analytics/pro/bl;->a:B

    .line 4
    iput p2, p0, Lcom/umeng/analytics/pro/bl;->b:I

    return-void
.end method
