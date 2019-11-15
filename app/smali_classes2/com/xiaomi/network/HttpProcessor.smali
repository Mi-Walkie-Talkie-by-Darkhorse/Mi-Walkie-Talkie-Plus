.class public abstract Lcom/xiaomi/network/HttpProcessor;
.super Ljava/lang/Object;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaomi/network/HttpProcessor;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/network/HttpProcessor;->a:I

    return v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/channel/commonutils/network/c;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public abstract b(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/channel/commonutils/network/c;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method
