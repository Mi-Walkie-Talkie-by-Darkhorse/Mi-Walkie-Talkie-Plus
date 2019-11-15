.class public Lcom/xiaomi/mistatistic/sdk/data/c;
.super Lcom/xiaomi/mistatistic/sdk/data/f;
.source "CustomCountEvent.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/xiaomi/mistatistic/sdk/data/f;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "count"

    return-object v0
.end method
