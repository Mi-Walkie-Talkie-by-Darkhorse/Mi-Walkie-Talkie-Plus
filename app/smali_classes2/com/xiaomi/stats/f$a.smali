.class Lcom/xiaomi/stats/f$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/stats/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static final a:Lcom/xiaomi/stats/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/stats/f;

    invoke-direct {v0}, Lcom/xiaomi/stats/f;-><init>()V

    sput-object v0, Lcom/xiaomi/stats/f$a;->a:Lcom/xiaomi/stats/f;

    return-void
.end method
