.class Lcom/xiaomi/push/fu$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/fu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static final a:Lcom/xiaomi/push/fu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/push/fu;

    invoke-direct {v0}, Lcom/xiaomi/push/fu;-><init>()V

    sput-object v0, Lcom/xiaomi/push/fu$a;->a:Lcom/xiaomi/push/fu;

    return-void
.end method
