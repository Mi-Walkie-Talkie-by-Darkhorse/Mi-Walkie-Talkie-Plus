.class public final Lcom/xiaomi/push/jq;
.super Ljava/lang/Object;


# instance fields
.field public final a:B

.field public final a:I

.field public final b:B


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lcom/xiaomi/push/jq;-><init>(BBI)V

    return-void
.end method

.method public constructor <init>(BBI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/xiaomi/push/jq;->a:B

    iput-byte p2, p0, Lcom/xiaomi/push/jq;->b:B

    iput p3, p0, Lcom/xiaomi/push/jq;->a:I

    return-void
.end method
